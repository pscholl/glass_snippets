package com.x.google.common.io;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public abstract interface GoogleHttpConnection
{
  public static final String HEADER_KEY_ACCEPT = "Accept";
  public static final String HEADER_KEY_ACCEPT_CHARSET = "Accept-Charset";
  public static final String HEADER_KEY_CONTENT_LENGTH = "Content-Length";
  public static final String HEADER_KEY_CONTENT_TYPE = "Content-Type";
  public static final String HEADER_KEY_COOKIE = "Cookie";
  public static final String HEADER_KEY_LOCATION = "Location";
  public static final String HEADER_KEY_SET_COOKIE = "Set-Cookie";
  public static final String HEADER_KEY_USER_AGENT = "User-Agent";
  public static final int HTTP_BAD_GATEWAY = 502;
  public static final int HTTP_BAD_REQUEST = 400;
  public static final int HTTP_CONFLICT = 409;
  public static final int HTTP_CREATED = 201;
  public static final int HTTP_FORBIDDEN = 403;
  public static final int HTTP_INTERNAL_ERROR = 500;
  public static final int HTTP_LENGTH_REQUIRED = 411;
  public static final int HTTP_MOVED_PERM = 301;
  public static final int HTTP_MOVED_TEMP = 302;
  public static final int HTTP_MULTI_STATUS = 207;
  public static final int HTTP_NOT_FOUND = 404;
  public static final int HTTP_NOT_IMPLEMENTED = 501;
  public static final int HTTP_NOT_MODIFIED = 304;
  public static final int HTTP_NO_CONTENT = 204;
  public static final int HTTP_OK = 200;
  public static final int HTTP_REQUEST_TOO_LARGE = 413;
  public static final int HTTP_SEE_OTHER = 303;
  public static final int HTTP_SERVICE_UNAVAILABLE = 503;
  public static final int HTTP_TEMP_REDIRECT = 307;
  public static final int HTTP_UNAUTHORIZED = 401;
  public static final int HTTP_UNSUPPORTED_MEDIA_TYPE = 415;
  public static final String METHOD_GET = "GET";
  public static final String METHOD_HEAD = "HEAD";
  public static final String METHOD_POST = "POST";

  public abstract void close()
    throws IOException;

  public abstract String getContentType()
    throws IOException;

  public abstract String getHeaderField(int paramInt)
    throws IOException;

  public abstract String getHeaderField(String paramString)
    throws IOException;

  public abstract String getHeaderFieldKey(int paramInt)
    throws IOException;

  public abstract long getLength()
    throws IOException;

  public abstract String getProtocolName();

  public abstract int getResponseCode()
    throws IOException;

  public abstract String getResponseMessage()
    throws IOException;

  public abstract boolean isEndToEndSecure();

  public abstract boolean isHttps();

  public abstract void notifyTimeout();

  public abstract DataInputStream openDataInputStream()
    throws IOException;

  public abstract DataOutputStream openDataOutputStream()
    throws IOException;

  public abstract void setConnectionProperty(String paramString1, String paramString2)
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.GoogleHttpConnection
 * JD-Core Version:    0.6.2
 */