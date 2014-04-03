.class Lcom/google/glass/voice/network/RecognizerController$2;
.super Ljava/lang/Object;
.source "RecognizerController.java"

# interfaces
.implements Lcom/google/glass/voice/network/SpeechLevelSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/RecognizerController;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/RecognizerController;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$2;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeechLevel()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$2;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/SpeechLevelSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/speech/SpeechLevelSource;->getSpeechLevel()I

    move-result v0

    return v0
.end method
