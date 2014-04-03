package com.x.google.masf.services;

import com.x.google.common.io.protocol.ProtoBufType;

public class DummyStubbyServerMessageTypes
{
  public static final ProtoBufType DUMMY_STUBBY_SERVER_REPLY;
  public static final ProtoBufType DUMMY_STUBBY_SERVER_REQUEST;
  public static final ProtoBufType MASFCLIENT_INFO_PROTO = new ProtoBufType();

  static
  {
    DUMMY_STUBBY_SERVER_REQUEST = new ProtoBufType();
    DUMMY_STUBBY_SERVER_REPLY = new ProtoBufType();
    MASFCLIENT_INFO_PROTO.addElement(281, 1, null).addElement(281, 2, null).addElement(281, 3, null).addElement(281, 4, null).addElement(281, 5, null).addElement(281, 6, null).addElement(531, 7, null);
    DUMMY_STUBBY_SERVER_REQUEST.addElement(533, 1, null).addElement(537, 2, null).addElement(539, 257, MASFCLIENT_INFO_PROTO);
    DUMMY_STUBBY_SERVER_REPLY.addElement(533, 1, null);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.DummyStubbyServerMessageTypes
 * JD-Core Version:    0.6.2
 */