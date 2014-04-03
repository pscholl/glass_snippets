.class public final Lcom/google/glass/voice/AudioByteUtils;
.super Ljava/lang/Object;
.source "AudioByteUtils.java"


# static fields
.field private static final BYTES_PER_SAMPLE:F = 2.0f

.field private static final HOTWORD_START_BOUND_FUZZ_FACTOR_MS:I = 0x64

.field public static final MILLIS_PER_SECOND:J

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/voice/AudioByteUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/AudioByteUtils;->TAG:Ljava/lang/String;

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/AudioByteUtils;->MILLIS_PER_SECOND:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getByteLength(J)I
    .locals 2
    .parameter "millis"

    .prologue
    .line 59
    const-wide/16 v0, 0x3e80

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(JJ)I

    move-result v0

    return v0
.end method

.method public static getByteLength(JJ)I
    .locals 3
    .parameter "millis"
    .parameter "sampleRate"

    .prologue
    .line 71
    const/high16 v0, 0x4000

    long-to-float v1, p2

    mul-float/2addr v0, v1

    long-to-float v1, p0

    mul-float/2addr v0, v1

    sget-wide v1, Lcom/google/glass/voice/AudioByteUtils;->MILLIS_PER_SECOND:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static getLastCommandAudio(Lcom/google/glass/voice/HotwordResult;Lcom/google/glass/util/CircularByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9
    .parameter "hotwordResult"
    .parameter "audioRefeedBuffer"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/glass/voice/HotwordResult;->getPhraseDurationMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    add-long v1, v5, v7

    .line 42
    .local v1, millis:J
    sget-wide v5, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    invoke-static {v5, v6}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v4

    .line 44
    .local v4, totalBufferLength:I
    invoke-static {v1, v2}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v3

    .line 46
    .local v3, refeedLength:I
    if-le v3, v4, :cond_0

    .line 47
    sget-object v5, Lcom/google/glass/voice/AudioByteUtils;->TAG:Ljava/lang/String;

    const-string v6, "Cannot access last command, audio refeed buffer too small."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    sget-object v5, Lcom/google/glass/voice/AudioByteUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ready to copy out "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes to refeed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    .local v0, copy:Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v0}, Lcom/google/glass/util/CircularByteBuffer;->peekLast(Ljava/nio/ByteBuffer;)I

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static getMillis(J)J
    .locals 2
    .parameter "byteLength"

    .prologue
    .line 63
    const-wide/16 v0, 0x3e80

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMillis(JJ)J
    .locals 3
    .parameter "byteLength"
    .parameter "sampleRate"

    .prologue
    .line 79
    sget-wide v0, Lcom/google/glass/voice/AudioByteUtils;->MILLIS_PER_SECOND:J

    mul-long/2addr v0, p0

    long-to-float v0, v0

    const/high16 v1, 0x4000

    long-to-float v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method
