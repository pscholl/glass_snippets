.class final Lcom/google/glass/voice/b;
.super Lcom/google/glass/voice/network/e;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Lcom/google/glass/voice/network/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "showListening"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onError"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/network/a;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "setSpeechLevelSource"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;F)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onRecognitionResult"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "updateRecognizedText"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iget-object v1, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onHtmlAnswerCardResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a([B)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onSoundSearchResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {p1}, Lcom/google/a/a/a/d;->a([B)Lcom/google/a/a/a/d;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "showRecording"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b([B)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onActionResponse"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "showRecognizing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "showNoSpeechDetected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "showMusicDetected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "showDone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/b;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
