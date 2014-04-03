package com.x.google.masf.protocol;

public abstract interface ProtocolConstants
{
  public static final int BLOCK_TYPE_REQUEST_HEADER = 1;
  public static final int BLOCK_TYPE_REQUEST_MULTIPART = 257;
  public static final int BLOCK_TYPE_REQUEST_PLAIN = 256;
  public static final int BLOCK_TYPE_RESPONSE_MULTIPART = 33025;
  public static final int BLOCK_TYPE_RESPONSE_NON_MULTIPART = 33024;
  public static final String ENCODING_GZIP = "g";
  public static final String ENCODING_NONE = "";
  public static final String ENCODING_NOP = "n";
  public static final short PROTOCOL_VERSION_0 = 0;
  public static final short PROTOCOL_VERSION_1 = 1;
  public static final short PROTOCOL_VERSION_2 = 2;
  public static final short PROTOCOL_VERSION_3 = 3;
  public static final String SERVICE_URL_COOKIE = "g:c";
  public static final String SERVICE_URL_ECHO = "g:echo";
  public static final String SERVICE_URL_LOCATION = "g:loc";
  public static final String SERVICE_URL_LOG_EVENT = "g:log:ev";
  public static final String SERVICE_URL_LOG_EXCEPTION = "g:log:ex";
  public static final String SERVICE_URL_LOG_UNSTRUCTURED = "g:log:u";
  public static final String SERVICE_URL_MD5 = "g:md5";
  public static final String SERVICE_URL_PING = "g:ping";
  public static final String SERVICE_URL_RESOURCE = "g:r";
  public static final String SERVICE_URL_RESUME = "g:rsm";
  public static final String SERVICE_URL_RLZ = "g:rlz";
  public static final String SERVICE_URL_TIME = "g:123";
  public static final short SERVICE_VERSION_0 = 0;
  public static final short SERVICE_VERSION_1 = 1;
  public static final short SERVICE_VERSION_2 = 2;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.ProtocolConstants
 * JD-Core Version:    0.6.2
 */