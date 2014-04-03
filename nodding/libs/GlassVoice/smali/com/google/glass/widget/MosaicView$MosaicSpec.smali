.class final enum Lcom/google/glass/widget/MosaicView$MosaicSpec;
.super Ljava/lang/Enum;
.source "MosaicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/MosaicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MosaicSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/widget/MosaicView$MosaicSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum LANDSCAPE_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum LANDSCAPE_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum LANDSCAPE_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum LANDSCAPE_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum LANDSCAPE_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum LANDSCAPE_6:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum LANDSCAPE_7:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum LANDSCAPE_8:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum PORTRAIT_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum PORTRAIT_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum PORTRAIT_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum PORTRAIT_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum PORTRAIT_4_ALT:Lcom/google/glass/widget/MosaicView$MosaicSpec;

.field public static final enum PORTRAIT_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;


# instance fields
.field cellSpecs:[Lcom/google/glass/widget/MosaicView$CellSpec;

.field columns:I

.field embededRemainingCountLayoutId:I

.field remainingLayoutId:I

.field rows:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 439
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "LANDSCAPE_1"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v0, 0x1

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 442
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "LANDSCAPE_2"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v0, 0x2

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_big_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 448
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "LANDSCAPE_3"

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v0, 0x3

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_big_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 455
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "LANDSCAPE_4"

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v0, 0x4

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 472
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "LANDSCAPE_5"

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v0, 0x5

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x4

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 490
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "LANDSCAPE_6"

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v0, 0x6

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x4

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x5

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_6:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 509
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "LANDSCAPE_7"

    const/4 v10, 0x6

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v0, 0x7

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x4

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x5

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x6

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_7:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 520
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "LANDSCAPE_8"

    const/4 v10, 0x7

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/16 v0, 0x8

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x4

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x5

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x6

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x7

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_8:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 532
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "PORTRAIT_1"

    const/16 v10, 0x8

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v0, 0x1

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_big:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 535
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "PORTRAIT_2"

    const/16 v10, 0x9

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v0, 0x2

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v6, -0x1

    sget v7, Lcom/google/glass/common/R$layout;->mosaic_cell_medium_embedded_remaining:I

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 552
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "PORTRAIT_3"

    const/16 v10, 0xa

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v0, 0x3

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 571
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "PORTRAIT_4"

    const/16 v10, 0xb

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v0, 0x4

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 588
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "PORTRAIT_4_ALT"

    const/16 v10, 0xc

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v0, 0x4

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_4_ALT:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 606
    new-instance v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const-string v9, "PORTRAIT_5"

    const/16 v10, 0xd

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v0, 0x5

    new-array v13, v0, [Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_medium:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    const/4 v7, 0x4

    new-instance v0, Lcom/google/glass/widget/MosaicView$CellSpec;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/google/glass/common/R$layout;->mosaic_cell_small:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/widget/MosaicView$CellSpec;-><init>(IIIIILcom/google/glass/widget/MosaicView$1;)V

    aput-object v0, v13, v7

    sget v6, Lcom/google/glass/common/R$layout;->mosaic_cell_small_remaining:I

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView$MosaicSpec;-><init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V

    sput-object v8, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 436
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/glass/widget/MosaicView$MosaicSpec;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_6:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_7:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_8:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_4_ALT:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->$VALUES:[Lcom/google/glass/widget/MosaicView$MosaicSpec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III[Lcom/google/glass/widget/MosaicView$CellSpec;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "rows"
    .parameter "columns"
    .parameter "cellSpecs"
    .parameter "remainingLayoutId"
    .parameter "embededRemainingCountLayoutId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Lcom/google/glass/widget/MosaicView$CellSpec;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 622
    iput p3, p0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->rows:I

    .line 623
    iput p4, p0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->columns:I

    .line 624
    iput-object p5, p0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->cellSpecs:[Lcom/google/glass/widget/MosaicView$CellSpec;

    .line 625
    iput p7, p0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->embededRemainingCountLayoutId:I

    .line 626
    iput p6, p0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->remainingLayoutId:I

    .line 627
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/widget/MosaicView$MosaicSpec;
    .locals 1
    .parameter "name"

    .prologue
    .line 436
    const-class v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/widget/MosaicView$MosaicSpec;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->$VALUES:[Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0}, [Lcom/google/glass/widget/MosaicView$MosaicSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/widget/MosaicView$MosaicSpec;

    return-object v0
.end method
