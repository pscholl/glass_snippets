.class Lcom/google/glass/voice/network/VoiceSearchContainer$4;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/android/speech/embedded/Greco3ModeSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;->createEmbeddedParams(Ljava/util/List;)Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$4;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFallbackMode(Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 0
    .parameter "requested"
    .parameter "grammar"

    .prologue
    .line 344
    return-object p1
.end method

.method public getMode(Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 0
    .parameter "requested"
    .parameter "grammar"

    .prologue
    .line 339
    return-object p1
.end method
