package com.x.google.masf.services;

import com.x.google.common.io.protocol.ProtoBufType;

public class TrackerServiceMessageTypes
{
  public static final ProtoBufType ANALYTICS_IMPRESSION;
  public static final ProtoBufType EVENT;
  public static final ProtoBufType EVENT_LOGGING_REQUEST;
  public static final ProtoBufType MDSSHARED_ENUMS = new ProtoBufType();
  public static final ProtoBufType MOBILE_PHONE;
  public static final ProtoBufType SESSION_ID;
  public static final ProtoBufType TRACKING_SHARED_ENUMS = new ProtoBufType();

  static
  {
    MOBILE_PHONE = new ProtoBufType();
    SESSION_ID = new ProtoBufType();
    EVENT = new ProtoBufType();
    ANALYTICS_IMPRESSION = new ProtoBufType();
    EVENT_LOGGING_REQUEST = new ProtoBufType();
    MOBILE_PHONE.addElement(540, 1, null).addElement(540, 2, null);
    SESSION_ID.addElement(275, 1, null);
    EVENT.addElement(277, 1, null).addElement(531, 2, null).addElement(540, 3, null).addElement(540, 4, null).addElement(540, 5, null).addElement(540, 6, null).addElement(540, 7, null).addElement(533, 8, null).addElement(1050, 9, new ProtoBufType("HTTP_HEADER").addElement(284, 10, null).addElement(284, 11, null)).addElement(540, 12, null).addElement(540, 13, null).addElement(539, 14, MOBILE_PHONE).addElement(536, 15, null).addElement(531, 16, null).addElement(533, 17, null).addElement(539, 24, ANALYTICS_IMPRESSION);
    ANALYTICS_IMPRESSION.addElement(284, 1, null).addElement(284, 2, null).addElement(540, 3, null).addElement(533, 4, null);
    EVENT_LOGGING_REQUEST.addElement(275, 1, null).addElement(283, 2, EVENT);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.TrackerServiceMessageTypes
 * JD-Core Version:    0.6.2
 */