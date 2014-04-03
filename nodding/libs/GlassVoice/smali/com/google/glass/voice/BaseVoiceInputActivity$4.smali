.class Lcom/google/glass/voice/BaseVoiceInputActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseVoiceInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/BaseVoiceInputActivity;->onResumeActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

.field final synthetic val$initialSelectedCommandTextView:Lcom/google/glass/widget/TypophileTextView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/widget/TypophileTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$4;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iput-object p2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$4;->val$initialSelectedCommandTextView:Lcom/google/glass/widget/TypophileTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$4;->val$initialSelectedCommandTextView:Lcom/google/glass/widget/TypophileTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$4;->val$initialSelectedCommandTextView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 503
    return-void
.end method
