.class public final Lcom/google/android/speech/audio/VoiceAudioInputStreamFactory;
.super Ljava/lang/Object;
.source "VoiceAudioInputStreamFactory.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MicrophoneManagerImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/google/android/speech/audio/AudioInputStreamFactory;

.field private final mSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/SpeechSettings;Landroid/content/Context;)V
    .locals 0
    .parameter "delegate"
    .parameter "settings"
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/speech/audio/VoiceAudioInputStreamFactory;->mDelegate:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 34
    iput-object p2, p0, Lcom/google/android/speech/audio/VoiceAudioInputStreamFactory;->mSettings:Lcom/google/android/speech/SpeechSettings;

    .line 35
    iput-object p3, p0, Lcom/google/android/speech/audio/VoiceAudioInputStreamFactory;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/google/android/speech/audio/VoiceAudioInputStreamFactory;->mDelegate:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    invoke-interface {v1}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 42
    .local v0, in:Ljava/io/InputStream;
    iget-object v1, p0, Lcom/google/android/speech/audio/VoiceAudioInputStreamFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/speech/audio/VoiceAudioInputStreamFactory;->mSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-static {v0, v1, v2}, Lcom/google/android/speech/debug/DebugAudioLogger;->maybeWrapInLogStream(Ljava/io/InputStream;Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method
