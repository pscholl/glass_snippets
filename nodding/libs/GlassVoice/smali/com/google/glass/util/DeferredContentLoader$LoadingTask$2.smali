.class Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeferredContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->hideView(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

.field final synthetic val$shouldPreserveLayout:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.2;"
    iput-object p1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    iput-object p2, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;->val$shouldPreserveLayout:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 384
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.2;"
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    iget-object v1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$2;->val$shouldPreserveLayout:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 385
    return-void
.end method
