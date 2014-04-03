.class public Lcom/google/glass/widget/MosaicView;
.super Landroid/widget/GridLayout;


# static fields
.field static final synthetic a:Z

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Landroid/util/SparseArray;

.field private static final d:Landroid/util/SparseArray;

.field private static final e:Landroid/util/SparseArray;

.field private static final f:Landroid/util/SparseArray;

.field private static final i:Landroid/os/Handler;


# instance fields
.field private g:Lcom/google/glass/util/x;

.field private final h:Ljava/util/List;

.field private j:Lcom/google/glass/util/aq;

.field private k:I

.field private l:Lcom/google/glass/widget/j;

.field private m:Lcom/google/glass/widget/w;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v1, 0x1

    const-class v0, Lcom/google/glass/widget/MosaicView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/glass/widget/MosaicView;->a:Z

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/MosaicView;->b:Lcom/google/glass/logging/i;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->c:Landroid/util/SparseArray;

    sget-object v0, Lcom/google/glass/widget/MosaicView;->c:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->c:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->c:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->c:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->c:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->c:Landroid/util/SparseArray;

    const/4 v2, 0x6

    sget-object v3, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_6:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->c:Landroid/util/SparseArray;

    const/4 v2, 0x7

    sget-object v3, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_7:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->c:Landroid/util/SparseArray;

    const/16 v2, 0x8

    sget-object v3, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_8:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->d:Landroid/util/SparseArray;

    sget-object v0, Lcom/google/glass/widget/MosaicView;->d:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->d:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->d:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->d:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/glass/widget/MosaicView;->d:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->e:Landroid/util/SparseArray;

    sget-object v0, Lcom/google/glass/widget/MosaicView;->e:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_4_ALT:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->f:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->i:Landroid/os/Handler;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/glass/util/x;

    invoke-direct {v0}, Lcom/google/glass/util/x;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->g:Lcom/google/glass/util/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/glass/util/x;

    invoke-direct {v0}, Lcom/google/glass/util/x;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->g:Lcom/google/glass/util/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/glass/util/x;

    invoke-direct {v0}, Lcom/google/glass/util/x;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->g:Lcom/google/glass/util/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->k:I

    return-void
.end method

.method public static a(II)I
    .locals 1

    if-le p0, p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/widget/MosaicView;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/MosaicView;->k:I

    return v0
.end method

.method private static a(Lcom/google/glass/widget/v;II)Landroid/widget/GridLayout$LayoutParams;
    .locals 3

    iget v0, p0, Lcom/google/glass/widget/v;->a:I

    iget v1, p0, Lcom/google/glass/widget/v;->c:I

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/widget/v;->b:I

    iget v2, p0, Lcom/google/glass/widget/v;->d:I

    invoke-static {v1, v2}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    iget v0, p0, Lcom/google/glass/widget/v;->d:I

    mul-int/2addr v0, p1

    iput v0, v2, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v0, p0, Lcom/google/glass/widget/v;->c:I

    mul-int/2addr v0, p2

    iput v0, v2, Landroid/widget/GridLayout$LayoutParams;->height:I

    return-object v2
.end method

.method private a(IIIIIILandroid/widget/GridLayout$LayoutParams;)V
    .locals 10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an image source and/or a remainingCount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v6, p0, Lcom/google/glass/widget/MosaicView;->l:Lcom/google/glass/widget/j;

    new-instance v0, Lcom/google/glass/widget/t;

    move-object v1, p0

    move v2, p1

    move/from16 v3, p6

    move-object/from16 v4, p7

    move v5, p3

    move v7, p2

    move v8, p4

    move v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/widget/t;-><init>(Lcom/google/glass/widget/MosaicView;IILandroid/widget/GridLayout$LayoutParams;ILcom/google/glass/widget/j;III)V

    invoke-direct {p0, v0}, Lcom/google/glass/widget/MosaicView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/j;Landroid/widget/FrameLayout;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/widget/MosaicView;->a(Lcom/google/glass/widget/j;Landroid/widget/FrameLayout;II)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/j;Landroid/widget/FrameLayout;III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/glass/widget/MosaicView;->a(Lcom/google/glass/widget/j;Landroid/widget/FrameLayout;III)V

    return-void
