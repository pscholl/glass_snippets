.class Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;
.super Ljava/lang/Object;
.source "BaseHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateToItemRequest"
.end annotation


# instance fields
.field private bindedViewForItem:Landroid/view/View;

.field private final itemId:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItemID;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

.field private viewPosition:I


# direct methods
.method public constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemID;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>.AnimateToItemRequest;"
    .local p2, itemId:Ljava/lang/Object;,"TItemID;"
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->itemId:Ljava/lang/Object;

    .line 163
    return-void
.end method

.method static synthetic access$2300(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->bindedViewForItem:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->bindedViewForItem:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->viewPosition:I

    return v0
.end method

.method static synthetic access$2602(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->viewPosition:I

    return p1
.end method

.method static synthetic access$2800(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->itemId:Ljava/lang/Object;

    return-object v0
.end method
