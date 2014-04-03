.class Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$2;
.super Ljava/lang/Object;
.source "BaseHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$2;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.2;"
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 334
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$2;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.2;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$100(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 335
    return-void
.end method
