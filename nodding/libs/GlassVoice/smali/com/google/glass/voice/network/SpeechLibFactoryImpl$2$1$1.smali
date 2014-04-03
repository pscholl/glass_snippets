.class Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1$1;
.super Ljava/lang/Object;
.source "SpeechLibFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/embedded/GrecoEventLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1;->getEventLoggerForMode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/embedded/GrecoEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1$1;->this$2:Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recognitionCompleted(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;)V
    .locals 0
    .parameter "recognizerLog"

    .prologue
    .line 158
    return-void
.end method

.method public recognitionStarted()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
