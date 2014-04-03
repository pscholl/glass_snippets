.class Lcom/google/glass/voice/BaseVoiceInputActivity$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseVoiceInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/BaseVoiceInputActivity;->animateOut(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$8;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iput-object p2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$8;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    return-void
.end method