.end method

.method private static a(Lcom/google/glass/widget/j;Landroid/widget/FrameLayout;II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/google/glass/d/f;->text:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p0, p2}, Lcom/google/glass/widget/j;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "%s +%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "+%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/google/glass/widget/j;Landroid/widget/FrameLayout;III)V
    .locals 6

    sget-object v0, Lcom/google/glass/widget/MosaicView;->b:Lcom/google/glass/logging/i;

    const-string v1, "Creating loading task"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/widget/j;->a(Landroid/content/Context;Landroid/widget/FrameLayout;III)Lcom/google/glass/util/z;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/u;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/u;-><init>(Lcom/google/glass/widget/MosaicView;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/z;->a(Lcom/google/glass/util/ac;)V

    iget-object v1, p0, Lcom/google/glass/widget/MosaicView;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/glass/widget/MosaicView;->g:Lcom/google/glass/util/x;

    invoke-static {p0, v0}, Lcom/google/glass/util/x;->a(Landroid/view/View;Lcom/google/glass/util/z;)V

    return-void
.end method

.method private a(Lcom/google/glass/widget/j;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/glass/widget/j;->a()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/google/glass/widget/MosaicView;->l:Lcom/google/glass/widget/j;

    invoke-direct {p0, p2}, Lcom/google/glass/widget/MosaicView;->a(Z)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->j:Lcom/google/glass/util/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->j:Lcom/google/glass/util/aq;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/aq;->a(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/widget/MosaicView;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Z)V
    .locals 15

    sget-boolean v0, Lcom/google/glass/widget/MosaicView;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->l:Lcom/google/glass/widget/j;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/glass/widget/MosaicView;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->k:I

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->l:Lcom/google/glass/widget/j;

    invoke-interface {v0}, Lcom/google/glass/widget/j;->c()Lcom/google/glass/widget/MosaicView$GroupCountType;

    move-result-object v11

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->l:Lcom/google/glass/widget/j;

    invoke-interface {v0}, Lcom/google/glass/widget/j;->b()I

    move-result v9

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->l:Lcom/google/glass/widget/j;

    invoke-interface {v0}, Lcom/google/glass/widget/j;->a()I

    move-result v12

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/widget/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    if-ne v11, v0, :cond_1

    add-int/lit8 v0, v9, -0x1

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->n:I

    :goto_0
    sget-object v0, Lcom/google/glass/widget/MosaicView;->b:Lcom/google/glass/logging/i;

    const-string v1, "Loading %d images."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/glass/widget/MosaicView;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/google/glass/widget/MosaicView;->a:Z

    if-nez v0, :cond_2

    if-le v9, v12, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :try_start_1
    iput v9, p0, Lcom/google/glass/widget/MosaicView;->n:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    sget-object v0, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    if-ne v11, v0, :cond_a

    add-int/lit8 v0, v9, 0x1

    move v8, v0

    :goto_1
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->l:Lcom/google/glass/widget/j;

    invoke-interface {v0}, Lcom/google/glass/widget/j;->d()I

    move-result v1

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->l:Lcom/google/glass/widget/j;

    invoke-interface {v0}, Lcom/google/glass/widget/j;->e()I

    move-result v2

    const/4 v0, 0x0

    if-le v1, v2, :cond_4

    sget-object v0, Lcom/google/glass/widget/MosaicView;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    move-object v10, v0

    :goto_2
    if-nez v10, :cond_6

    sget-object v0, Lcom/google/glass/widget/MosaicView;->b:Lcom/google/glass/logging/i;

    const-string v1, "BUG: missing mosaic specification for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    if-eqz p1, :cond_5

    sget-object v0, Lcom/google/glass/widget/MosaicView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    :cond_5
    if-nez v0, :cond_9

    sget-object v0, Lcom/google/glass/widget/MosaicView;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    move-object v10, v0

    goto :goto_2

    :cond_6
    iget v0, v10, Lcom/google/glass/widget/MosaicView$MosaicSpec;->columns:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MosaicView;->setColumnCount(I)V

    iget v0, v10, Lcom/google/glass/widget/MosaicView$MosaicSpec;->rows:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MosaicView;->setRowCount(I)V

    iget v0, v10, Lcom/google/glass/widget/MosaicView$MosaicSpec;->columns:I

    div-int v13, v1, v0

    iget v0, v10, Lcom/google/glass/widget/MosaicView$MosaicSpec;->rows:I

    div-int v14, v2, v0

    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->a()V

    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->b()V

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v9, :cond_8

    iget-object v0, v10, Lcom/google/glass/widget/MosaicView$MosaicSpec;->cellSpecs:[Lcom/google/glass/widget/v;

    aget-object v0, v0, v2

    invoke-static {v0, v13, v14}, Lcom/google/glass/widget/MosaicView;->a(Lcom/google/glass/widget/v;II)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v7

    sget-object v1, Lcom/google/glass/widget/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    if-ne v11, v1, :cond_7

    add-int/lit8 v1, v9, -0x1

    if-ne v2, v1, :cond_7

    sub-int v3, v12, v9

    iget v6, v10, Lcom/google/glass/widget/MosaicView$MosaicSpec;->embededRemainingCountLayoutId:I

    :goto_5
    iget v1, p0, Lcom/google/glass/widget/MosaicView;->k:I

    iget v4, v7, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v5, v7, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView;->a(IIIIIILandroid/widget/GridLayout$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, -0x1

    iget v6, v0, Lcom/google/glass/widget/v;->e:I

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    if-ne v11, v0, :cond_3

    iget-object v0, v10, Lcom/google/glass/widget/MosaicView$MosaicSpec;->cellSpecs:[Lcom/google/glass/widget/v;

    add-int/lit8 v1, v8, -0x1

    aget-object v0, v0, v1

    invoke-static {v0, v13, v14}, Lcom/google/glass/widget/MosaicView;->a(Lcom/google/glass/widget/v;II)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v7

    iget v1, p0, Lcom/google/glass/widget/MosaicView;->k:I

    const/4 v2, -0x1

    sub-int v3, v12, v9

    iget v4, v7, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v5, v7, Landroid/widget/GridLayout$LayoutParams;->height:I

    iget v6, v10, Lcom/google/glass/widget/MosaicView$MosaicSpec;->remainingLayoutId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/widget/MosaicView;->a(IIIIIILandroid/widget/GridLayout$LayoutParams;)V

    goto :goto_3

    :cond_9
    move-object v10, v0

    goto/16 :goto_2

    :cond_a
    move v8, v9

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/google/glass/widget/MosaicView;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/MosaicView;->n:I

    return v0
.end method

.method static synthetic c(Lcom/google/glass/widget/MosaicView;)I
    .locals 2

    iget v0, p0, Lcom/google/glass/widget/MosaicView;->n:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/glass/widget/MosaicView;->n:I

    return v0
.end method

.method static synthetic c()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/google/glass/widget/MosaicView;->f:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic d()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/widget/MosaicView;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic d(Lcom/google/glass/widget/MosaicView;)Lcom/google/glass/widget/w;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->m:Lcom/google/glass/widget/w;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/MosaicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lcom/google/glass/d/f;->tag_cell_layout_type:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v1, Lcom/google/glass/d/f;->image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v1, Lcom/google/glass/d/f;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget-object v1, Lcom/google/glass/widget/MosaicView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v4, 0x50

    invoke-direct {v1, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v4, Lcom/google/glass/widget/MosaicView;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->removeAllViews()V

    return-void
.end method

.method public final a(Lcom/google/glass/widget/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/MosaicView;->a(Lcom/google/glass/widget/j;Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/google/glass/util/x;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setCellsLoadedListener(Lcom/google/glass/widget/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/MosaicView;->m:Lcom/google/glass/widget/w;

    return-void
.end method
