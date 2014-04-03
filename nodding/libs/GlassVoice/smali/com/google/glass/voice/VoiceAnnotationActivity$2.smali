.class Lcom/google/glass/voice/VoiceAnnotationActivity$2;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "VoiceAnnotationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceAnnotationActivity;->showCommitSlider(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

.field final synthetic val$textToReturn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceAnnotationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$2;->val$textToReturn:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/VoiceAnnotationActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setResult(I)V

    .line 370
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->finish()V

    .line 371
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$2;->val$textToReturn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->onAnnotationCommitted(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 364
    :cond_0
    return-void
.end method
