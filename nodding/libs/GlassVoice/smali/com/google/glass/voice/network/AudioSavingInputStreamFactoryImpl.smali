.class public Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;
.super Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;
.source "AudioSavingInputStreamFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x800

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field static sessionCount:I


# instance fields
.field private audioSavingWrapper:Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->sessionCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InputStream not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    new-instance v0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;

    iget-object v1, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->audioSavingWrapper:Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;

    .line 35
    iget-object v0, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->audioSavingWrapper:Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;

    return-object v0
.end method

.method public finishRecording()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->audioSavingWrapper:Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->audioSavingWrapper:Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl$AudioSavingInputStream;->finishRecording()V

    .line 87
    :cond_0
    return-void
.end method
