.class public interface abstract Lcom/google/android/speech/ResponseProcessor$AudioCallback;
.super Ljava/lang/Object;
.source "ResponseProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/ResponseProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioCallback"
.end annotation


# virtual methods
.method public abstract recordingStarted(J)V
.end method

.method public abstract shutdownAudio()V
.end method

.method public abstract stopAudio()V
.end method
