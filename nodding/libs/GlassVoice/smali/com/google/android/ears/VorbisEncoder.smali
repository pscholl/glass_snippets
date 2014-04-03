.class public Lcom/google/android/ears/VorbisEncoder;
.super Ljava/lang/Object;
.source "VorbisEncoder.java"


# instance fields
.field private nativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "vorbisencoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public native close()[B
.end method

.method public native encodeData([BI)[B
.end method

.method public native init(IIF)[B
.end method
