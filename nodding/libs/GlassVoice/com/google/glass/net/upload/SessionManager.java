package com.google.glass.net.upload;

import android.content.Context;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.glass.auth.AuthUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.HttpRequestDispatcher;
import com.google.glass.net.SimplifiedHttpResponse;
import com.google.glass.predicates.Assert;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.HashUtil;
import java.io.File;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.auth.InvalidCredentialsException;

public class SessionManager
{
  private static final String TAG = SessionManager.class.getSimpleName();
  private final AuthUtils authUtils;
  private final URI baseUploadUri;
  private final Context context;
  private final HttpRequestDispatcher dispatcher;
  private final String fileMimeType;
  private final File fileToUpload;
  private long lastOffset;
  private final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private final String obfuscatedIdentifier;
  private final SessionTracker sessionTracker;
  private URI sessionUri;
  private SimplifiedHttpResponse uploadResult;
  private final UserEventHelper userEventHelper;

  public SessionManager(HttpRequestDispatcher paramHttpRequestDispatcher, AuthUtils paramAuthUtils, SessionTracker paramSessionTracker, URI paramURI, File paramFile, String paramString, Context paramContext, UserEventHelper paramUserEventHelper)
  {
    this.dispatcher = paramHttpRequestDispatcher;
    this.authUtils = paramAuthUtils;
    this.sessionTracker = paramSessionTracker;
    this.baseUploadUri = paramURI;
    this.fileToUpload = paramFile;
    this.fileMimeType = paramString;
    this.context = paramContext;
    this.userEventHelper = paramUserEventHelper;
    this.obfuscatedIdentifier = HashUtil.hashPiiField(paramContext, String.valueOf(paramFile.lastModified()));
  }

  private void logEvent(UserEventAction paramUserEventAction)
  {
    this.userEventHelper.log(paramUserEventAction, UserEventHelper.createEventTuple("m", this.obfuscatedIdentifier, new Object[0]));
  }

  @VisibleForTesting
  void establishNewSession()
    throws IOException, InvalidCredentialsException
  {
    this.sessionTracker.clearSessionUri(this.fileToUpload);
    this.sessionUri = null;
    this.lastOffset = 0L;
    FormattingLogger localFormattingLogger1 = this.logger;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.fileToUpload.getName();
    localFormattingLogger1.d("[%s] Establishing new session.", arrayOfObject1);
    SimplifiedHttpResponse localSimplifiedHttpResponse = makeRequest(ScottyHelper.UploadCommand.START);
    if (ScottyHelper.getSessionStatus(localSimplifiedHttpResponse) != ScottyHelper.SessionStatus.ACTIVE)
      throw new ProtocolException("Scotty didn't return a state of ACTIVE: " + localSimplifiedHttpResponse);
    if (!localSimplifiedHttpResponse.headers.containsKey("X-Goog-Upload-URL"))
      throw new ProtocolException("Scotty didn't tell us where to upload the file: " + localSimplifiedHttpResponse);
    this.sessionUri = URI.create((String)localSimplifiedHttpResponse.headers.get("X-Goog-Upload-URL"));
    FormattingLogger localFormattingLogger2 = this.logger;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = this.fileToUpload.getName();
    arrayOfObject2[1] = this.sessionUri;
    localFormattingLogger2.d("[%s] Session established at URL %s", arrayOfObject2);
    logEvent(UserEventAction.SESSION_MANAGER_SESSION_ESTABLISHED);
    this.sessionTracker.setSessionUri(this.fileToUpload, this.sessionUri);
  }

  public SimplifiedHttpResponse getUploadResult()
  {
    return this.uploadResult;
  }

  public UploadSession getUploadSession()
    throws IOException, InvalidCredentialsException
  {
    if (this.sessionUri == null)
      establishNewSession();
    return new UploadSession(this.authUtils, this.dispatcher, this, this.sessionUri, this.fileToUpload, this.lastOffset, this.fileMimeType, this.userEventHelper, this.obfuscatedIdentifier);
  }

