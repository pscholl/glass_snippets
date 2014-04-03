.class public Lcom/google/glass/voice/NativeAudioInterfaceWrapper;
.super Ljava/lang/Object;
.source "NativeAudioInterfaceWrapper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const-string v0, "audio_voice_native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native nativeClose()V
.end method

.method public native nativeOpen()V
.end method

.method public native nativeRead([B)I
.end method
