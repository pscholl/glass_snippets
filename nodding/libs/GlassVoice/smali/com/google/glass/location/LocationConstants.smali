.class public Lcom/google/glass/location/LocationConstants;
.super Ljava/lang/Object;
.source "LocationConstants.java"


# static fields
.field public static final FUSED_BALANCE_POWER_ACCURACY:Ljava/lang/String; = "fused_balanced_power_accuracy"

.field public static final FUSED_HIGH_ACCURACY:Ljava/lang/String; = "fused_high_accuracy"

.field static final KEY_NAME:Ljava/lang/String; = "name"

.field static final MSG_LOCATION_CHANGED:I = 0x65

.field static final MSG_REGISTER_CLIENT:I = 0x1

.field static final MSG_REMOVE_UPDATES:I = 0x3

.field static final MSG_REQUEST_UPDATES:I = 0x2

.field static final NO_LISTENER_ID:I = -0x1

.field static final SERVICE_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.home"

    const-string v2, "com.google.glass.location.LocationService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/location/LocationConstants;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static messageTypeToString(I)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 52
    sparse-switch p0, :sswitch_data_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 53
    :sswitch_0
    const-string v0, "REGISTER_CLIENT"

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v0, "REQUEST_UPDATES"

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v0, "REMOVE_UPDATES"

    goto :goto_0

    .line 56
    :sswitch_3
    const-string v0, "LOCATION_CHANGED"

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method
