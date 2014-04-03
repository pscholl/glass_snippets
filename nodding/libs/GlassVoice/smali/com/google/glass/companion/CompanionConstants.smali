.class public Lcom/google/glass/companion/CompanionConstants;
.super Ljava/lang/Object;
.source "CompanionConstants.java"


# static fields
.field public static final ACTION_INPUT_BOX_RESPONSE:Ljava/lang/String; = "com.google.glass.companion.INPUT_BOX_RESPONSE"

.field public static final ACTION_SETUP_GLASS:Ljava/lang/String; = "com.google.glass.companion.SETUP_GLASS"

.field public static final ACTION_SETUP_WIFI:Ljava/lang/String; = "com.google.glass.companion.SETUP_WIFI"

.field public static final EXTRA_INPUT_BOX_REQUEST_BYTES:Ljava/lang/String; = "input_box_request_bytes"

.field public static final EXTRA_INPUT_BOX_RESPONSE_BYTES:Ljava/lang/String; = "input_box_response_bytes"

.field public static final EXTRA_SETUP_STRING:Ljava/lang/String; = "setup_string"

.field public static final EXTRA_SETUP_WIFI:Ljava/lang/String; = "wifi_setup_string"

.field public static final HOW_TO_PAIR_YOUTUBE_VIDEO_SOURCE:Ljava/lang/String; = "SW653c_GAOA"

.field public static final SECURE_UUID:Ljava/util/UUID; = null

.field public static final SOCKET_NAME:Ljava/lang/String; = "Companion"

.field public static final VERSION:I = 0x20006

.field static final VERSION_BITS:I = 0xff

.field static final VERSION_SHIFT:I = 0x10

.field public static final WELCOME_YOUTUBE_VIDEO_SOURCE:Ljava/lang/String; = "AlGkeQmHL0A"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "F15CC914-E4BC-45CE-9930-CB7695385850"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/CompanionConstants;->SECURE_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
