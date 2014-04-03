.class public abstract Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
.super Landroid/widget/AdapterView;

# interfaces
.implements Lcom/google/glass/input/InputListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:J

.field private static final c:J


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/database/DataSetObserver;

.field private final D:Ljava/lang/Runnable;

.field private final E:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final F:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private d:Landroid/widget/Adapter;

.field private final e:Lcom/google/glass/sound/SoundManager;

.field private f:I

.field private g:I

.field private h:I

.field private final i:Lcom/google/glass/widget/horizontalscroll/h;

.field private final j:Landroid/util/SparseBooleanArray;

.field private final k:Ljava/util/List;

.field private final l:Ljava/util/List;

.field private final m:Lcom/google/glass/input/ItemScroller;

.field private final n:Lcom/google/glass/input/k;

.field private o:F

.field private p:D

.field private q:F

.field private r:F

.field private s:I

.field private t:F

.field private u:Z

.field private v:Z

.field private w:Z

.field private final x:Z

.field private final y:Landroid/graphics/drawable/Drawable;

.field private z:Lcom/google/glass/widget/horizontalscroll/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a:Lcom/google/glass/logging/i;

    const-wide/16 v0, 0x44c

    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b:J

    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/glass/widget/horizontalscroll/h;

    invoke-direct {v0, v3}, Lcom/google/glass/widget/horizontalscroll/h;-><init>(Lcom/google/glass/widget/horizontalscroll/a;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i:Lcom/google/glass/widget/horizontalscroll/h;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->l:Ljava/util/List;

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->p:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->s:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->t:F

    iput-object v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->z:Lcom/google/glass/widget/horizontalscroll/f;

    iput-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->A:Z

    iput-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->B:Z

    new-instance v0, Lcom/google/glass/widget/horizontalscroll/a;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/a;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->C:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/google/glass/widget/horizontalscroll/b;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/b;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->D:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/glass/widget/horizontalscroll/c;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/c;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->E:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/google/glass/widget/horizontalscroll/d;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/d;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->F:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->a()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e:Lcom/google/glass/sound/SoundManager;

    iput-boolean p4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->x:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/e;->card_sheen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->y:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/google/glass/widget/horizontalscroll/e;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/e;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->n:Lcom/google/glass/input/k;

    new-instance v0, Lcom/google/glass/input/ItemScroller;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->n:Lcom/google/glass/input/k;

    invoke-direct {v0, v1}, Lcom/google/glass/input/ItemScroller;-><init>(Lcom/google/glass/input/k;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m:Lcom/google/glass/input/ItemScroller;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->p:D

    return-wide p1
.end method

.method static synthetic a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;F)F
    .locals 0

    iput p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    return p1
.end method

.method private static a(J)J
    .locals 0

    return-wide p0
.end method

.method static synthetic a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/sound/SoundManager;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method private a(IF)V
    .locals 1

    iput p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->h:I

    iput p2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->B:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->invalidate()V

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    invoke-static {p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->b()V

    sget v0, Lcom/google/glass/d/f;->tag_card_state_manager:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/n;

    invoke-interface {v0, p1}, Lcom/google/glass/widget/horizontalscroll/n;->a(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;II)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x4420

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;II)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(F)F

    move-result v1

    cmpl-float v2, v1, v3

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->x:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e(I)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v2, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_animate_in_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    sget v1, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_animate_scale:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_animate_scale:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(IF)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->B:Z

    return p1
.end method

.method private b(F)F
    .locals 3

    const/high16 v0, 0x43a0

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private b(Landroid/view/View;II)F
    .locals 4

    const/high16 v0, 0x4420

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    mul-float v2, v0, v1

    int-to-float v0, p3

    add-float/2addr v0, v2

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    iget v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    int-to-float v3, p3

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    sub-float/2addr v1, v0

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_animate_translate_x_offset:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v3, p3

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;F)F
    .locals 0

    iput p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q:F

    return p1
.end method

.method private static b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;
    .locals 1

    sget v0, Lcom/google/glass/d/f;->tag_card_state_manager:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/i;

    return-object v0
.end method

