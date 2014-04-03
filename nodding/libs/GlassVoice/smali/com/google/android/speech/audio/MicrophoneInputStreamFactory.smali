.class public Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;
.super Ljava/lang/Object;
.source "MicrophoneInputStreamFactory.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# static fields
.field private static final AUDIO_RECORD_BUFFER_SIZE_BYTES:I = 0x1f400

.field private static final AUDIO_RECORD_BUFFER_SIZE_SECONDS:I = 0x8

.field public static final BYTES_PER_MSEC:I = 0x10

.field public static final BYTES_PER_SAMPLE:I = 0x2

.field public static final MICROPHONE_READ_SIZE:I = 0x140

.field public static final SAMPLING_RATE:I = 0x1f40


# instance fields
.field private final mNoiseSuppression:Z

.field private final mSampleRateHz:I

.field private final mStartEventSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/media/MediaSyncEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZLcom/google/common/base/Supplier;)V
    .locals 0
    .parameter "sampleRateHz"
    .end parameter
    .parameter "noiseSuppression"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/media/MediaSyncEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, startEventSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Landroid/media/MediaSyncEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mSampleRateHz:I

    .line 42
    iput-boolean p2, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mNoiseSuppression:Z

    .line 43
    iput-object p3, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mStartEventSupplier:Lcom/google/common/base/Supplier;

    .line 44
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/speech/audio/MicrophoneInputStream;

    iget v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mSampleRateHz:I

    const v2, 0x1f400

    iget-boolean v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mNoiseSuppression:Z

    iget-object v4, p0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->mStartEventSupplier:Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/speech/audio/MicrophoneInputStream;-><init>(IIZLcom/google/common/base/Supplier;)V

    return-object v0
.end method
