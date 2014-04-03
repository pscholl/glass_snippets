package com.x.google.masf.services;

import com.x.google.common.io.protocol.ProtoBufType;

public class LogserviceMessageTypes
{
  public static final ProtoBufType LOG_CLIENT_INFO = new ProtoBufType();
  public static final ProtoBufType LOG_DATA_PROTO;
  public static final ProtoBufType LOG_EVENT_PROTO;
  public static final ProtoBufType LOG_EXCEPTION_PROTO = new ProtoBufType();
  public static final ProtoBufType MOBILE_VIDEO_EVENT_INFO;
  public static final ProtoBufType MOBILE_VIDEO_HEAT_MAP;

  static
  {
    LOG_DATA_PROTO = new ProtoBufType();
    MOBILE_VIDEO_HEAT_MAP = new ProtoBufType();
    MOBILE_VIDEO_EVENT_INFO = new ProtoBufType();
    LOG_EVENT_PROTO = new ProtoBufType();
    LOG_CLIENT_INFO.addElement(537, 2, null).addElement(537, 3, null).addElement(537, 4, null).addElement(537, 5, null).addElement(537, 6, null).addElement(531, 7, null);
    LOG_EXCEPTION_PROTO.addElement(539, 1, LOG_CLIENT_INFO).addElement(531, 2, null).addElement(537, 20, null).addElement(537, 21, null).addElement(537, 22, null).addElement(537, 23, null);
    LOG_DATA_PROTO.addElement(539, 1, LOG_CLIENT_INFO).addElement(1050, 2, new ProtoBufType("ENTRY").addElement(531, 3, null).addElement(537, 4, null).addElement(537, 5, null));
    MOBILE_VIDEO_HEAT_MAP.addElement(533, 1, null).addElement(533, 2, null);
    MOBILE_VIDEO_EVENT_INFO.addElement(533, 1, null).addElement(533, 2, null).addElement(531, 3, null).addElement(531, 4, null).addElement(531, 5, null).addElement(533, 6, null).addElement(533, 7, null).addElement(533, 8, null).addElement(533, 9, null).addElement(533, 10, null).addElement(533, 11, null).addElement(533, 12, null).addElement(539, 13, MOBILE_VIDEO_HEAT_MAP);
    LOG_EVENT_PROTO.addElement(539, 18, MOBILE_VIDEO_EVENT_INFO);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.LogserviceMessageTypes
 * JD-Core Version:    0.6.2
 */