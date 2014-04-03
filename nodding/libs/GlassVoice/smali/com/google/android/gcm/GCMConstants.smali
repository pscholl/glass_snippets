.class public final Lcom/google/android/gcm/GCMConstants;
.super Ljava/lang/Object;
.source "GCMConstants.java"


# static fields
.field public static final DEFAULT_INTENT_SERVICE_CLASS_NAME:Ljava/lang/String; = ".GCMIntentService"

.field public static final ERROR_ACCOUNT_MISSING:Ljava/lang/String; = "ACCOUNT_MISSING"

.field public static final ERROR_AUTHENTICATION_FAILED:Ljava/lang/String; = "AUTHENTICATION_FAILED"

.field public static final ERROR_INVALID_PARAMETERS:Ljava/lang/String; = "INVALID_PARAMETERS"

.field public static final ERROR_INVALID_SENDER:Ljava/lang/String; = "INVALID_SENDER"

.field public static final ERROR_PHONE_REGISTRATION_ERROR:Ljava/lang/String; = "PHONE_REGISTRATION_ERROR"

.field public static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final EXTRA_APPLICATION_PENDING_INTENT:Ljava/lang/String; = "app"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field public static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field public static final EXTRA_SPECIAL_MESSAGE:Ljava/lang/String; = "message_type"

.field public static final EXTRA_TOTAL_DELETED:Ljava/lang/String; = "total_deleted"

.field public static final EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered"

.field public static final INTENT_FROM_GCM_LIBRARY_RETRY:Ljava/lang/String; = "com.google.android.gcm.intent.RETRY"

.field public static final INTENT_FROM_GCM_MESSAGE:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final INTENT_FROM_GCM_REGISTRATION_CALLBACK:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field public static final INTENT_TO_GCM_REGISTRATION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field public static final INTENT_TO_GCM_UNREGISTRATION:Ljava/lang/String; = "com.google.android.c2dm.intent.UNREGISTER"

.field public static final PERMISSION_GCM_INTENTS:Ljava/lang/String; = "com.google.android.c2dm.permission.SEND"

.field public static final VALUE_DELETED_MESSAGES:Ljava/lang/String; = "deleted_messages"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
