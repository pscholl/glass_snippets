.class Lcom/google/glass/voice/menu/VoiceMenu$5;
.super Ljava/lang/Object;
.source "VoiceMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenu;->promoteMenuItem(Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/voice/menu/OverscrollView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenu;

.field final synthetic val$menuItem:Lcom/google/glass/widget/TypophileTextView;

.field final synthetic val$menuItemScrollView:Lcom/google/glass/voice/menu/OverscrollView;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/voice/menu/OverscrollView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$menuItem:Lcom/google/glass/widget/TypophileTextView;

    iput-object p3, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$menuItemScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    iput-object p4, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 364
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$700(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$menuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$menuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$menuItemScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v2}, Lcom/google/glass/voice/menu/OverscrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->val$menuItemScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    #setter for: Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuSelectedYPosition:F
    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$802(Lcom/google/glass/voice/menu/VoiceMenu;F)F

    .line 367
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$700(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuSelectedYPosition:F
    invoke-static {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$800(Lcom/google/glass/voice/menu/VoiceMenu;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setTranslationY(F)V

    .line 368
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$700(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->primaryMenuLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$900(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$5;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->selectedPrimaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$700(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenu$5$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/menu/VoiceMenu$5$1;-><init>(Lcom/google/glass/voice/menu/VoiceMenu$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 383
    return-void
.end method
