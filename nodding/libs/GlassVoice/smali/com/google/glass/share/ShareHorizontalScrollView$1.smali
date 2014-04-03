.class Lcom/google/glass/share/ShareHorizontalScrollView$1;
.super Lcom/google/glass/util/SimpleAnimationListener;
.source "ShareHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareHorizontalScrollView;->init(Lcom/google/glass/share/ShareHorizontalScrollView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/glass/share/ShareHorizontalScrollView$1;->this$0:Lcom/google/glass/share/ShareHorizontalScrollView;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/share/ShareHorizontalScrollView$1;->this$0:Lcom/google/glass/share/ShareHorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/share/ShareHorizontalScrollView;->setVisibility(I)V

    .line 70
    return-void
.end method
