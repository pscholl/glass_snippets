.class Lcom/google/glass/voice/BaseVoiceInputActivity$2;
.super Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;
.source "BaseVoiceInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/BaseVoiceInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionResponse([B)V
    .locals 3
    .parameter "responseBytes"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onActionResponse"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 361
    return-void
.end method

.method public onError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onError"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 367
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onHtmlAnswerCardResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 343
    return-void
.end method

.method public onRecognitionResult(Ljava/lang/CharSequence;F)V
    .locals 5
    .parameter "text"
    .parameter "confidence"

    .prologue
    const/4 v4, 0x0

    .line 333
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "onRecognitionResult"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 335
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 336
    return-void
.end method

.method public onSoundSearchResult([B)V
    .locals 4
    .parameter "responseBytes"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "onSoundSearchResult"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {p1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/ISpeechLevelSource;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "setSpeechLevelSource"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 322
    return-void
.end method

.method public showDone()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "showDone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 316
    return-void
.end method

.method public showListening()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "showListening"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method

.method public showMusicDetected()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "showMusicDetected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 310
    return-void
.end method

.method public showNoSpeechDetected()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "showNoSpeechDetected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 304
    return-void
.end method

.method public showRecognizing()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "showRecognizing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 298
    return-void
.end method

.method public showRecording()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "showRecording"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    const/4 v4, 0x0

    .line 326
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;
    invoke-static {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "updateRecognizedText"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 328
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 329
    return-void
.end method
