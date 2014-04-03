package com.google.glass.net.upload;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.glass.auth.AuthUtils;
import com.google.glass.net.SimplifiedHttpResponse;
import java.io.File;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.auth.InvalidCredentialsException;

class ScottyHelper
{
  private static final String HEADER_PREFIX = "X-Goog-Upload-";

  static SessionStatus getSessionStatus(SimplifiedHttpResponse paramSimplifiedHttpResponse)
    throws ProtocolException
  {
    String str = (String)paramSimplifiedHttpResponse.headers.get("X-Goog-Upload-Status");
    if (str == null)
      throw new ProtocolException("No status header from Scotty: " + paramSimplifiedHttpResponse);
    try
    {
      SessionStatus localSessionStatus = (SessionStatus)SessionStatus.valueOf(SessionStatus.class, str.toUpperCase());
      return localSessionStatus;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    throw new ProtocolException("Upload server returned a status we didn't recognize: " + str);
  }

  static Map<String, String> makeBaseHeaders(AuthUtils paramAuthUtils, UploadCommand paramUploadCommand, File paramFile)
    throws IOException, InvalidCredentialsException
  {
    HashMap localHashMap = Maps.newHashMap();
    localHashMap.put("X-Goog-Upload-Command", paramUploadCommand.toCommandString());
    localHashMap.put("X-Goog-Last-Modified", String.valueOf(paramFile.lastModified()));
    localHashMap.put("X-Goog-Upload-File-Name", paramFile.getName());
    Map localMap = paramAuthUtils.createAuthHeaders();
    if (localMap == null)
      throw new InvalidCredentialsException("Unable to create auth headers.");
    localHashMap.putAll(localMap);
    return localHashMap;
  }

  static final class ClientHeaders
  {
    static final String COMMAND = "X-Goog-Upload-Command";
    static final String CONTENT_LENGTH = "X-Goog-Upload-Content-Length";
    static final String CONTENT_TYPE = "X-Goog-Upload-Content-Type";
    static final String FILE_NAME = "X-Goog-Upload-File-Name";
    static final String OFFSET = "X-Goog-Upload-Offset";
    static final String PROTOCOL = "X-Goog-Upload-Protocol";
  }

  static final class ServerHeaders
  {
    static final String SIZE_RECEIVED = "X-Goog-Upload-Size-Received";
    static final String STATUS = "X-Goog-Upload-Status";
    static final String URL = "X-Goog-Upload-URL";
  }

  static enum SessionStatus
  {
    static
    {
      CANCELLED = new SessionStatus("CANCELLED", 2);
      SessionStatus[] arrayOfSessionStatus = new SessionStatus[3];
      arrayOfSessionStatus[0] = ACTIVE;
      arrayOfSessionStatus[1] = FINAL;
      arrayOfSessionStatus[2] = CANCELLED;
    }
  }

  static enum UploadCommand
  {
    private final String commandString;

    static
    {
      QUERY = new UploadCommand("QUERY", 2, "query");
      UploadCommand[] arrayOfUploadCommand = new UploadCommand[3];
      arrayOfUploadCommand[0] = START;
      arrayOfUploadCommand[1] = UPLOAD;
      arrayOfUploadCommand[2] = QUERY;
    }

    private UploadCommand(String paramString)
    {
      this.commandString = paramString;
    }

    public String toCommandString()
    {
      return this.commandString;
    }
  }

  public static enum UploadStatus
  {
    static
    {
      CANCELLED = new UploadStatus("CANCELLED", 2);
      UploadStatus[] arrayOfUploadStatus = new UploadStatus[3];
      arrayOfUploadStatus[0] = ACTIVE;
      arrayOfUploadStatus[1] = FINAL;
      arrayOfUploadStatus[2] = CANCELLED;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.upload.ScottyHelper
 * JD-Core Version:    0.6.2
 */