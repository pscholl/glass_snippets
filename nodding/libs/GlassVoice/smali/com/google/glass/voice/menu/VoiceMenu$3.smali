.class Lcom/google/glass/voice/menu/VoiceMenu$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenu;->selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenu;

.field final synthetic val$postAnimationDelayMs:J

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$postAnimationRunnable:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$postAnimationDelayMs:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$400(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenu;->cancelIfDismissed(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$postAnimationDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$500(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 315
    return-void
.end method
