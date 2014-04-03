.class public Lcom/google/android/speech/embedded/Greco3Recognizer;
.super Lcom/google/speech/recognizer/AbstractRecognizer;
.source "Greco3Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/Greco3Recognizer$1;,
        Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Vs.G3Recognizer"

.field private static sSharedLibraryLoaded:Z


# instance fields
.field private final mBytesPerSample:I

.field private final mCallback:Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;

.field private mProgressMs:J

.field private final mSamplingRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/speech/embedded/Greco3Recognizer;->sSharedLibraryLoaded:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "samplingRate"
    .parameter "bytesPerSample"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;-><init>()V

    .line 81
    new-instance v0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;-><init>(Lcom/google/android/speech/embedded/Greco3Recognizer$1;)V

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mCallback:Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;

    .line 82
    iput p1, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mSamplingRate:I

    .line 83
    iput p2, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mBytesPerSample:I

    .line 84
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mCallback:Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;

    invoke-virtual {p0, v0}, Lcom/google/android/speech/embedded/Greco3Recognizer;->addCallback(Lcom/google/speech/recognizer/RecognizerCallback;)I

    .line 85
    return-void
.end method

.method public static create(Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;II)Lcom/google/android/speech/embedded/Greco3Recognizer;
    .locals 8
    .parameter "resources"
    .parameter "samplingRate"
    .parameter "bytesPerSample"

    .prologue
    const/4 v4, 0x0

    .line 46
    new-instance v2, Lcom/google/android/speech/embedded/Greco3Recognizer;

    invoke-direct {v2, p1, p2}, Lcom/google/android/speech/embedded/Greco3Recognizer;-><init>(II)V

    .line 48
    .local v2, g3Recognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->configFile:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, configFile:Ljava/io/File;
    invoke-static {v0}, Lcom/google/android/speech/embedded/Greco3Mode;->isAsciiConfiguration(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->configFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->resources:Lcom/google/android/speech/embedded/Greco3ResourceManager;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/speech/embedded/Greco3Recognizer;->initFromFile(Ljava/lang/String;Lcom/google/speech/recognizer/ResourceManager;)I

    move-result v3

    .line 66
    .local v3, status:I
    :goto_0
    if-nez v3, :cond_2

    .line 71
    .end local v2           #g3Recognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;
    .end local v3           #status:I
    :goto_1
    return-object v2

    .line 57
    .restart local v2       #g3Recognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;
    :cond_0
    invoke-static {v0}, Lcom/google/android/speech/embedded/Greco3Recognizer;->getFileBytes(Ljava/io/File;)[B

    move-result-object v1

    .line 58
    .local v1, fileBytes:[B
    if-nez v1, :cond_1

    .line 59
    const-string v5, "Vs.G3Recognizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading g3 config file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->configFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 60
    goto :goto_1

    .line 63
    :cond_1
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->resources:Lcom/google/android/speech/embedded/Greco3ResourceManager;

    invoke-virtual {v2, v1, v5}, Lcom/google/android/speech/embedded/Greco3Recognizer;->initFromProto([BLcom/google/speech/recognizer/ResourceManager;)I

    move-result v3

    .restart local v3       #status:I
    goto :goto_0

    .line 70
    .end local v1           #fileBytes:[B
    :cond_2
    const-string v5, "Vs.G3Recognizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to bring up g3, Status code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 71
    goto :goto_1
.end method

.method private static getFileBytes(Ljava/io/File;)[B
    .locals 2
    .parameter "file"

    .prologue
    .line 122
    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, ioe:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized maybeLoadSharedLibrary()V
    .locals 3

    .prologue
    .line 29
    const-class v2, Lcom/google/android/speech/embedded/Greco3Recognizer;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/google/android/speech/embedded/Greco3Recognizer;->sSharedLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 42
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    monitor-exit v2

    return-void

    .line 34
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :try_start_1
    const-string v1, "google_recognizer_jni_l"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Recognizer;->nativeInit()V

    .line 41
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/speech/embedded/Greco3Recognizer;->sSharedLibraryLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 35
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 37
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    :try_start_3
    const-string v1, "google_recognizer_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public cancel()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mCallback:Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;

    invoke-virtual {v0}, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->invalidate()V

    .line 114
    invoke-super {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->cancel()I

    move-result v0

    return v0
.end method

.method protected read([B)I
    .locals 7
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/speech/recognizer/AbstractRecognizer;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    .local v0, bytesRead:I
    if-lez v0, :cond_0

    .line 104
    iget-wide v2, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mProgressMs:J

    mul-int/lit16 v4, v0, 0x3e8

    iget v5, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mBytesPerSample:I

    iget v6, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mSamplingRate:I

    mul-int/2addr v5, v6

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mProgressMs:J

    .line 105
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mCallback:Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;

    iget-wide v3, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mProgressMs:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->updateProgress(J)V

    .line 108
    :cond_0
    return v0

    .line 97
    .end local v0           #bytesRead:I
    :catch_0
    move-exception v1

    .line 98
    .local v1, ioe:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mCallback:Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;

    new-instance v3, Lcom/google/android/speech/exception/AudioRecognizeException;

    const-string v4, "Audio error"

    invoke-direct {v3, v4, v1}, Lcom/google/android/speech/exception/AudioRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->notifyError(Lcom/google/android/speech/exception/RecognizeException;)V

    .line 99
    throw v1
.end method

.method public setCallback(Lcom/google/android/speech/embedded/Greco3Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mCallback:Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;

    #setter for: Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;
    invoke-static {v0, p1}, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->access$102(Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;Lcom/google/android/speech/embedded/Greco3Callback;)Lcom/google/android/speech/embedded/Greco3Callback;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer;->mProgressMs:J

    .line 90
    return-void
.end method
