.class Lcom/google/glass/widget/MosaicView$CellSpec;
.super Ljava/lang/Object;
.source "MosaicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/MosaicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CellSpec"
.end annotation


# instance fields
.field colSpan:I

.field column:I

.field layoutId:I

.field row:I

.field rowSpan:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0
    .parameter "row"
    .parameter "column"
    .parameter "rowSpan"
    .parameter "colSpan"
    .parameter "layoutId"

    .prologue
    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput p1, p0, Lcom/google/glass/widget/MosaicView$CellSpec;->row:I

    .line 642
    iput p2, p0, Lcom/google/glass/widget/MosaicView$CellSpec;->column:I

    .line 643
    iput p4, p0, Lcom/google/glass/widget/MosaicView$CellSpec;->colSpan:I

    .line 644
    iput p3, p0, Lcom/google/glass/widget/MosaicView$CellSpec;->rowSpan:I

    .line 645
    iput p5, p0, Lcom/google/glass/widget/MosaicView$CellSpec;->layoutId:I

    .line 646
    return-void
.end method

.method synthetic constructor <init>(IIIIILcom/google/glass/widget/MosaicView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 633
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIII)V

    return-void
.end method
