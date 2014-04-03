.class public Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;
.super Ljava/lang/Object;
.source "AudioSavingHotwordRecognizerDecorator.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

.field private buf:[B

.field private delegate:Lcom/google/glass/voice/HotwordRecognizer;

.field private name:Ljava/lang/String;

.field private phaseCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/glass/voice/HotwordRecognizer;Ljava/lang/String;)V
    .locals 0
    .parameter "delegate"
    .parameter "name"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    .line 29
    iput-object p2, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static create(Lcom/google/glass/voice/HotwordRecognizer;Ljava/lang/String;)Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;
    .locals 1
    .parameter "delegate"
    .parameter "name"

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;-><init>(Lcom/google/glass/voice/HotwordRecognizer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBuffer(I)[B
    .locals 1
    .parameter "length"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->buf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->buf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 71
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->buf:[B

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->buf:[B

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->activate()V

    .line 67
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->deactivate()V

    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->finishSavingAudio()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 62
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->destroy()V

    .line 110
    return-void
.end method

.method saveAudio(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 99
    .local v0, availableBytes:I
    invoke-direct {p0, v0}, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->getBuffer(I)[B

    move-result-object v1

    .line 100
    .local v1, buf:[B
    invoke-virtual {p1, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 102
    iget-object v2, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v2, v1, v3, v0}, Lcom/google/glass/logging/audio/AudioSaver;->saveAudio([BII)V

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 105
    return-void
.end method

.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "str"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/HotwordRecognizer;->stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSavingHotwordRecognizerDecorator [delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phaseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->phaseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    .locals 5
    .parameter "b"
    .parameter "rate"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;

    invoke-direct {v1, p2, p3}, Lcom/google/glass/logging/audio/BufferedAudioSaver;-><init>(J)V

    iput-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v1}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    :try_start_0
    sget-object v1, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->TAG:Ljava/lang/String;

    const-string v2, "Preparing audio saver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->phaseCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->phaseCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/logging/audio/AudioSaver;->prepareToSaveAudio(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->saveAudio(Ljava/nio/ByteBuffer;)V

    .line 93
    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/glass/voice/HotwordRecognizer;->writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;

    move-result-object v1

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
