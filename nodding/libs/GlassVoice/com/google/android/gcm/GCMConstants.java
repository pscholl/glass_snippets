package com.google.android.gcm;

public final class GCMConstants
{
  public static final String DEFAULT_INTENT_SERVICE_CLASS_NAME = ".GCMIntentService";
  public static final String ERROR_ACCOUNT_MISSING = "ACCOUNT_MISSING";
  public static final String ERROR_AUTHENTICATION_FAILED = "AUTHENTICATION_FAILED";
  public static final String ERROR_INVALID_PARAMETERS = "INVALID_PARAMETERS";
  public static final String ERROR_INVALID_SENDER = "INVALID_SENDER";
  public static final String ERROR_PHONE_REGISTRATION_ERROR = "PHONE_REGISTRATION_ERROR";
  public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
  public static final String EXTRA_APPLICATION_PENDING_INTENT = "app";
  public static final String EXTRA_ERROR = "error";
  public static final String EXTRA_REGISTRATION_ID = "registration_id";
  public static final String EXTRA_SENDER = "sender";
  public static final String EXTRA_SPECIAL_MESSAGE = "message_type";
  public static final String EXTRA_TOTAL_DELETED = "total_deleted";
  public static final String EXTRA_UNREGISTERED = "unregistered";
  public static final String INTENT_FROM_GCM_LIBRARY_RETRY = "com.google.android.gcm.intent.RETRY";
  public static final String INTENT_FROM_GCM_MESSAGE = "com.google.android.c2dm.intent.RECEIVE";
  public static final String INTENT_FROM_GCM_REGISTRATION_CALLBACK = "com.google.android.c2dm.intent.REGISTRATION";
  public static final String INTENT_TO_GCM_REGISTRATION = "com.google.android.c2dm.intent.REGISTER";
  public static final String INTENT_TO_GCM_UNREGISTRATION = "com.google.android.c2dm.intent.UNREGISTER";
  public static final String PERMISSION_GCM_INTENTS = "com.google.android.c2dm.permission.SEND";
  public static final String VALUE_DELETED_MESSAGES = "deleted_messages";

  private GCMConstants()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.gcm.GCMConstants
 * JD-Core Version:    0.6.2
 */