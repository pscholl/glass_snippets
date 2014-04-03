package com.google.glass.net.upload;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.glass.auth.AuthUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.HttpRequestDispatcher;
import com.google.glass.net.PendingHttpRequest;
import com.google.glass.net.SimplifiedHttpResponse;
import com.google.glass.predicates.Assert;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import java.io.File;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.auth.InvalidCredentialsException;

public class UploadSession
{
  private static final String TAG = UploadSession.class.getSimpleName();
  private final AuthUtils authUtils;
  private PendingHttpRequest currentRequest;
  private final HttpRequestDispatcher dispatcher;
  private final File fileToUpload;
  private final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private final SessionManager manager;
  private final String mimeType;
  private final String obfuscatedIdentifier;
  private final long offset;
  private final URI uploadUri;
  private final UserEventHelper userEventHelper;

  UploadSession(AuthUtils paramAuthUtils, HttpRequestDispatcher paramHttpRequestDispatcher, SessionManager paramSessionManager, URI paramURI, File paramFile, long paramLong, String paramString1, UserEventHelper paramUserEventHelper, String paramString2)
  {
    this.authUtils = paramAuthUtils;
    this.dispatcher = paramHttpRequestDispatcher;
    this.manager = paramSessionManager;
    this.uploadUri = paramURI;
    this.fileToUpload = paramFile;
    this.mimeType = paramString1;
    this.offset = paramLong;
    this.userEventHelper = paramUserEventHelper;
    this.obfuscatedIdentifier = paramString2;
  }

  private void logEvent(UserEventAction paramUserEventAction)
  {
    this.userEventHelper.log(paramUserEventAction, UserEventHelper.createEventTuple("m", this.obfuscatedIdentifier, new Object[0]));
  }

  public void cancel()
  {
    FormattingLogger localFormattingLogger = this.logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.fileToUpload.getName();
    localFormattingLogger.d("[%s] Cancel requested -- breaking upload.", arrayOfObject);
    logEvent(UserEventAction.UPLOAD_SESSION_CANCELLED);
    this.currentRequest.cancel();
  }

  @VisibleForTesting
  long getOffset()
  {
    Assert.assertIsTest();
    return this.offset;
  }

  public void upload()
    throws IOException, InvalidCredentialsException
  {
    Assert.assertNotUiThread();
    Map localMap = ScottyHelper.makeBaseHeaders(this.authUtils, ScottyHelper.UploadCommand.UPLOAD, this.fileToUpload);
    HashMap localHashMap = Maps.newHashMap();
    localHashMap.put("X-Goog-Upload-Offset", String.valueOf(this.offset));
    localHashMap.putAll(localMap);
    FormattingLogger localFormattingLogger = this.logger;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.fileToUpload.getName();
    arrayOfObject[1] = this.uploadUri;
    localFormattingLogger.d("[%s] Uploading file via PUT for session %s", arrayOfObject);
    logEvent(UserEventAction.UPLOAD_SESSION_STARTED);
    this.currentRequest = this.dispatcher.putWithFile(this.uploadUri.toString(), localHashMap, this.fileToUpload, this.mimeType, this.offset, this.fileToUpload.length() - this.offset);
    SimplifiedHttpResponse localSimplifiedHttpResponse = this.currentRequest.execute();
    if (this.currentRequest.isCancelled())
      throw new IOException("Upload was cancelled.");
    if (localSimplifiedHttpResponse == null)
    {
      logEvent(UserEventAction.UPLOAD_SESSION_SERVER_FAILED);
      throw new ProtocolException("Connection failed or no response received from server!");
    }
    if ((localSimplifiedHttpResponse.statusCode == 403) || (localSimplifiedHttpResponse.statusCode == 401))
      throw new InvalidCredentialsException("Bad credentials or credentials expired.");
    if (localSimplifiedHttpResponse.statusCode != 200)
    {
      logEvent(UserEventAction.UPLOAD_SESSION_SERVER_FAILED);
      throw new ProtocolException("Scotty returned with an unexpected status code: " + localSimplifiedHttpResponse);
    }
    if (!localSimplifiedHttpResponse.headers.containsKey("X-Goog-Upload-Status"))
    {
      logEvent(UserEventAction.UPLOAD_SESSION_SERVER_FAILED);
      throw new ProtocolException("Scotty did not respond with an upload status: " + localSimplifiedHttpResponse);
    }
    if (ScottyHelper.getSessionStatus(localSimplifiedHttpResponse) != ScottyHelper.SessionStatus.FINAL)
    {
      logEvent(UserEventAction.UPLOAD_SESSION_SERVER_FAILED);
      throw new ProtocolException("Scotty did not finalize our upload session as requested: " + localSimplifiedHttpResponse);
    }
    if ((localSimplifiedHttpResponse.body == null) || (localSimplifiedHttpResponse.body.length == 0))
    {
      logEvent(UserEventAction.UPLOAD_SESSION_SERVER_FAILED);
      throw new ProtocolException("Client proxy did not respond with an upload id: " + localSimplifiedHttpResponse);
    }
    logEvent(UserEventAction.UPLOAD_SESSION_FINISHED);
    this.manager.onUploadSuccess(localSimplifiedHttpResponse);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.upload.UploadSession
 * JD-Core Version:    0.6.2
 */