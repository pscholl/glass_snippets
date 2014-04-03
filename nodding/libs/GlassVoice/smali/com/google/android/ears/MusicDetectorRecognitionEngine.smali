.class public Lcom/google/android/ears/MusicDetectorRecognitionEngine;
.super Ljava/lang/Object;
.source "MusicDetectorRecognitionEngine.java"

# interfaces
.implements Lcom/google/android/speech/engine/RecognitionEngine;


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0xfa0

.field private static final HOTWORD_BUFFER_SIZE_BYTES:I = 0x1f40

.field private static final HOTWORD_MIN_CONSECUTIVE_DETECTIONS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MusicDetectorRecognitionEngine"


# instance fields
.field private mClosed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/SpeechSettings;)V
    .locals 1
    .parameter "speechSettings"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->mClosed:Z

    .line 49
    iput-object p1, p0, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 50
    return-void
.end method

.method private getMusicDetectorThreshold()F
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSoundSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getSoundSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasMusicDetectorThreshold()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    const/high16 v0, 0x3f80

    .line 145
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getSoundSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getMusicDetectorThreshold()F

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized initMusicDetector(I)Z
    .locals 5
    .parameter "sampleRateHz"

    .prologue
    const/4 v1, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 89
    :goto_0
    monitor-exit p0

    return v1

    .line 84
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/audio/ears/MusicDetector;->init(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :try_start_2
    const-string v2, "MusicDetectorRecognitionEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on native init(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized processAudio([B)Ljava/lang/Float;
    .locals 1
    .parameter "buffer"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lcom/google/audio/ears/MusicDetector;->process([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processInputStream(Ljava/io/InputStream;Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/audio/EndpointerListener;)V
    .locals 9
    .parameter "inputStream"
    .parameter
    .parameter "sessionParams"
    .parameter "endpointerListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/android/speech/RecognitionResponse;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/params/SessionParams;",
            "Lcom/google/android/speech/audio/EndpointerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/android/speech/RecognitionResponse;Lcom/google/android/speech/exception/RecognizeException;>;"
    invoke-direct {p0}, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->getMusicDetectorThreshold()F

    move-result v4

    .line 107
    .local v4, musicThreshold:F
    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v7

    sget-object v8, Lcom/google/android/speech/params/SessionParams$Mode;->HOTWORD:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v7, v8, :cond_1

    const/16 v0, 0x1f40

    .line 109
    .local v0, bufferSize:I
    :goto_0
    new-array v2, v0, [B

    .line 111
    .local v2, increment:[B
    const/4 v5, 0x0

    .line 113
    .local v5, numConsecutiveDetections:I
    :cond_0
    :goto_1
    :try_start_0
    invoke-static {p1, v2}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V

    .line 114
    invoke-direct {p0, v2}, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->processAudio([B)Ljava/lang/Float;

    move-result-object v6

    .line 115
    .local v6, score:Ljava/lang/Float;
    if-nez v6, :cond_2

    .line 136
    .end local v6           #score:Ljava/lang/Float;
    :goto_2
    return-void

    .line 107
    .end local v0           #bufferSize:I
    .end local v2           #increment:[B
    .end local v5           #numConsecutiveDetections:I
    :cond_1
    const/16 v0, 0xfa0

    goto :goto_0

    .line 117
    .restart local v0       #bufferSize:I
    .restart local v2       #increment:[B
    .restart local v5       #numConsecutiveDetections:I
    .restart local v6       #score:Ljava/lang/Float;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v7, v4

    if-ltz v7, :cond_4

    .line 118
    add-int/lit8 v5, v5, 0x1

    .line 119
    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v7

    sget-object v8, Lcom/google/android/speech/params/SessionParams$Mode;->HOTWORD:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v7, v8, :cond_3

    .line 120
    const/4 v7, 0x3

    if-lt v5, v7, :cond_0

    .line 121
    invoke-interface {p4}, Lcom/google/android/speech/audio/EndpointerListener;->onMusicDetected()V

    goto :goto_1

    .line 131
    .end local v6           #score:Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/io/EOFException;
    goto :goto_2

    .line 124
    .end local v1           #e:Ljava/io/EOFException;
    .restart local v6       #score:Ljava/lang/Float;
    :cond_3
    invoke-interface {p4}, Lcom/google/android/speech/audio/EndpointerListener;->onMusicDetected()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 134
    .end local v6           #score:Ljava/lang/Float;
    :catch_1
    move-exception v3

    .line 135
    .local v3, ioe:Ljava/io/IOException;
    new-instance v7, Lcom/google/android/speech/exception/AudioRecognizeException;

    const-string v8, "Error reading from input stream."

    invoke-direct {v7, v8, v3}, Lcom/google/android/speech/exception/AudioRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v7}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V

    goto :goto_2

    .line 128
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v6       #score:Ljava/lang/Float;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 163
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->mClosed:Z

    .line 157
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Recognizer;->maybeLoadSharedLibrary()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :try_start_2
    invoke-static {}, Lcom/google/audio/ears/MusicDetector;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :try_start_3
    const-string v1, "MusicDetectorRecognitionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on native close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 150
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startRecognition(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/audio/EndpointerListener;)V
    .locals 5
    .parameter "input"
    .parameter
    .parameter "sessionParams"
    .parameter "endpointerListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/audio/AudioInputStreamFactory;",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/android/speech/RecognitionResponse;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/params/SessionParams;",
            "Lcom/google/android/speech/audio/EndpointerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/android/speech/RecognitionResponse;Lcom/google/android/speech/exception/RecognizeException;>;"
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Recognizer;->maybeLoadSharedLibrary()V

    .line 58
    monitor-enter p0

    .line 59
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->mClosed:Z

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 70
    .local v0, inputStream:Ljava/io/InputStream;
    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v2

    .line 71
    .local v2, sampleRateHz:I
    invoke-direct {p0, v2}, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->initMusicDetector(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    .end local v0           #inputStream:Ljava/io/InputStream;
    .end local v2           #sampleRateHz:I
    :goto_0
    return-void

    .line 60
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, ioe:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/speech/exception/AudioRecognizeException;

    const-string v4, "Unable to create input stream."

    invoke-direct {v3, v4, v1}, Lcom/google/android/speech/exception/AudioRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v3}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v0       #inputStream:Ljava/io/InputStream;
    .restart local v2       #sampleRateHz:I
    :cond_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/ears/MusicDetectorRecognitionEngine;->processInputStream(Ljava/io/InputStream;Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/audio/EndpointerListener;)V

    goto :goto_0
.end method