.method private b(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-direct {p0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v0

    sget v4, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_4

    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_3

    invoke-direct {p0, p1, v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(ILandroid/view/View;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(ILandroid/view/View;)V

    goto :goto_1
.end method

.method private b(ILandroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->v()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->w()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v2, Lcom/google/glass/d/f;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->x()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-static {p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->a()V

    return-void
.end method

.method private b(IZ)V
    .locals 2

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->A:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->D:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i:Lcom/google/glass/widget/horizontalscroll/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i:Lcom/google/glass/widget/horizontalscroll/h;

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/h;->a(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q()V

    return-void
.end method

.method static synthetic b(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Z)Z

    move-result v0

    return v0
.end method

.method private b(Z)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->B:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->w:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->w:Z

    move v3, v2

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->l()I

    move-result v4

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->w:Z

    or-int/2addr v0, p1

    iput-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->w:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v8, :cond_5

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    sget v6, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v5, v0

    invoke-direct {p0, v5, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(IZ)V

    iget v5, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    int-to-float v0, v0

    add-float/2addr v0, v5

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->p()V

    :cond_3
    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    if-lt v0, v4, :cond_4

    add-int/lit8 v0, v4, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    sub-int v1, v0, v1

    invoke-direct {p0, v0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(IZ)V

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->p()V

    :cond_4
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_9

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v1

    sget v5, Lcom/google/glass/d/f;->tag_horizontal_scroll_item:I

    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v8, :cond_6

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(I)V

    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(I)V

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    sget v6, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(I)V

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_c

    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v5

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v5, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_b

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    if-ne v1, v0, :cond_a

    invoke-static {v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->d()V

    iput v8, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    :cond_a
    invoke-direct {p0, v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->a()V

    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->y()I

    move-result v6

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    div-int/lit8 v1, v6, 0x2

    sub-int/2addr v0, v1

    move v1, v0

    move v0, v2

    :goto_6
    if-ge v0, v6, :cond_d

    iget-object v7, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(I)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u()V

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v4, :cond_e

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    if-eq v0, v8, :cond_13

    :cond_e
    move v0, v3

    :goto_7
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    if-eq v6, v5, :cond_10

    if-eqz v5, :cond_f

    invoke-static {v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->d()V

    :cond_f
    if-eqz v6, :cond_10

    invoke-static {v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->c()V

    :cond_10
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8
    if-ltz v1, :cond_15

    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v0

    sget v7, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    if-ne v1, v0, :cond_11

    if-nez v4, :cond_14

    :cond_11
    move v0, v3

    :goto_9
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->c(I)V

    :cond_12
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8

    :cond_13
    move v0, v2

    goto :goto_7

    :cond_14
    move v0, v2

    goto :goto_9

    :cond_15
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->t()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u()V

    :cond_16
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-ne v0, v6, :cond_18

    move v0, v3

    :goto_a
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_19

    if-nez v4, :cond_19

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    if-ne v1, v8, :cond_19

    move v1, v3

    :goto_b
    if-nez v0, :cond_17

    if-eqz v1, :cond_1a

    :cond_17
    move v0, v3

    :goto_c
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->z:Lcom/google/glass/widget/horizontalscroll/f;

    if-eqz v0, :cond_1c

    move v0, v2

    :goto_d
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->z:Lcom/google/glass/widget/horizontalscroll/f;

    invoke-static {v4}, Lcom/google/glass/widget/horizontalscroll/f;->a(Lcom/google/glass/widget/horizontalscroll/f;)Ljava/lang/Object;

    move-result-object v4

    sget v7, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_id:I

    invoke-virtual {v1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_animate_in_view:I

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->z:Lcom/google/glass/widget/horizontalscroll/f;

    invoke-static {v1, v0}, Lcom/google/glass/widget/horizontalscroll/f;->a(Lcom/google/glass/widget/horizontalscroll/f;I)I

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->z:Lcom/google/glass/widget/horizontalscroll/f;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/glass/widget/horizontalscroll/f;->a(Lcom/google/glass/widget/horizontalscroll/f;Landroid/view/View;)Landroid/view/View;

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    move v0, v2

    goto :goto_a

    :cond_19
    move v1, v2

    goto :goto_b

    :cond_1a
    move v0, v2

    goto :goto_c

    :cond_1b
    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v4, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_animate_in_view:I

    invoke-virtual {v1, v4, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_e

    :cond_1c
    iput-object v9, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->z:Lcom/google/glass/widget/horizontalscroll/f;

    :cond_1d
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->requestLayout()V

    if-ne v5, v6, :cond_1

    move v3, v2

    goto/16 :goto_0

    :cond_1e
    move v0, v2

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    return v0
.end method

.method private c(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->l()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v0, p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already has a parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", convertView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget v1, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recycler must be set, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget v1, Lcom/google/glass/d/f;->tag_card_state_manager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    sget v1, Lcom/google/glass/d/f;->tag_card_state_manager:I

    new-instance v2, Lcom/google/glass/widget/horizontalscroll/i;

    invoke-direct {v2, v0}, Lcom/google/glass/widget/horizontalscroll/i;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    sget v1, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method private c(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->d()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e(I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->removeViewInLayout(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Landroid/view/View;)V

    sget v3, Lcom/google/glass/d/f;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget v1, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    sget v1, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_id:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    sget v1, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_animate_in_view:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    sget v1, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_animate_scale:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    sget v1, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_animate_translate_x_offset:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    goto :goto_0
.end method

.method private d(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    return v0
.end method

.method private e(I)Landroid/widget/ImageView;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->v:Z

    return v0
.end method

.method static synthetic f(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->p:D

    return-wide v0
.end method

.method static synthetic g(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->l()I

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    return v0
.end method

.method static synthetic j(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->B:Z

    return v0
.end method

.method static synthetic k()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic k(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->n()V

    return-void
.end method

.method private l()I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->h:I

    return v0
.end method

.method static synthetic m(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    return v0
.end method

.method private m()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->e()V

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->p()V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i:Lcom/google/glass/widget/horizontalscroll/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i:Lcom/google/glass/widget/horizontalscroll/h;

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/h;->b(I)V

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o()V

    return-void
.end method

.method static synthetic o(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/h;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i:Lcom/google/glass/widget/horizontalscroll/h;

    return-object v0
.end method

.method private o()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->f()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i:Lcom/google/glass/widget/horizontalscroll/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i:Lcom/google/glass/widget/horizontalscroll/h;

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/h;->c(I)V

    :cond_1
    return-void
.end method

.method private p()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->p:D

    return-void
.end method

.method private q()V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Landroid/view/View;II)V

    sget v5, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_animate_in_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private r()I
    .locals 3

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->t:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->s:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j()F

    move-result v0

    const/high16 v1, 0x4000

    const/high16 v2, 0x4120

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->s:I

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->t:F

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->s:I

    goto :goto_0
.end method

.method private t()Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    const v0, 0x7fffffff

    move v2, v1

    move v3, v0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-direct {p0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v0

    sget v5, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v4, :cond_3

    move v1, v0

    :goto_2
    invoke-direct {p0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v0

    sget v5, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v5, v3, v2

    if-eq v0, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    const/4 v0, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private u()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    if-ne v0, v3, :cond_1

    iput v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private v()Landroid/widget/FrameLayout;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method private w()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private static x()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private y()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->z()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static z()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Ljava/lang/Object;)I
.end method

.method public final a(I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(ILandroid/view/View;)Landroid/view/View;
.end method

.method public final a(Lcom/google/glass/widget/horizontalscroll/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i:Lcom/google/glass/widget/horizontalscroll/h;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/horizontalscroll/h;->a(Lcom/google/glass/widget/horizontalscroll/g;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->n()V

    :cond_0
    return-void
.end method

.method public final a(F)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(IFFFFII)Z
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a:Lcom/google/glass/logging/i;

    const-string v2, "onPrepareSwipe while deactivated."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->A:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m:Lcom/google/glass/input/ItemScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/input/ItemScroller;->a(IFFFFII)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a:Lcom/google/glass/logging/i;

    const-string v2, "onSwipe while deactivated."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->A:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/ItemScroller;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(IZ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    if-nez v2, :cond_1

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a:Lcom/google/glass/logging/i;

    const-string v2, "onFingerCountChanged while deactivated."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->A:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v2, p1, p2}, Lcom/google/glass/input/ItemScroller;->a(IZ)Z

    if-eqz p2, :cond_0

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->p()V

    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a:Lcom/google/glass/logging/i;

    const-string v2, "Activating."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    invoke-static {v0}, Lcom/google/glass/f/a;->b(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/widget/horizontalscroll/i;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->c()V

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->n()V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a:Lcom/google/glass/logging/i;

    const-string v2, "Deactivating."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/ItemScroller;->a(Z)Z

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/i;->d()V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/horizontalscroll/i;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    return-void
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q:F

    return v0
.end method

.method public final g()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a:Lcom/google/glass/logging/i;

    const-string v2, "onConfirm while deactivated."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->A:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0}, Lcom/google/glass/input/ItemScroller;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->c()Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e:Lcom/google/glass/sound/SoundManager;

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v4}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v1, v1}, Lcom/google/glass/timeline/c;->a(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZZ)V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final getAdapter()Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/google/glass/d/f;->tag_horizontal_scroll_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    return v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->g:I

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m:Lcom/google/glass/input/ItemScroller;

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q:F

    invoke-virtual {v0, v1}, Lcom/google/glass/input/ItemScroller;->b(F)I

    move-result v1

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    if-lt v1, v0, :cond_1

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->f:I

    if-gt v1, v0, :cond_3

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final i()F
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    return v0
.end method

.method public final isActivated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->u:Z

    return v0
.end method

.method public final j()F
    .locals 3

    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    const v2, 0x3ea8f5c3

    sub-float/2addr v1, v2

    const v2, 0x3f2b851e

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    const/high16 v3, 0x4000

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v4

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v1, v1, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->q()V

    return-void
.end method

.method public final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->C:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->C:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Z)V

    return-void
.end method

.method public final setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->setSelection(IZ)V

    return-void
.end method

.method public final setSelection(IZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->d:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_2
    if-nez p2, :cond_0

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    invoke-direct {p0, v2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(IF)V

    goto :goto_0

    :cond_3
    int-to-float v0, p1

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->o:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->m:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/ItemScroller;->a(I)V

    :cond_4
    if-nez p2, :cond_0

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->r:F

    invoke-direct {p0, v2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(IF)V

    goto :goto_0
.end method

.method public setSuppressViewUpdates(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->v:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Z)V

    :cond_0
    return-void
.end method
