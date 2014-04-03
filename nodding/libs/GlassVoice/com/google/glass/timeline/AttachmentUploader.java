package com.google.glass.timeline;

import android.content.Context;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Charsets;
import com.google.glass.app.GlassApplication;
import com.google.glass.auth.AuthUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.HttpRequestDispatcher;
import com.google.glass.net.HttpRequestDispatcherManager;
import com.google.glass.net.ProtoParser;
import com.google.glass.net.ProtoParser.Provider;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponse;
import com.google.glass.net.ServerConstants;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.net.SimplifiedHttpResponse;
import com.google.glass.net.upload.SessionManager;
import com.google.glass.net.upload.SessionTracker;
import com.google.glass.net.upload.UploadSession;
import com.google.glass.predicates.Assert;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.SettingsSecure;
import com.google.googlex.glass.common.proto.SyncNano.AttachmentInsertRequest;
import com.google.googlex.glass.common.proto.SyncNano.AttachmentInsertResponse;
import java.io.File;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.URI;
import org.apache.http.auth.InvalidCredentialsException;

public class AttachmentUploader
{
  private static final ProtoParser<SyncNano.AttachmentInsertResponse> PARSER = new ProtoParser(new ProtoParser.Provider()
  {
    public SyncNano.AttachmentInsertResponse provide()
    {
      return new SyncNano.AttachmentInsertResponse();
    }
  });
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final AuthUtils authUtils;
  private final Context context;
  private UploadSession uploadSession;

  public AttachmentUploader(Context paramContext)
  {
    this.context = paramContext;
    this.authUtils = new AuthUtils(paramContext);
  }

  @VisibleForTesting
  public AttachmentUploader(Context paramContext, AuthUtils paramAuthUtils)
  {
    Assert.assertIsTest();
    this.context = paramContext;
    this.authUtils = paramAuthUtils;
  }

  private UserEventHelper getUserEventHelper()
  {
    return GlassApplication.from(this.context).getUserEventHelper();
  }

  public void abortResumableInsert()
  {
    if (this.uploadSession != null)
      this.uploadSession.cancel();
  }

  @VisibleForTesting
  ProtoRequestDispatcher getRequestDispatcher()
  {
    return GlassApplication.from(this.context).getRequestDispatcher();
  }

  public String insertAttachmentToServer(String paramString1, byte[] paramArrayOfByte, String paramString2, long paramLong, String paramString3)
    throws UploadException, InterruptedException
  {
    FormattingLogger localFormattingLogger1 = logger;
    Object[] arrayOfObject1 = new Object[4];
    int i;
    ProtoResponse localProtoResponse;
    if (paramArrayOfByte != null)
    {
      i = paramArrayOfByte.length;
      arrayOfObject1[0] = Integer.valueOf(i);
      arrayOfObject1[1] = paramString1;
      arrayOfObject1[2] = paramString2;
      arrayOfObject1[3] = paramString3;
      localFormattingLogger1.i("Uploading attachment of %s bytes to server, mimeType: %s, filename: %s, source: %s", arrayOfObject1);
      SyncNano.AttachmentInsertRequest localAttachmentInsertRequest = new SyncNano.AttachmentInsertRequest();
      localAttachmentInsertRequest.mimeType = paramString1;
      localAttachmentInsertRequest.content = paramArrayOfByte;
      localAttachmentInsertRequest.name = paramString2;
      localAttachmentInsertRequest.creationTime = Long.valueOf(paramLong);
      localAttachmentInsertRequest.source = paramString3;
      if (!Assert.isTest())
        localAttachmentInsertRequest.deviceId = new SettingsSecure(this.context.getContentResolver()).getString("android_id");
      localProtoResponse = getRequestDispatcher().blockingDispatch(ServerConstants.Action.ATTACHMENT_INSERT, localAttachmentInsertRequest, PARSER);
      if ((localProtoResponse != null) && (localProtoResponse.isSuccess()))
        break label218;
      if (localProtoResponse != null)
        break label208;
    }
    label208: for (int j = 4; ; j = localProtoResponse.getErrorCode())
    {
      throw new UploadException(j, paramString1, "File " + paramString2 + " failed to upload.");
      i = 0;
      break;
    }
    label218: SyncNano.AttachmentInsertResponse localAttachmentInsertResponse = (SyncNano.AttachmentInsertResponse)localProtoResponse.getResponseProto();
    if (localAttachmentInsertResponse.responseCode == 0)
    {
      String str = localAttachmentInsertResponse.attachmentId;
      FormattingLogger localFormattingLogger2 = logger;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = localAttachmentInsertResponse.attachmentId;
      arrayOfObject2[1] = str;
      localFormattingLogger2.w("Successfully inserted attachment to server: %s, %s", arrayOfObject2);
      if (str != null)
        return str;
    }
    throw new UploadException(4, paramString1, "File " + paramString2 + " failed to upload with server response code " + localAttachmentInsertResponse.responseCode);
  }

  public String insertAttachmentViaSessionManager(String paramString, File paramFile)
    throws IOException, InvalidCredentialsException
  {
    HttpRequestDispatcher localHttpRequestDispatcher = HttpRequestDispatcherManager.getSharedDispatcher(this.context);
    SessionTracker localSessionTracker = new SessionTracker(this.context);
    SessionManager localSessionManager = new SessionManager(localHttpRequestDispatcher, this.authUtils, localSessionTracker, URI.create(ServerConstants.getResumableUploadUrl()), paramFile, paramString, this.context, GlassApplication.from(this.context).getUserEventHelper());
    localSessionManager.init();
    if (!localSessionManager.isUploadSuccessful())
    {
      this.uploadSession = localSessionManager.getUploadSession();
      this.uploadSession.upload();
    }
    SimplifiedHttpResponse localSimplifiedHttpResponse = localSessionManager.getUploadResult();
    if (localSimplifiedHttpResponse == null)
      throw new ProtocolException("Somehow we completed the upload successfully and no response was returned! BUG!");
    if (localSimplifiedHttpResponse.body == null)
      throw new ProtocolException("Somehow we completed successfully, but the body is null! BUG!");
    return new String(localSimplifiedHttpResponse.body, Charsets.UTF_8);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.AttachmentUploader
 * JD-Core Version:    0.6.2
 */