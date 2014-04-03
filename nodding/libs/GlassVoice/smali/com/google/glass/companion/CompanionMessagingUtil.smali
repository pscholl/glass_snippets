.class public Lcom/google/glass/companion/CompanionMessagingUtil;
.super Ljava/lang/Object;
.source "CompanionMessagingUtil.java"


# static fields
.field public static final ACTION_START_COMPANION_SERVICE:Ljava/lang/String; = "com.google.glass.bluetooth.COMPANION_SERVICE"

.field public static final EXCLUSIVE_ID:J = 0x0L

.field public static final KEY_ENVELOPE:Ljava/lang/String; = "Envelope"

.field public static final KEY_MESSENGER:Ljava/lang/String; = "Messenger"

.field public static final KEY_SCREENCAST_DEVICE:Ljava/lang/String; = "Screencast_device"

.field private static final UNIQUE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/glass/companion/CompanionMessagingUtil;->UNIQUE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBundle(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Landroid/os/Bundle;
    .locals 2
    .parameter "deviceWrapper"

    .prologue
    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "Screencast_device"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    return-object v0
.end method

.method public static createBundle(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Bundle;
    .locals 1
    .parameter "envelope"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;
    .locals 3
    .parameter "envelope"
    .parameter "replyToMessenger"

    .prologue
    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "Envelope"

    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 111
    if-eqz p1, :cond_0

    .line 112
    const-string v1, "Messenger"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    :cond_0
    return-object v0
.end method

.method public static createMessage(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Message;
    .locals 4
    .parameter "envelope"

    .prologue
    .line 59
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 60
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Envelope"

    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 61
    return-object v0
.end method

.method public static getEnvelope(Landroid/os/Bundle;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 5
    .parameter "bundle"

    .prologue
    .line 71
    const-string v2, "Envelope"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const-string v2, "Envelope"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 73
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 75
    :try_start_0
    invoke-static {v0}, Lcom/google/glass/companion/Proto$Envelope;->parseFrom([B)Lcom/google/glass/companion/Proto$Envelope;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    .end local v0           #bytes:[B
    :goto_0
    return-object v2

    .line 76
    .restart local v0       #bytes:[B
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unable to parse envelope proto"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .end local v0           #bytes:[B
    .end local v1           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "message"

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Bundle;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public static getNextUniqueId()J
    .locals 5

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/companion/CompanionMessagingUtil;->UNIQUE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x1f

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static newEnvelope()Lcom/google/glass/companion/Proto$Envelope;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    .line 51
    .local v0, envelope:Lcom/google/glass/companion/Proto$Envelope;
    const v1, 0x20006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/companion/Proto$Envelope;->version:Ljava/lang/Integer;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis:Ljava/lang/Long;

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis:Ljava/lang/Long;

    .line 54
    return-object v0
.end method
