.class Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay$1;
.super Ljava/lang/Object;
.source "FastScrollOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->adjustFadeOutViewsAlphaForItemView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay$1;->this$0:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;

    iput-object p2, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay$1;->this$0:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay$1;->val$itemView:Landroid/view/View;

    #calls: Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->adjustFadeOutViewsAlphaForItemView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->access$000(Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V

    .line 244
    return-void
.end method