  public void init()
    throws IOException, InvalidCredentialsException
  {
    this.lastOffset = 0L;
    this.uploadResult = null;
    this.sessionUri = this.sessionTracker.getSessionUri(this.fileToUpload);
    if (this.sessionUri == null)
    {
      FormattingLogger localFormattingLogger5 = this.logger;
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = this.fileToUpload.getName();
      localFormattingLogger5.d("[%s] Session not previously established -- will establish a new session.", arrayOfObject5);
      logEvent(UserEventAction.SESSION_MANAGER_SESSION_NEW);
      return;
    }
    SimplifiedHttpResponse localSimplifiedHttpResponse = makeRequest(ScottyHelper.UploadCommand.QUERY);
    if (localSimplifiedHttpResponse.statusCode == 404)
    {
      FormattingLogger localFormattingLogger4 = this.logger;
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = this.fileToUpload.getName();
      arrayOfObject4[1] = this.sessionUri;
      localFormattingLogger4.d("[%s] Scotty has no knowledge of session at URI %s or session has been prematurely finalized -- will establish a new session.", arrayOfObject4);
      logEvent(UserEventAction.SESSION_MANAGER_SESSION_INVALID);
      this.sessionUri = null;
      return;
    }
    ScottyHelper.SessionStatus localSessionStatus = ScottyHelper.getSessionStatus(localSimplifiedHttpResponse);
    if ((localSessionStatus == ScottyHelper.SessionStatus.FINAL) || (localSessionStatus == ScottyHelper.SessionStatus.CANCELLED))
    {
      if ((localSimplifiedHttpResponse.body != null) && (localSimplifiedHttpResponse.body.length > 0))
      {
        FormattingLogger localFormattingLogger2 = this.logger;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = this.fileToUpload.getName();
        arrayOfObject2[1] = localSessionStatus;
        localFormattingLogger2.d("[%s] Previous session is in status %s and body is populated.", arrayOfObject2);
        logEvent(UserEventAction.SESSION_MANAGER_SESSION_FINISHED);
        this.uploadResult = localSimplifiedHttpResponse;
        return;
      }
      FormattingLogger localFormattingLogger1 = this.logger;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = this.fileToUpload.getName();
      arrayOfObject1[1] = localSessionStatus;
      localFormattingLogger1.d("[%s] Previous session is in status %s and no body was received -- will establish  a new session.", arrayOfObject1);
      logEvent(UserEventAction.SESSION_MANAGER_SESSION_NEW);
      this.sessionUri = null;
      return;
    }
    if (!localSimplifiedHttpResponse.headers.containsKey("X-Goog-Upload-Size-Received"))
    {
      logEvent(UserEventAction.SESSION_MANAGER_SESSION_BROKEN);
      throw new ProtocolException("Session is ACTIVE, but no bytes received header found: " + localSimplifiedHttpResponse);
    }
    FormattingLogger localFormattingLogger3 = this.logger;
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = this.fileToUpload.getName();
    localFormattingLogger3.d("[%s] Previous session verified -- will re-use existing session.", arrayOfObject3);
    logEvent(UserEventAction.SESSION_MANAGER_SESSION_VALID);
    this.lastOffset = Long.valueOf((String)localSimplifiedHttpResponse.headers.get("X-Goog-Upload-Size-Received")).longValue();
  }

  public boolean isUploadSuccessful()
  {
    return this.uploadResult != null;
  }

  @VisibleForTesting
  SimplifiedHttpResponse makeRequest(ScottyHelper.UploadCommand paramUploadCommand)
    throws IOException, InvalidCredentialsException
  {
    URI localURI = this.baseUploadUri;
    HashMap localHashMap = Maps.newHashMap();
    if (paramUploadCommand == ScottyHelper.UploadCommand.QUERY)
    {
      Assert.assertNotNull("Session URI is null for a QUERY command -- did you call SessionManager#init?", this.sessionUri);
      localURI = this.sessionUri;
    }
    SimplifiedHttpResponse localSimplifiedHttpResponse;
    while (true)
    {
      localHashMap.putAll(ScottyHelper.makeBaseHeaders(this.authUtils, paramUploadCommand, this.fileToUpload));
      localSimplifiedHttpResponse = this.dispatcher.postWithHeaders(localURI.toString(), localHashMap, null);
      if (localSimplifiedHttpResponse != null)
        break;
      throw new IOException("Connection failed or no response from server.");
      if (paramUploadCommand == ScottyHelper.UploadCommand.START)
      {
        localHashMap.put("X-Goog-Upload-Protocol", "resumable");
        localHashMap.put("X-Goog-Upload-Content-Type", this.fileMimeType);
        localHashMap.put("X-Goog-Upload-Content-Length", String.valueOf(this.fileToUpload.length()));
        localHashMap.put("X-Goog-Upload-File-Name", this.fileToUpload.getName());
      }
    }
    if ((paramUploadCommand == ScottyHelper.UploadCommand.QUERY) && (localSimplifiedHttpResponse.headers.get("X-Goog-Upload-Status") != null) && (ScottyHelper.getSessionStatus(localSimplifiedHttpResponse) == ScottyHelper.SessionStatus.FINAL))
      return localSimplifiedHttpResponse;
    if ((localSimplifiedHttpResponse.statusCode == 403) || (localSimplifiedHttpResponse.statusCode == 401))
    {
      this.authUtils.invalidateAuthToken();
      localHashMap.putAll(ScottyHelper.makeBaseHeaders(this.authUtils, paramUploadCommand, this.fileToUpload));
      localSimplifiedHttpResponse = this.dispatcher.postWithHeaders(localURI.toString(), localHashMap, null);
      if (localSimplifiedHttpResponse == null)
        throw new IOException("Connection failed or no response from server.");
      if ((localSimplifiedHttpResponse.statusCode == 403) || (localSimplifiedHttpResponse.statusCode == 401))
        throw new InvalidCredentialsException("Credentials are invalid even after refresh: " + localSimplifiedHttpResponse);
    }
    return localSimplifiedHttpResponse;
  }

  void onUploadSuccess(SimplifiedHttpResponse paramSimplifiedHttpResponse)
  {
    FormattingLogger localFormattingLogger = this.logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.fileToUpload.getName();
    localFormattingLogger.d("[%s] UploadSession reported upload completed.", arrayOfObject);
    this.uploadResult = paramSimplifiedHttpResponse;
    this.sessionTracker.clearSessionUri(this.fileToUpload);
  }

  @VisibleForTesting
  void setSessionUri(URI paramURI)
  {
    Assert.assertIsTest();
    this.sessionUri = paramURI;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.upload.SessionManager
 * JD-Core Version:    0.6.2
 */