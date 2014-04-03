.class final Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;
.super Ljava/lang/Object;
.source "RecognizerFactory.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/RecognizerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoOpRecognizer"
.end annotation


# instance fields
.field private writeAudioWarningLogged:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;->writeAudioWarningLogged:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/RecognizerFactory$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-static {}, Lcom/google/glass/voice/RecognizerFactory;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "activate() called on no-op recognizer, nothing to do."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iput-boolean v3, p0, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;->writeAudioWarningLogged:Z

    .line 63
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/voice/RecognizerFactory;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "deactivate() called on no-op recognizer, nothing to do."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/google/glass/voice/RecognizerFactory;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "destroy() called on no-op recognizer, nothing to do."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2
    .parameter "str"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No op recognizer should not generate results"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "NO_OP_RECOGNIZER"

    return-object v0
.end method

.method public writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    .locals 3
    .parameter "audio"
    .parameter "sampleRate"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;->writeAudioWarningLogged:Z

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/google/glass/voice/RecognizerFactory;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Feeding audio to a no-op recognizer!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;->writeAudioWarningLogged:Z

    .line 41
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
