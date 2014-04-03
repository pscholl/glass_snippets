.class Lcom/google/glass/logging/FeedbackActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/FeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/FeedbackActivity;

.field wasConfirmed:Z


# direct methods
.method constructor <init>(Lcom/google/glass/logging/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    iput-boolean v2, p0, Lcom/google/glass/logging/FeedbackActivity$1;->wasConfirmed:Z

    .line 69
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    #getter for: Lcom/google/glass/logging/FeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;
    invoke-static {v0}, Lcom/google/glass/logging/FeedbackActivity;->access$100(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/voice/VoiceAnnotationHelper;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationHelper;->startAnnotationForResult(I)V

    .line 70
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    invoke-virtual {v0}, Lcom/google/glass/logging/FeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 71
    return v2
.end method

.method public onDismissed()V
    .locals 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/glass/logging/FeedbackActivity$1;->wasConfirmed:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    const/4 v1, 0x0

    #calls: Lcom/google/glass/logging/FeedbackActivity;->sendFeedback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/FeedbackActivity;->access$000(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onDone()V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/glass/logging/FeedbackActivity$1;->wasConfirmed:Z

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity$1;->this$0:Lcom/google/glass/logging/FeedbackActivity;

    const/4 v1, 0x0

    #calls: Lcom/google/glass/logging/FeedbackActivity;->sendFeedback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/FeedbackActivity;->access$000(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method
