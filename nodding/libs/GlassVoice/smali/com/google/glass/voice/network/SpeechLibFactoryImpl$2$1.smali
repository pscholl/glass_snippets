.class Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1;
.super Ljava/lang/Object;
.source "SpeechLibFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->createEmbeddedEngine()Lcom/google/android/speech/engine/RecognitionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1;->this$1:Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventLoggerForMode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/embedded/GrecoEventLogger;
    .locals 1
    .parameter "mode"

    .prologue
    .line 147
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1$1;-><init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1;)V

    return-object v0
.end method
