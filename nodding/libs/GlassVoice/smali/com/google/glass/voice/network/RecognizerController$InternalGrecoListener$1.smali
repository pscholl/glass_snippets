.class Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;
.super Ljava/lang/Object;
.source "RecognizerController.java"

# interfaces
.implements Lcom/google/glass/voice/network/GwsResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionResult(Ljava/lang/String;)V
    .locals 1
    .parameter "actionString"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #calls: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->handleActionResults(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1200(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1100(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    iget-object v1, v1, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v3, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v4, "Failed direct gws request"

    invoke-direct {v3, v4, p1}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 713
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 714
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1100(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 695
    return-void
.end method

.method public onNoResults()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1100(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showDone()V

    .line 705
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 706
    return-void
.end method
