.class public Lcom/google/glass/widget/DynamicSizeTextView;
.super Lcom/google/glass/widget/TypophileTextView;
.source "DynamicSizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;,
        Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;,
        Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;,
        Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;,
        Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService; = null

.field private static final LAYOUT_CACHE_SIZE:I = 0x10

.field private static final SIZING_CACHE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static layoutCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static sizingCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;",
            "Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isForcedToSmallestSize:Z

.field private shouldUpdateTextSize:Z

.field private showEllipsis:Z

.field private sizeTextOnBackgroundThread:Z

.field private textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

.field private textSizeTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;",
            ">;"
        }
    .end annotation
.end field

.field private textSizes:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/widget/DynamicSizeTextView;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    .line 220
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 248
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/DynamicSizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    const/4 v2, 0x1

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    iput-boolean v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->showEllipsis:Z

    .line 259
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$array;->dynamic_text_sizes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    .line 262
    iput-boolean v2, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/google/glass/widget/DynamicSizeTextView;->calculateTextSize(Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/widget/DynamicSizeTextView;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/widget/DynamicSizeTextView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    return-void
.end method

.method private applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V
    .locals 6
    .parameter "sizingResult"

    .prologue
    const/4 v4, 0x0

    .line 521
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 525
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextSize(IF)V

    .line 528
    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textSize:F

    invoke-virtual {p0, v4, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextSize(IF)V

    .line 540
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 541
    .local v0, f:Landroid/graphics/Paint$FontMetrics;
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    neg-float v3, v3

    float-to-int v2, v3

    .line 542
    .local v2, padding:I
    invoke-virtual {p0, v4, v2, v4, v4}, Lcom/google/glass/widget/DynamicSizeTextView;->setPadding(IIII)V

    .line 545
    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->numLines:I

    invoke-virtual {p0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setMaxLines(I)V

    .line 546
    iget-boolean v3, p0, Lcom/google/glass/widget/DynamicSizeTextView;->showEllipsis:Z

    if-eqz v3, :cond_1

    .line 547
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 553
    :goto_0
    iget-object v3, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    if-eqz v3, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 557
    .local v1, originalText:Ljava/lang/CharSequence;
    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textEnd:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 558
    iget-object v3, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    iget v4, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textEnd:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;->onTextClipped(Ljava/lang/CharSequence;)V

    .line 562
    .end local v1           #originalText:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 549
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private calculateTextSize(Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .locals 26
    .parameter "text"
    .parameter "width"
    .parameter "textViewLineSpacingMultiplier"
    .parameter "textViewLineSpacingExtra"
    .parameter "textViewIncludeFontPadding"
    .parameter "alignment"

    .prologue
    .line 437
    const/16 v24, 0x0

    .line 438
    .local v24, startIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    .line 439
    .local v14, endIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v8, v4

    .line 442
    .local v8, largestSizeThatFits:F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    if-nez v4, :cond_2

    move/from16 v16, v8

    .line 445
    .end local v8           #largestSizeThatFits:F
    .local v16, largestSizeThatFits:F
    :goto_0
    move/from16 v0, v24

    if-gt v0, v14, :cond_1

    .line 446
    add-int v4, v24, v14

    shr-int/lit8 v15, v4, 0x1

    .line 449
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizes:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v5, v4

    .line 450
    .local v5, textSizePx:F
    new-instance v3, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    move/from16 v4, p2

    move-object/from16 v6, p6

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;-><init>(IFLandroid/text/Layout$Alignment;FFZ)V

    .line 454
    .local v3, key:Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;

    move-result-object v17

    .line 457
    .local v17, layout:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V

    .line 458
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v18

    .line 461
    .local v18, layoutHeight:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v4

    move/from16 v0, v18

    if-gt v0, v4, :cond_0

    .line 465
    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 468
    .end local v16           #largestSizeThatFits:F
    .restart local v8       #largestSizeThatFits:F
    add-int/lit8 v14, v15, -0x1

    :goto_1
    move/from16 v16, v8

    .line 474
    .end local v8           #largestSizeThatFits:F
    .restart local v16       #largestSizeThatFits:F
    goto :goto_0

    .line 472
    :cond_0
    add-int/lit8 v24, v15, 0x1

    move/from16 v8, v16

    .end local v16           #largestSizeThatFits:F
    .restart local v8       #largestSizeThatFits:F
    goto :goto_1

    .end local v3           #key:Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    .end local v5           #textSizePx:F
    .end local v8           #largestSizeThatFits:F
    .end local v15           #index:I
    .end local v17           #layout:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    .end local v18           #layoutHeight:I
    .restart local v16       #largestSizeThatFits:F
    :cond_1
    move/from16 v8, v16

    .line 478
    .end local v16           #largestSizeThatFits:F
    .restart local v8       #largestSizeThatFits:F
    :cond_2
    new-instance v3, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    move-object v6, v3

    move/from16 v7, p2

    move-object/from16 v9, p6

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;-><init>(IFLandroid/text/Layout$Alignment;FFZ)V

    .line 480
    .restart local v3       #key:Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;

    move-result-object v17

    .line 483
    .restart local v17       #layout:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V

    .line 484
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v18

    .line 489
    .restart local v18       #layoutHeight:I
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v13

    .line 490
    .local v13, allLines:I
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getBottomPadding()I

    move-result v20

    .line 491
    .local v20, pad:I
    mul-int/lit8 v4, v20, 0x2

    sub-int v4, v18, v4

    div-int v21, v4, v13

    .line 492
    .local v21, pixelsPerLine:I
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v6

    div-int v6, v6, v21

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 493
    .local v19, numVisibleLines:I
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/text/DynamicLayout;

    add-int/lit8 v6, v19, -0x1

    invoke-virtual {v4, v6}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result v25

    .line 496
    .local v25, textEnd:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 499
    new-instance v22, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-direct {v0, v8, v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;-><init>(FII)V

    .line 500
    .local v22, result:Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    new-instance v23, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 502
    .local v23, sizingCacheKey:Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    sget-object v4, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    return-object v22
.end method

.method private cancelTextSizeTask()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    .line 318
    :cond_0
    return-void
.end method

.method private getLayout(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Landroid/util/Pair;
    .locals 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v9

    .line 569
    .local v9, pool:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 570
    .local v8, cachedLayout:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    if-nez v8, :cond_0

    .line 571
    new-instance v1, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;

    invoke-direct {v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;-><init>()V

    .line 572
    .local v1, textContainer:Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 573
    .local v2, paint:Landroid/text/TextPaint;
    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 574
    new-instance v0, Landroid/text/DynamicLayout;

    iget v3, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    iget-object v4, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    iget v5, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingMultiplier:F

    iget v6, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    iget-boolean v7, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewIncludeFontPadding:Z

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 582
    .local v0, layout:Landroid/text/DynamicLayout;
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 584
    .end local v0           #layout:Landroid/text/DynamicLayout;
    .end local v1           #textContainer:Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;
    .end local v2           #paint:Landroid/text/TextPaint;
    :cond_0
    return-object v8
.end method

.method private getPool(Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;",
            ")",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 591
    sget-object v2, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    monitor-enter v2

    .line 592
    :try_start_0
    sget-object v1, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 593
    .local v0, pool:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    if-nez v0, :cond_0

    .line 594
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v0           #pool:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 595
    .restart local v0       #pool:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    sget-object v1, Lcom/google/glass/widget/DynamicSizeTextView;->layoutCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_0
    monitor-exit v2

    .line 598
    return-object v0

    .line 597
    .end local v0           #pool:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reflowWithText(Landroid/util/Pair;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;",
            "Landroid/text/DynamicLayout;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, layout:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;Landroid/text/DynamicLayout;>;"
    const/4 v4, 0x0

    .line 510
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;

    .line 511
    .local v1, textContainer:Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;
    invoke-virtual {v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->length()I

    move-result v0

    .line 512
    .local v0, lengthBeforeChange:I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, p2, v4, v2}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->changeText(Ljava/lang/CharSequence;II)V

    .line 515
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->length()I

    move-result v3

    invoke-static {v2, v1, v4, v0, v3}, Lcom/google/android/glass/hidden/HiddenDynamicLayout;->reflow(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V

    .line 517
    return-void
.end method

.method private setMaximumTextSize()V
    .locals 19

    .prologue
    .line 332
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->cancelTextSizeTask()V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 340
    .local v4, text:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getWidth()I

    move-result v3

    .line 344
    .local v3, width:I
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 347
    .local v8, alignment:Landroid/text/Layout$Alignment;
    new-instance v18, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/DynamicSizeTextView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v3, v2, v9}, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 349
    .local v18, sizingCacheKey:Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    sget-object v2, Lcom/google/glass/widget/DynamicSizeTextView;->sizingCache:Landroid/util/LruCache;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    .line 350
    .local v16, cached:Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    if-eqz v16, :cond_1

    .line 351
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    .line 381
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 383
    .end local v3           #width:I
    .end local v8           #alignment:Landroid/text/Layout$Alignment;
    .end local v16           #cached:Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .end local v18           #sizingCacheKey:Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    :cond_0
    return-void

    .line 354
    .restart local v3       #width:I
    .restart local v8       #alignment:Landroid/text/Layout$Alignment;
    .restart local v16       #cached:Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .restart local v18       #sizingCacheKey:Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/glass/hidden/HiddenTextView;->getTextViewLineSpacingMultiplier(Landroid/widget/TextView;)F

    move-result v5

    .line 356
    .local v5, textViewLineSpacingMultiplier:F
    invoke-static/range {p0 .. p0}, Lcom/google/android/glass/hidden/HiddenTextView;->getTextViewLineSpacingExtra(Landroid/widget/TextView;)F

    move-result v6

    .line 358
    .local v6, textViewLineSpacingExtra:F
    invoke-static/range {p0 .. p0}, Lcom/google/android/glass/hidden/HiddenTextView;->getTextViewIncludeFontPadding(Landroid/widget/TextView;)Z

    move-result v7

    .line 362
    .local v7, textViewIncludeFontPadding:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    if-eqz v2, :cond_2

    .line 364
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    move-object/from16 v2, p0

    .line 365
    invoke-direct/range {v2 .. v8}, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread(ILjava/lang/CharSequence;FFZLandroid/text/Layout$Alignment;)V

    goto :goto_0

    .line 371
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setVisibility(I)V

    move-object/from16 v9, p0

    move-object v10, v4

    move v11, v3

    move v12, v5

    move v13, v6

    move v14, v7

    move-object v15, v8

    .line 372
    invoke-direct/range {v9 .. v15}, Lcom/google/glass/widget/DynamicSizeTextView;->calculateTextSize(Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v17

    .line 375
    .local v17, result:Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->applyTextSize(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    goto :goto_0
.end method

.method private sizeTextOnBackgroundThread(ILjava/lang/CharSequence;FFZLandroid/text/Layout$Alignment;)V
    .locals 8
    .parameter "width"
    .parameter "text"
    .parameter "textViewLineSpacingMultiplier"
    .parameter "textViewLineSpacingExtra"
    .parameter "textViewIncludeFontPadding"
    .parameter "alignment"

    .prologue
    .line 391
    new-instance v0, Lcom/google/glass/widget/DynamicSizeTextView$1;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/DynamicSizeTextView$1;-><init>(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;IFFZLandroid/text/Layout$Alignment;)V

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    .line 428
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textSizeTask:Landroid/os/AsyncTask;

    sget-object v1, Lcom/google/glass/widget/DynamicSizeTextView;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 429
    return-void
.end method


# virtual methods
.method public getTextClipListenerForTest()Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 608
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    .line 609
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    return-object v0
.end method

.method isSizeTextOnBackgroundThread()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 322
    invoke-super/range {p0 .. p5}, Lcom/google/glass/widget/TypophileTextView;->onLayout(ZIIII)V

    .line 324
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    .line 326
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->setMaximumTextSize()V

    .line 328
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/glass/widget/TypophileTextView;->onSizeChanged(IIII)V

    .line 304
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->cancelTextSizeTask()V

    .line 306
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    .line 308
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->requestLayout()V

    .line 310
    :cond_0
    return-void
.end method

.method public setForcedToSmallestSize(Z)V
    .locals 0
    .parameter "isForcedToSmallestSize"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->isForcedToSmallestSize:Z

    .line 268
    return-void
.end method

.method public setShowEllipsis(Z)V
    .locals 0
    .parameter "showEllipsis"

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->showEllipsis:Z

    .line 273
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "text"
    .parameter "type"

    .prologue
    .line 282
    invoke-super {p0, p1, p2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 286
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    if-nez v0, :cond_0

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread:Z

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->cancelTextSizeTask()V

    .line 293
    iget-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    if-nez v0, :cond_1

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/DynamicSizeTextView;->shouldUpdateTextSize:Z

    .line 295
    invoke-virtual {p0}, Lcom/google/glass/widget/DynamicSizeTextView;->requestLayout()V

    .line 297
    :cond_1
    return-void
.end method

.method public setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V
    .locals 0
    .parameter "textClipListener"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/glass/widget/DynamicSizeTextView;->textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    .line 278
    return-void
.end method
