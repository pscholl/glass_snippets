.class Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView$1;
.super Landroid/widget/BaseAdapter;
.source "HorizontallyTuggableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView$1;->this$0:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView$1;->this$0:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->access$000(Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
