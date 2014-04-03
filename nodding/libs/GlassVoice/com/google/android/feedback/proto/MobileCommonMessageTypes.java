package com.google.android.feedback.proto;

import com.x.google.common.io.protocol.ProtoBufType;

public class MobileCommonMessageTypes
{
  public static final ProtoBufType ANR_DATA;
  public static final ProtoBufType BATTERY_DATA;
  public static final ProtoBufType BUILD_DATA;
  public static final ProtoBufType COMMON_DATA;
  public static final ProtoBufType CRASH_DATA;
  public static final ProtoBufType DIMENSIONS = new ProtoBufType();
  public static final ProtoBufType IMAGE;
  public static final ProtoBufType MOBILE_BUG_REPORT;
  public static final ProtoBufType MOBILE_DATA;
  public static final ProtoBufType PACKAGE_DATA;
  public static final ProtoBufType PRODUCT_SPECIFIC_BINARY_DATA;
  public static final ProtoBufType PRODUCT_SPECIFIC_DATA;
  public static final ProtoBufType RECTANGLE = new ProtoBufType();
  public static final ProtoBufType RUNNING_SERVICE_DATA;
  public static final ProtoBufType SYSTEM_DATA;
  public static final ProtoBufType TELEPHONY_DATA;
  public static final ProtoBufType USER_INITIATED_FEEDBACK_DATA;

  static
  {
    PRODUCT_SPECIFIC_DATA = new ProtoBufType();
    COMMON_DATA = new ProtoBufType();
    PRODUCT_SPECIFIC_BINARY_DATA = new ProtoBufType();
    IMAGE = new ProtoBufType();
    MOBILE_BUG_REPORT = new ProtoBufType();
    MOBILE_DATA = new ProtoBufType();
    SYSTEM_DATA = new ProtoBufType();
    PACKAGE_DATA = new ProtoBufType();
    BUILD_DATA = new ProtoBufType();
    CRASH_DATA = new ProtoBufType();
    ANR_DATA = new ProtoBufType();
    BATTERY_DATA = new ProtoBufType();
    RUNNING_SERVICE_DATA = new ProtoBufType();
    USER_INITIATED_FEEDBACK_DATA = new ProtoBufType();
    TELEPHONY_DATA = new ProtoBufType();
    DIMENSIONS.addElement(274, 1, null).addElement(274, 2, null);
    RECTANGLE.addElement(274, 1, null).addElement(274, 2, null).addElement(274, 3, null).addElement(274, 4, null);
    PRODUCT_SPECIFIC_DATA.addElement(284, 1, null).addElement(540, 2, null).addElement(533, 3, new Long(1L));
    COMMON_DATA.addElement(534, 1, null).addElement(540, 2, null).addElement(540, 4, null).addElement(533, 17, new Long(-1L)).addElement(540, 5, "en").addElement(540, 6, "en_US").addElement(540, 3, null).addElement(540, 7, null).addElement(1052, 8, null).addElement(1051, 9, PRODUCT_SPECIFIC_BINARY_DATA).addElement(540, 10, null).addElement(1051, 11, PRODUCT_SPECIFIC_DATA).addElement(534, 12, null).addElement(540, 13, null).addElement(540, 14, null).addElement(540, 15, null).addElement(540, 16, null).addElement(1051, 19, PRODUCT_SPECIFIC_DATA).addElement(540, 20, null).addElement(533, 21, new Long(1L));
    PRODUCT_SPECIFIC_BINARY_DATA.addElement(284, 1, null).addElement(540, 2, null).addElement(537, 3, null);
    IMAGE.addElement(284, 1, null).addElement(284, 2, null).addElement(539, 3, DIMENSIONS);
    MOBILE_BUG_REPORT.addElement(283, 1, COMMON_DATA).addElement(283, 2, MOBILE_DATA).addElement(533, 3, null).addElement(533, 4, new Long(0L));
    MOBILE_DATA.addElement(283, 1, SYSTEM_DATA).addElement(283, 2, PACKAGE_DATA).addElement(283, 3, BUILD_DATA).addElement(539, 4, CRASH_DATA).addElement(539, 5, ANR_DATA).addElement(539, 6, BATTERY_DATA).addElement(539, 7, RUNNING_SERVICE_DATA).addElement(539, 9, USER_INITIATED_FEEDBACK_DATA).addElement(533, 10, null);
    SYSTEM_DATA.addElement(278, 1, null).addElement(540, 2, null).addElement(540, 3, null).addElement(1052, 4, null).addElement(1052, 5, null).addElement(539, 6, TELEPHONY_DATA);
    PACKAGE_DATA.addElement(284, 1, null).addElement(284, 2, null).addElement(284, 3, null).addElement(533, 4, null).addElement(540, 5, null).addElement(536, 6, null);
    BUILD_DATA.addElement(284, 1, null).addElement(284, 2, null).addElement(284, 3, null).addElement(284, 4, null).addElement(284, 5, null).addElement(533, 6, null).addElement(540, 7, null).addElement(540, 8, null).addElement(540, 9, null).addElement(540, 10, null).addElement(540, 11, null).addElement(540, 12, null);
    CRASH_DATA.addElement(284, 1, null).addElement(540, 2, null).addElement(284, 3, null).addElement(277, 4, null).addElement(284, 5, null).addElement(284, 6, null).addElement(284, 7, null).addElement(533, 8, null);
    ANR_DATA.addElement(540, 1, null).addElement(284, 2, null).addElement(284, 3, null).addElement(540, 4, null);
    BATTERY_DATA.addElement(277, 1, null).addElement(275, 2, null).addElement(284, 3, null).addElement(284, 4, null).addElement(530, 5, null).addElement(533, 6, null);
    RUNNING_SERVICE_DATA.addElement(275, 1, null).addElement(284, 2, null);
    USER_INITIATED_FEEDBACK_DATA.addElement(540, 1, null).addElement(1051, 2, PRODUCT_SPECIFIC_BINARY_DATA).addElement(540, 3, null).addElement(539, 4, IMAGE).addElement(533, 5, null).addElement(540, 6, null).addElement(540, 7, null);
    TELEPHONY_DATA.addElement(277, 1, null).addElement(540, 2, null).addElement(533, 3, null);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.feedback.proto.MobileCommonMessageTypes
 * JD-Core Version:    0.6.2
 */