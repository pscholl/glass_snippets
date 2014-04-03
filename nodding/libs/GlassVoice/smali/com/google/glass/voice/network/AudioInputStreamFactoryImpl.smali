.class public Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;
.super Ljava/lang/Object;
.source "AudioInputStreamFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# instance fields
.field protected inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InputStream not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "inputStream"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;->inputStream:Ljava/io/InputStream;

    .line 16
    return-void
.end method
