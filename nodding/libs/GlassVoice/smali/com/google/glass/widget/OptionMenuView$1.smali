.class Lcom/google/glass/widget/OptionMenuView$1;
.super Lcom/google/glass/util/SimpleAnimationListener;
.source "OptionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/OptionMenuView;->init(Lcom/google/glass/widget/OptionMenuView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/OptionMenuView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/OptionMenuView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuView$1;->this$0:Lcom/google/glass/widget/OptionMenuView;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView$1;->this$0:Lcom/google/glass/widget/OptionMenuView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenuView;->setVisibility(I)V

    .line 72
    return-void
.end method
