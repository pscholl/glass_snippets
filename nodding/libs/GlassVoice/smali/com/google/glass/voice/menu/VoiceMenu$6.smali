.class Lcom/google/glass/voice/menu/VoiceMenu$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenu;->animateBackToPrimaryMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenu;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->dismissed:Z
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$600(Lcom/google/glass/voice/menu/VoiceMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$900(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$700(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 428
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #calls: Lcom/google/glass/voice/menu/VoiceMenu;->fadeInPrimaryMenuItems()V
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$1000(Lcom/google/glass/voice/menu/VoiceMenu;)V

    .line 429
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$6;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$700(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_0
.end method
