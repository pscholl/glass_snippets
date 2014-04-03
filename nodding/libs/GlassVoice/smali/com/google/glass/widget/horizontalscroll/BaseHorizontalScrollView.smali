.class public abstract Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
.super Landroid/widget/AdapterView;
.source "BaseHorizontalScrollView.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;,
        Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;,
        Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemID:",
        "Ljava/lang/Object;",
        "ItemValue:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Lcom/google/glass/input/InputListener;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIMATION_MIN_ZOOM_OUT:F = 0.5f

.field private static final ANIMATION_SCROLL_INITIAL_DELAY:J = 0x64L

#the value of this static final field might be set in the static constructor
.field private static final ANIMATION_ZOOM_BACK_IN_DURATION_MS:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final ANIMATION_ZOOM_OUT_DURATION:J = 0x0L

.field private static final ANIMATION_ZOOM_OUT_MS_PER_ITEM:F = 0.25f

.field private static final HILARIOUSLY_SLOW_SPLICE_ANIMATION:Z = false

.field private static final MAX_CARD_SPACING_PX:I = 0xa

.field private static final MIN_CARD_SPACING_PX:I = 0x2

.field private static final NUM_VIEWS_TO_LOAD:I = 0x5

.field private static final SCREEN_HEIGHT:I = 0x168

.field private static final SCREEN_WIDTH:I = 0x280

.field private static final SLOW_ANIMATION_MULTIPLIER:J = 0x5L

.field private static final VIEW_INDEX_CARD:I = 0x0

.field private static final VIEW_INDEX_SHEEN:I = 0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private adapter:Landroid/widget/Adapter;

.field private animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView",
            "<TItemID;TItemValue;>.AnimateToItemRequest;"
        }
    .end annotation
.end field

.field private calculatedCardSpacing:I

.field private calculatedCardSpacingScale:F

.field private final cardSheenCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private currentScale:F

.field private currentTranslation:I

.field private dataChangePending:Z

.field private datasetObserver:Landroid/database/DataSetObserver;

.field private final endAnimationFrameUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final focusSoundRunnable:Ljava/lang/Runnable;

.field private final frameLayoutCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private inAnimationFrame:Z

.field private isActivated:Z

.field private isAnimatingInView:Z

.field private final itemScroller:Lcom/google/glass/input/ItemScroller;

.field private final loadedPositions:Landroid/util/SparseBooleanArray;

.field private final positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

.field private scrollVelocity:F

.field private final scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

.field private scrollerPosition:F

.field private scrollerPositionUpdateTime:D

.field private selectedPosition:I

.field private selectedViewIndex:I

.field private final sheenDrawable:Landroid/graphics/drawable/Drawable;

.field private final shouldShowCardSheen:Z

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final startAnimationFrameUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private suppressViewUpdates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 205
    const-wide/16 v0, 0x44c

    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSpliceAnimationDuration(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->ANIMATION_ZOOM_OUT_DURATION:J

    .line 214
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSpliceAnimationDuration(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->ANIMATION_ZOOM_BACK_IN_DURATION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "shouldShowCardSheen"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 384
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 232
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    invoke-direct {v0, v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$1;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    .line 239
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->frameLayoutCache:Ljava/util/List;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->cardSheenCache:Ljava/util/List;

    .line 254
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    .line 257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    .line 268
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculatedCardSpacing:I

    .line 280
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculatedCardSpacingScale:F

    .line 306
    iput-object v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    .line 309
    iput-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isAnimatingInView:Z

    .line 316
    iput-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->inAnimationFrame:Z

    .line 318
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$1;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->datasetObserver:Landroid/database/DataSetObserver;

    .line 331
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$2;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->focusSoundRunnable:Ljava/lang/Runnable;

    .line 341
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$3;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$3;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->startAnimationFrameUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 352
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$4;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$4;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->endAnimationFrameUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 385
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 386
    iput-boolean p4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->shouldShowCardSheen:Z

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->card_sheen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->sheenDrawable:Landroid/graphics/drawable/Drawable;

    .line 388
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$5;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    .line 535
    new-instance v0, Lcom/google/glass/input/ItemScroller;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-direct {v0, v1}, Lcom/google/glass/input/ItemScroller;-><init>(Lcom/google/glass/input/ItemScroller$Scrollable;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    .line 536
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "shouldShowCardSheen"

    .prologue
    .line 368
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "shouldShowCardSheen"

    .prologue
    .line 363
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 364
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->hasData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getItemCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->internalSetSelectedPosition(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateViewsInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentTranslation:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    return v0
.end method

.method static synthetic access$1800(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;IF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->setTranslationAndScale(IF)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onUnsettledInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->inAnimationFrame:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->inAnimationFrame:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->startZoomBackInAnimation(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isAnimatingInView:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculateCardSpacingPx()I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/input/ItemScroller$Scrollable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->translateAndScaleChildren()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    return v0
.end method

.method static synthetic access$600()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->suppressViewUpdates:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D

    return-wide v0
.end method

.method static synthetic access$802(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    return p1
.end method

.method private addChildView(I)V
    .locals 7
    .parameter "position"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v6, 0x0

    .line 1695
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1696
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v4

    .line 1697
    .local v4, view:Landroid/view/View;
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1698
    .local v1, existing:I
    if-ne p1, v1, :cond_1

    .line 1728
    .end local v1           #existing:I
    :cond_0
    :goto_1
    return-void

    .line 1695
    .restart local v1       #existing:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1706
    .end local v1           #existing:I
    .end local v4           #view:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_4

    .line 1707
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v4

    .line 1708
    .restart local v4       #view:Landroid/view/View;
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1709
    .restart local v1       #existing:I
    if-le v1, p1, :cond_3

    .line 1712
    invoke-direct {p0, p1, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->loadView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 1713
    if-eqz v4, :cond_0

    .line 1714
    invoke-direct {p0, v2, v4}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->constructFrame(ILandroid/view/View;)V

    goto :goto_1

    .line 1706
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1723
    .end local v1           #existing:I
    .end local v4           #view:Landroid/view/View;
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->loadView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 1724
    .restart local v4       #view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1725
    const/4 v0, -0x1

    .line 1726
    .local v0, endOfList:I
    const/4 v5, -0x1

    invoke-direct {p0, v5, v4}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->constructFrame(ILandroid/view/View;)V

    goto :goto_1
.end method

.method private addScaleAnimation(Landroid/animation/ValueAnimator;FF)V
    .locals 2
    .parameter "animator"
    .parameter "fromValue"
    .parameter "toValue"

    .prologue
    .line 1248
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    sub-float v0, p3, p2

    .line 1249
    .local v0, diff:F
    new-instance v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;FF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1256
    return-void
.end method

.method private static addTagAnimator(Landroid/animation/ValueAnimator;Landroid/view/View;IFF)V
    .locals 2
    .parameter "animator"
    .parameter "view"
    .parameter "tagKey"
    .parameter "beginningValue"
    .parameter "finalValue"

    .prologue
    .line 1231
    sub-float v0, p4, p3

    .line 1232
    .local v0, totalChange:F
    new-instance v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;-><init>(Landroid/view/View;IFF)V

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1239
    return-void
.end method

.method private addTranslateAnimation(Landroid/animation/ValueAnimator;FF)V
    .locals 2
    .parameter "animator"
    .parameter "fromValue"
    .parameter "toValue"

    .prologue
    .line 1265
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    sub-float v0, p3, p2

    .line 1266
    .local v0, diff:F
    new-instance v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$11;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$11;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;FF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1273
    return-void
.end method

.method private animateTo(I)V
    .locals 6
    .parameter "position"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/high16 v5, 0x3f00

    .line 1113
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1114
    .local v0, moveToPositionAnimator:Landroid/animation/ValueAnimator;
    sget-wide v2, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->ANIMATION_ZOOM_OUT_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1115
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1116
    sget-object v2, Lcom/google/glass/widget/horizontalscroll/EaseInOutQuartInterpolator;->instance:Lcom/google/glass/widget/horizontalscroll/EaseInOutQuartInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1118
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->startAnimationFrameUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1122
    iget v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    int-to-float v3, p1

    sub-float/2addr v3, v5

    invoke-direct {p0, v0, v2, v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addTranslateAnimation(Landroid/animation/ValueAnimator;FF)V

    .line 1124
    const/high16 v2, 0x3f80

    int-to-float v3, p1

    iget v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3e80

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 1126
    .local v1, zoomOutAmount:F
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1127
    const v2, 0x3ea8f5c3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1128
    iget v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    invoke-direct {p0, v0, v2, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addScaleAnimation(Landroid/animation/ValueAnimator;FF)V

    .line 1130
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->endAnimationFrameUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1132
    new-instance v2, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$6;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$6;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1138
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isAnimatingInView:Z

    .line 1139
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1140
    return-void

    .line 1113
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private calculateAbsoluteLeft(F)F
    .locals 3
    .parameter "relativeLeft"

    .prologue
    .line 1355
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/high16 v0, 0x43a0

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private calculateCardSpacingPx()I
    .locals 3

    .prologue
    .line 1375
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    iget v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculatedCardSpacingScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1376
    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculatedCardSpacing:I

    .line 1385
    :goto_0
    return v1

    .line 1381
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getZoomOutFactor()F

    move-result v0

    .line 1382
    .local v0, howFarZoomedOut:F
    const/high16 v1, 0x4000

    const/high16 v2, 0x4120

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculatedCardSpacing:I

    .line 1384
    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    iput v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculatedCardSpacingScale:F

    .line 1385
    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculatedCardSpacing:I

    goto :goto_0
.end method

.method private calculateRelativeLeft(Landroid/view/View;II)F
    .locals 7
    .parameter "view"
    .parameter "index"
    .parameter "cardSpacingPx"

    .prologue
    .line 1360
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/high16 v4, 0x4420

    iget v5, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    mul-float v1, v4, v5

    .line 1361
    .local v1, cardWidthPx:F
    int-to-float v4, p3

    add-float/2addr v4, v1

    iget v5, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    iget v6, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v2, v4, v5

    .line 1363
    .local v2, periodicOffset:F
    iget v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p3

    add-float/2addr v5, v1

    mul-float/2addr v4, v5

    sub-float v3, v4, v2

    .line 1365
    .local v3, relLeft:F
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_translate_x_offset:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1367
    .local v0, animateTranslateXOffset:Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    int-to-float v5, p3

    add-float/2addr v5, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1370
    :cond_0
    return v3
.end method

.method private constructFrame(ILandroid/view/View;)V
    .locals 4
    .parameter "index"
    .parameter "card"

    .prologue
    .line 1732
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->createFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1735
    .local v0, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1738
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->createCardSheen()Landroid/widget/ImageView;

    move-result-object v1

    .line 1739
    .local v1, sheen:Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1740
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1743
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1746
    invoke-static {}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1749
    invoke-direct {p0, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onLoad()V

    .line 1750
    return-void
.end method

.method private createCardSheen()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 1763
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->cardSheenCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1764
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1770
    .local v0, sheen:Landroid/widget/ImageView;
    :goto_0
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->sheenDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1771
    return-object v0

    .line 1766
    .end local v0           #sheen:Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->cardSheenCache:Ljava/util/List;

    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->cardSheenCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #sheen:Landroid/widget/ImageView;
    goto :goto_0
.end method

.method private createFrame()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 1754
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->frameLayoutCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1755
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1757
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->frameLayoutCache:Ljava/util/List;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->frameLayoutCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method private getCardSheen(I)Landroid/widget/ImageView;
    .locals 2
    .parameter "index"

    .prologue
    .line 1897
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private static getDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1901
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getItemCount()I
    .locals 1

    .prologue
    .line 651
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    .line 652
    const/4 v0, 0x0

    .line 654
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method private getNumViewsToLoadInternal()I
    .locals 2

    .prologue
    .line 1906
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getNumViewsToLoad()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getSpliceAnimationDuration(J)J
    .locals 0
    .parameter "duration"

    .prologue
    .line 1882
    return-wide p0
.end method

.method private getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;
    .locals 1
    .parameter "view"

    .prologue
    .line 1887
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    sget v0, Lcom/google/glass/common/R$id;->tag_card_state_manager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    return-object v0
.end method

.method private hasData()Z
    .locals 1

    .prologue
    .line 671
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

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

.method private internalSetSelectedPosition(IZ)V
    .locals 2
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 943
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    if-eq p1, v0, :cond_1

    .line 945
    iput p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    .line 948
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isAnimatingInView:Z

    if-nez v0, :cond_0

    .line 949
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->focusSoundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 953
    :cond_0
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onFocused(I)V

    .line 956
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->onFocused(I)V

    .line 960
    :cond_1
    return-void
.end method

.method private loadView(ILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 1825
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    .line 1826
    .local v0, view:Landroid/view/View;
    if-ltz p1, :cond_3

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 1827
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getViewForPosition(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1828
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    if-eq v0, p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1832
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

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", convertView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1837
    :cond_0
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1838
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recycler must be set, position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1841
    :cond_1
    sget v1, Lcom/google/glass/common/R$id;->tag_card_state_manager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1843
    sget v1, Lcom/google/glass/common/R$id;->tag_card_state_manager:I

    new-instance v2, Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    invoke-direct {v2, v0}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1847
    :cond_2
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1849
    :cond_3
    return-object v0
.end method

.method private onSettledInternal()V
    .locals 2

    .prologue
    .line 862
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onSettled()V

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onSettled()V

    .line 870
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->resetScrollVelocity()V

    .line 873
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->onSettled(I)V

    .line 876
    :cond_1
    return-void
.end method

.method private onUnsettledInternal()V
    .locals 2

    .prologue
    .line 890
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onUnsettled()V

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onUnsettled()V

    .line 898
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->onUnsettled(I)V

    .line 901
    :cond_1
    return-void
.end method

.method private removeChildView(I)V
    .locals 5
    .parameter "index"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v4, 0x0

    .line 1776
    iget v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    if-ne p1, v3, :cond_1

    .line 1779
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onUnfocus()V

    .line 1780
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    .line 1790
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v0

    .line 1791
    .local v0, card:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCardSheen(I)Landroid/widget/ImageView;

    move-result-object v2

    .line 1792
    .local v2, sheen:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1793
    .local v1, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1794
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->removeViewInLayout(Landroid/view/View;)V

    .line 1797
    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->unloadView(Landroid/view/View;)V

    .line 1800
    sget v3, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1803
    sget v3, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 1804
    sget v3, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_id:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 1807
    sget v3, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_in_view:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 1808
    sget v3, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_scale:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 1809
    sget v3, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_translate_x_offset:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 1812
    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->frameLayoutCache:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1815
    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->cardSheenCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1816
    return-void

    .line 1782
    .end local v0           #card:Landroid/view/View;
    .end local v1           #frame:Landroid/widget/FrameLayout;
    .end local v2           #sheen:Landroid/widget/ImageView;
    :cond_1
    iget v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    if-ge p1, v3, :cond_0

    .line 1786
    iget v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    goto :goto_0
.end method

.method private resetScrollVelocity()V
    .locals 2

    .prologue
    .line 1037
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    .line 1038
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D

    .line 1039
    return-void
.end method

.method private setTranslationAndScale(IF)V
    .locals 1
    .parameter "translation"
    .parameter "scale"

    .prologue
    .line 841
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iput p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentTranslation:I

    .line 842
    iput p2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    .line 844
    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->inAnimationFrame:Z

    if-eqz v0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->invalidate()V

    .line 850
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->translateAndScaleChildren()V

    goto :goto_0
.end method

.method private sortCards()Z
    .locals 6

    .prologue
    .line 1643
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1644
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 1645
    const/4 v0, 0x0

    .line 1649
    .local v0, adjusted:Z
    const v2, 0x7fffffff

    .line 1650
    .local v2, firstPosition:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1651
    invoke-virtual {p0, v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1650
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1659
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 1661
    :goto_2
    invoke-virtual {p0, v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v5, v2, v3

    if-eq v4, v5, :cond_1

    .line 1662
    invoke-virtual {p0, v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 1663
    const/4 v0, 0x1

    goto :goto_2

    .line 1659
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1669
    .end local v0           #adjusted:Z
    .end local v2           #firstPosition:I
    .end local v3           #i:I
    :cond_2
    const/4 v0, 0x0

    :cond_3
    return v0
.end method

.method private startZoomBackInAnimation(I)V
    .locals 9
    .parameter "position"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 1146
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1147
    .local v2, showItemAnimation:Landroid/animation/ValueAnimator;
    sget-wide v4, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->ANIMATION_ZOOM_BACK_IN_DURATION_MS:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1148
    new-instance v4, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;

    invoke-direct {v4, p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1171
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->startAnimationFrameUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1174
    iget v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    invoke-direct {p0, v2, v4, v7}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addScaleAnimation(Landroid/animation/ValueAnimator;FF)V

    .line 1178
    iget v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    int-to-float v5, p1

    invoke-direct {p0, v2, v4, v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addTranslateAnimation(Landroid/animation/ValueAnimator;FF)V

    .line 1180
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    if-eqz v4, :cond_1

    .line 1181
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->bindedViewForItem:Landroid/view/View;
    invoke-static {v4}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->access$2300(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1182
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->bindedViewForItem:Landroid/view/View;
    invoke-static {v4}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->access$2300(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)Landroid/view/View;

    move-result-object v0

    .line 1184
    .local v0, animateInView:Landroid/view/View;
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_scale:I

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1185
    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1186
    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1187
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    new-instance v4, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;

    invoke-direct {v4, p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1208
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->viewPosition:I
    invoke-static {v4}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->access$2600(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1209
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1210
    .local v3, view:Landroid/view/View;
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_translate_x_offset:I

    invoke-static {v2, v3, v4, v6, v7}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addTagAnimator(Landroid/animation/ValueAnimator;Landroid/view/View;IFF)V

    .line 1208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1214
    .end local v0           #animateInView:Landroid/view/View;
    .end local v1           #i:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    sget-object v4, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Never found the view to animate in.  Just zooming in now"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1217
    :cond_1
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->endAnimationFrameUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1218
    sget-object v4, Lcom/google/glass/widget/horizontalscroll/EaseInOutQuartInterpolator;->instance:Lcom/google/glass/widget/horizontalscroll/EaseInOutQuartInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1219
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1220
    return-void

    .line 1146
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private translateAndScaleChild(Landroid/view/View;II)V
    .locals 7
    .parameter "view"
    .parameter "index"
    .parameter "cardSpacingPx"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v6, 0x0

    const/high16 v5, 0x4420

    .line 1313
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculateRelativeLeft(Landroid/view/View;II)F

    move-result v1

    .line 1316
    .local v1, relLeft:F
    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculateAbsoluteLeft(F)F

    move-result v0

    .line 1317
    .local v0, absLeft:F
    cmpl-float v4, v0, v5

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    mul-float/2addr v4, v5

    neg-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    .line 1318
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1342
    :goto_0
    iget-boolean v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->shouldShowCardSheen:Z

    if-eqz v4, :cond_1

    .line 1343
    invoke-direct {p0, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCardSheen(I)Landroid/widget/ImageView;

    move-result-object v3

    .line 1344
    .local v3, sheen:Landroid/widget/ImageView;
    iget v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 1345
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1346
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getZoomOutFactor()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1351
    .end local v3           #sheen:Landroid/widget/ImageView;
    :cond_1
    :goto_1
    return-void

    .line 1321
    :cond_2
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_in_view:I

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1324
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 1329
    iget v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    .line 1332
    .local v2, scaleForThisView:F
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_scale:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1333
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_scale:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1337
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1338
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 1348
    .end local v2           #scaleForThisView:F
    .restart local v3       #sheen:Landroid/widget/ImageView;
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private translateAndScaleChildren()V
    .locals 7

    .prologue
    .line 1298
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculateCardSpacingPx()I

    move-result v0

    .line 1299
    .local v0, cardSpacingPx:I
    const/4 v4, 0x0

    .line 1300
    .local v4, viewPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1301
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1302
    .local v3, view:Landroid/view/View;
    invoke-direct {p0, v3, v4, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->translateAndScaleChild(Landroid/view/View;II)V

    .line 1305
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_in_view:I

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    .line 1306
    add-int/lit8 v4, v4, 0x1

    .line 1300
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1309
    .end local v3           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private unloadView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v4, -0x1

    .line 1859
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onUnload()V

    .line 1860
    sget v2, Lcom/google/glass/common/R$id;->tag_card_state_manager:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1863
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1864
    .local v0, position:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 1866
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1869
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/horizontalscroll/ViewRecycler;

    .line 1871
    .local v1, viewRecycler:Lcom/google/glass/widget/horizontalscroll/ViewRecycler;
    invoke-interface {v1, p1}, Lcom/google/glass/widget/horizontalscroll/ViewRecycler;->recycleView(Landroid/view/View;)V

    .line 1872
    return-void

    .line 1865
    .end local v1           #viewRecycler:Lcom/google/glass/widget/horizontalscroll/ViewRecycler;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateSelectedViewIndex()V
    .locals 5

    .prologue
    .line 1677
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    .line 1678
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1679
    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1680
    .local v2, position:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    if-ne v3, v4, :cond_1

    .line 1681
    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    .line 1685
    .end local v2           #position:Ljava/lang/Integer;
    :cond_0
    return-void

    .line 1678
    .restart local v2       #position:Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateViewsInternal(Z)Z
    .locals 21
    .parameter "isDataChange"

    .prologue
    .line 1431
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 1435
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->suppressViewUpdates:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->inAnimationFrame:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1436
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->dataChangePending:Z

    move/from16 v18, v0

    or-int v18, v18, p1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->dataChangePending:Z

    .line 1437
    const/16 v18, 0x0

    .line 1634
    :goto_0
    return v18

    .line 1441
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getItemCount()I

    move-result v8

    .line 1444
    .local v8, itemCount:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->dataChangePending:Z

    move/from16 v18, v0

    or-int p1, p1, v18

    .line 1445
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->dataChangePending:Z

    .line 1447
    if-eqz p1, :cond_b

    .line 1451
    const/4 v5, 0x0

    .line 1452
    .local v5, foundCurrentItem:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_2

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v15

    .line 1456
    .local v15, selectedItem:Ljava/lang/Object;,"TItemValue;"
    if-eqz v15, :cond_2

    .line 1457
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->findItemPosition(Ljava/lang/Object;)I

    move-result v11

    .line 1458
    .local v11, position:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    const/4 v5, 0x1

    .line 1459
    :goto_1
    if-eqz v5, :cond_2

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v18

    sget v19, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1464
    .local v3, currentPosition:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    if-eq v11, v0, :cond_2

    .line 1467
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v4, v11, v18

    .line 1468
    .local v4, delta:I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->internalSetSelectedPosition(IZ)V

    .line 1469
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    .line 1471
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->resetScrollVelocity()V

    .line 1479
    .end local v3           #currentPosition:Ljava/lang/Integer;
    .end local v4           #delta:I
    .end local v11           #position:I
    .end local v15           #selectedItem:Ljava/lang/Object;,"TItemValue;"
    :cond_2
    if-nez v5, :cond_3

    .line 1480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v0, v8, :cond_3

    .line 1481
    const/16 v18, 0x0

    add-int/lit8 v19, v8, -0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1482
    .restart local v11       #position:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    move/from16 v18, v0

    sub-int v4, v11, v18

    .line 1483
    .restart local v4       #delta:I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->internalSetSelectedPosition(IZ)V

    .line 1484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    move/from16 v18, v0

    int-to-float v0, v4

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    .line 1486
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->resetScrollVelocity()V

    .line 1492
    .end local v4           #delta:I
    .end local v11           #position:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1493
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v18

    add-int/lit8 v6, v18, -0x1

    .local v6, i:I
    :goto_2
    if-ltz v6, :cond_8

    .line 1494
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v17

    .line 1495
    .local v17, view:Landroid/view/View;
    sget v18, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 1496
    .local v7, item:Ljava/lang/Object;,"TItemValue;"
    if-eqz v7, :cond_7

    .line 1497
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->findItemPosition(Ljava/lang/Object;)I

    move-result v11

    .line 1498
    .restart local v11       #position:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_5

    .line 1501
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->removeChildView(I)V

    .line 1493
    .end local v11           #position:I
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1458
    .end local v6           #i:I
    .end local v7           #item:Ljava/lang/Object;,"TItemValue;"
    .end local v17           #view:Landroid/view/View;
    .restart local v11       #position:I
    .restart local v15       #selectedItem:Ljava/lang/Object;,"TItemValue;"
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1505
    .end local v15           #selectedItem:Ljava/lang/Object;,"TItemValue;"
    .restart local v6       #i:I
    .restart local v7       #item:Ljava/lang/Object;,"TItemValue;"
    .restart local v17       #view:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1508
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->removeChildView(I)V

    goto :goto_3

    .line 1512
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1513
    sget v18, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_3

    .line 1520
    .end local v11           #position:I
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->removeChildView(I)V

    goto :goto_3

    .line 1525
    .end local v7           #item:Ljava/lang/Object;,"TItemValue;"
    .end local v17           #view:Landroid/view/View;
    :cond_8
    const/4 v6, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_b

    .line 1526
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v17

    .line 1527
    .restart local v17       #view:Landroid/view/View;
    sget v18, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1530
    .restart local v11       #position:I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->loadView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v13

    .line 1533
    .local v13, rebindView:Landroid/view/View;
    move-object/from16 v0, v17

    if-eq v0, v13, :cond_a

    .line 1536
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v6, v0, :cond_9

    .line 1541
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onUnfocus()V

    .line 1542
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    .line 1544
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->unloadView(Landroid/view/View;)V

    .line 1547
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1548
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onLoad()V

    .line 1525
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1554
    .end local v5           #foundCurrentItem:Z
    .end local v6           #i:I
    .end local v11           #position:I
    .end local v13           #rebindView:Landroid/view/View;
    .end local v17           #view:Landroid/view/View;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    .line 1557
    .local v12, previousSelectedView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1558
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->hasData()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1559
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getNumViewsToLoadInternal()I

    move-result v10

    .line 1560
    .local v10, numViewsToLoad:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    move/from16 v18, v0

    div-int/lit8 v19, v10, 0x2

    sub-int v11, v18, v19

    .line 1561
    .restart local v11       #position:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_5
    if-ge v6, v10, :cond_c

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1563
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addChildView(I)V

    .line 1564
    add-int/lit8 v11, v11, 0x1

    .line 1561
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1569
    .end local v6           #i:I
    .end local v10           #numViewsToLoad:I
    .end local v11           #position:I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateSelectedViewIndex()V

    .line 1572
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v18

    if-eqz v18, :cond_d

    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    :cond_d
    const/16 v18, 0x1

    :goto_6
    invoke-static/range {v18 .. v18}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 1577
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 1578
    .local v9, nextSelectedView:Landroid/view/View;
    if-eq v9, v12, :cond_f

    .line 1579
    if-eqz v12, :cond_e

    .line 1580
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onUnfocus()V

    .line 1582
    :cond_e
    if-eqz v9, :cond_f

    .line 1583
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onFocus()V

    .line 1589
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v18

    add-int/lit8 v6, v18, -0x1

    .restart local v6       #i:I
    :goto_7
    if-ltz v6, :cond_14

    .line 1590
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v17

    .line 1591
    .restart local v17       #view:Landroid/view/View;
    sget v18, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1592
    .local v11, position:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->loadedPositions:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    if-nez v18, :cond_11

    .line 1595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v6, v0, :cond_10

    if-nez v8, :cond_13

    :cond_10
    const/16 v18, 0x1

    :goto_8
    invoke-static/range {v18 .. v18}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 1596
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->removeChildView(I)V

    .line 1589
    :cond_11
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 1572
    .end local v6           #i:I
    .end local v9           #nextSelectedView:Landroid/view/View;
    .end local v11           #position:Ljava/lang/Integer;
    .end local v17           #view:Landroid/view/View;
    :cond_12
    const/16 v18, 0x0

    goto :goto_6

    .line 1595
    .restart local v6       #i:I
    .restart local v9       #nextSelectedView:Landroid/view/View;
    .restart local v11       #position:Ljava/lang/Integer;
    .restart local v17       #view:Landroid/view/View;
    :cond_13
    const/16 v18, 0x0

    goto :goto_8

    .line 1601
    .end local v11           #position:Ljava/lang/Integer;
    .end local v17           #view:Landroid/view/View;
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->sortCards()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1604
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateSelectedViewIndex()V

    .line 1608
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v0, v9, :cond_17

    const/16 v16, 0x1

    .line 1609
    .local v16, stayedOnSelectedView:Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_18

    if-nez v8, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    const/4 v14, 0x1

    .line 1611
    .local v14, removedAllViews:Z
    :goto_a
    if-nez v16, :cond_16

    if-eqz v14, :cond_19

    :cond_16
    const/16 v18, 0x1

    :goto_b
    invoke-static/range {v18 .. v18}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 1615
    const/4 v6, 0x0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_1c

    .line 1616
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v2

    .line 1617
    .local v2, card:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    move-object/from16 v18, v0

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->itemId:Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->access$2800(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)Ljava/lang/Object;

    move-result-object v18

    sget v19, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_id:I

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 1618
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    sget v19, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_in_view:I

    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->viewPosition:I
    invoke-static {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->access$2602(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;I)I

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    #setter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->bindedViewForItem:Landroid/view/View;
    invoke-static/range {v18 .. v19}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->access$2302(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;Landroid/view/View;)Landroid/view/View;

    .line 1615
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 1608
    .end local v2           #card:Landroid/view/View;
    .end local v14           #removedAllViews:Z
    .end local v16           #stayedOnSelectedView:Z
    :cond_17
    const/16 v16, 0x0

    goto :goto_9

    .line 1609
    .restart local v16       #stayedOnSelectedView:Z
    :cond_18
    const/4 v14, 0x0

    goto :goto_a

    .line 1611
    .restart local v14       #removedAllViews:Z
    :cond_19
    const/16 v18, 0x0

    goto :goto_b

    .line 1622
    .restart local v2       #card:Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    sget v19, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_in_view:I

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_d

    .line 1627
    .end local v2           #card:Landroid/view/View;
    :cond_1b
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    .line 1631
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->requestLayout()V

    .line 1634
    if-eq v12, v9, :cond_1d

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public final activate()V
    .locals 6

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v5, 0x0

    .line 568
    sget-object v2, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Activating."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 570
    iget-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 573
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onPreActivate()V

    .line 576
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    .line 579
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 580
    .local v0, childCount:I
    if-lez v0, :cond_1

    .line 583
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 584
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onLoad()V

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onFocus()V

    .line 591
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V

    .line 595
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    .line 596
    return-void
.end method

.method public final addPositionListener(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V
    .locals 1
    .parameter "positionListener"

    .prologue
    .line 550
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->addPositionListener(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 551
    return-void
.end method

.method public animateTo(Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemID;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    .local p1, itemId:Ljava/lang/Object;,"TItemID;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1087
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 1088
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->SP_AN:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1090
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->setSelection(Ljava/lang/Object;Z)Z

    move-result v1

    .line 1105
    :cond_0
    :goto_0
    return v1

    .line 1093
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->findIdPosition(Ljava/lang/Object;)I

    move-result v0

    .line 1094
    .local v0, position:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1098
    new-instance v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;-><init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    .line 1103
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    .line 1104
    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateTo(I)V

    move v1, v2

    .line 1105
    goto :goto_0
.end method

.method public final deactivate()V
    .locals 5

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v4, 0x0

    .line 608
    sget-object v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Deactivating."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 610
    iget-boolean v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 613
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onPreDeactivate()V

    .line 616
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v1, v4}, Lcom/google/glass/input/ItemScroller;->snapToNearest(Z)Z

    .line 623
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onUnfocus()V

    .line 629
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 630
    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getStateManager(Landroid/view/View;)Lcom/google/glass/widget/horizontalscroll/CardStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/horizontalscroll/CardStateManager;->onUnload()V

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    .end local v0           #i:I
    :cond_0
    iput-boolean v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    .line 637
    return-void
.end method

.method public abstract findIdPosition(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemID;)I"
        }
    .end annotation
.end method

.method public abstract findItemPosition(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemValue;)I"
        }
    .end annotation
.end method

.method public final getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 646
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getAnticipatedSettlePosition()I
    .locals 4

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v3, 0x0

    .line 1043
    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 1044
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    .line 1049
    :goto_0
    return v0

    .line 1046
    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    iget v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    invoke-virtual {v1, v2}, Lcom/google/glass/input/ItemScroller;->getAnticipatedSettlePosition(F)I

    move-result v0

    .line 1047
    .local v0, position:I
    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    if-gt v0, v1, :cond_3

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getCard(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 1892
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHomePosition()I
.end method

.method public final getItemForChildAt(I)Ljava/lang/Object;
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItemValue;"
        }
    .end annotation

    .prologue
    .line 1021
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v0

    .line 1022
    .local v0, card:Landroid/view/View;
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final getItemViewForChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 1015
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getNumViewsToLoad()I
    .locals 1

    .prologue
    .line 1911
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x5

    return v0
.end method

.method public final getScrollPosition()F
    .locals 1

    .prologue
    .line 1027
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    return v0
.end method

.method public final getScrollVelocity()F
    .locals 1

    .prologue
    .line 1032
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F

    return v0
.end method

.method public getScrollable()Lcom/google/glass/input/ItemScroller$Scrollable;
    .locals 1

    .prologue
    .line 540
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItemValue;"
        }
    .end annotation

    .prologue
    .line 1058
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1059
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1060
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1062
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedItemParent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItemValue;"
        }
    .end annotation

    .prologue
    .line 1074
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 994
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    return v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    .line 1001
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-object v0

    .line 1006
    :cond_1
    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    if-ltz v1, :cond_0

    .line 1010
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedViewIndex:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getCard(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getViewForPosition(ILandroid/view/View;)Landroid/view/View;
.end method

.method public getZoomOutFactor()F
    .locals 3

    .prologue
    .line 1395
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    const v2, 0x3ea8f5c3

    sub-float/2addr v1, v2

    const v2, 0x3f2b851e

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getZoomScale()F
    .locals 1

    .prologue
    .line 1390
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    return v0
.end method

.method public final isActivated()Z
    .locals 1

    .prologue
    .line 563
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget-boolean v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    return v0
.end method

.method public isSettled()Z
    .locals 2

    .prologue
    .line 855
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

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

.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 807
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfirm()Z
    .locals 6

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 752
    iget-boolean v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v4, :cond_1

    .line 753
    sget-object v3, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "onConfirm while deactivated."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    :cond_0
    :goto_0
    return v2

    .line 757
    :cond_1
    iget-boolean v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isAnimatingInView:Z

    if-nez v4, :cond_0

    .line 762
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v4}, Lcom/google/glass/input/ItemScroller;->onConfirm()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 763
    goto :goto_0

    .line 771
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/horizontalscroll/Card;

    .line 775
    .local v1, selectedView:Lcom/google/glass/widget/horizontalscroll/Card;
    invoke-interface {v1}, Lcom/google/glass/widget/horizontalscroll/Card;->getBundleEntryPoint()Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v0

    .line 776
    .local v0, bundleEntryPoint:Lcom/google/glass/timeline/TimelineItemId;
    if-eqz v0, :cond_3

    .line 777
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 780
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0, v2, v2}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToBundle(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZZ)V

    move v2, v3

    .line 782
    goto :goto_0

    .line 785
    :cond_3
    invoke-interface {v1}, Lcom/google/glass/widget/horizontalscroll/Card;->onConfirm()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 786
    invoke-interface {v1}, Lcom/google/glass/widget/horizontalscroll/Card;->shouldSuppressSingleTapSound()Z

    move-result v2

    if-nez v2, :cond_4

    .line 791
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    :cond_4
    move v2, v3

    .line 793
    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 812
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final onFingerCountChanged(IZ)Z
    .locals 4
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 725
    iget-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v2, :cond_1

    .line 726
    sget-object v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onFingerCountChanged while deactivated."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    :cond_0
    :goto_0
    return v0

    .line 730
    :cond_1
    iget-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isAnimatingInView:Z

    if-nez v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v2, p1, p2}, Lcom/google/glass/input/ItemScroller;->onFingerCountChanged(IZ)Z

    .line 737
    if-eqz p2, :cond_0

    if-ne p1, v1, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->resetScrollVelocity()V

    move v0, v1

    .line 739
    goto :goto_0
.end method

.method protected onFocused(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 964
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/high16 v6, 0x4000

    const/4 v7, 0x0

    .line 1277
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1279
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1280
    .local v4, widthMeasureSpec:I
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1282
    .local v0, heightMeasureSpec:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1283
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1286
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1287
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1290
    .end local v3           #view:Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->translateAndScaleChildren()V

    .line 1291
    return-void
.end method

.method protected onPreActivate()V
    .locals 0

    .prologue
    .line 601
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    return-void
.end method

.method protected onPreDeactivate()V
    .locals 0

    .prologue
    .line 642
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    return-void
.end method

.method public final onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    .line 680
    iget-boolean v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v1, :cond_1

    .line 681
    sget-object v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onPrepareSwipe while deactivated."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    :cond_0
    :goto_0
    return v0

    .line 685
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isAnimatingInView:Z

    if-nez v1, :cond_0

    .line 689
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/input/ItemScroller;->onPrepareSwipe(IFFFFII)Z

    .line 691
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onSettled()V
    .locals 0

    .prologue
    .line 880
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    return-void
.end method

.method public final onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 4
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    .line 702
    iget-boolean v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v1, :cond_1

    .line 703
    sget-object v1, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onSwipe while deactivated."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    :cond_0
    :goto_0
    return v0

    .line 707
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isAnimatingInView:Z

    if-nez v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/ItemScroller;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onUnsettled()V
    .locals 0

    .prologue
    .line 905
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    return-void
.end method

.method public onVerticalHeadScroll(F)Z
    .locals 1
    .parameter "delta"

    .prologue
    .line 802
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final removePositionListener(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V
    .locals 1
    .parameter "positionListener"

    .prologue
    .line 557
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->positionListeners:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListenerCollection;->removePositionListener(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 558
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 660
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->datasetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 663
    :cond_0
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    .line 664
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->datasetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 667
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    .line 668
    return-void
.end method

.method public final setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 909
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v0, 0x0

    .line 910
    .local v0, animate:Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->setSelection(IZ)V

    .line 911
    return-void
.end method

.method public final setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v2, 0x0

    .line 920
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->hasData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->adapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 924
    :cond_2
    if-nez p2, :cond_0

    .line 925
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    invoke-direct {p0, v2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->setTranslationAndScale(IF)V

    goto :goto_0

    .line 930
    :cond_3
    int-to-float v0, p1

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 933
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->itemScroller:Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/ItemScroller;->setItem(I)V

    .line 936
    :cond_4
    if-nez p2, :cond_0

    .line 937
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F

    invoke-direct {p0, v2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->setTranslationAndScale(IF)V

    goto :goto_0
.end method

.method public final setSelection(Ljava/lang/Object;Z)Z
    .locals 7
    .parameter
    .parameter "animate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemID;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    .local p1, id:Ljava/lang/Object;,"TItemID;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 975
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->hasData()Z

    move-result v3

    if-nez v3, :cond_1

    .line 989
    :cond_0
    :goto_0
    return v1

    .line 979
    :cond_1
    if-eqz p2, :cond_2

    .line 980
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateTo(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 983
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->findIdPosition(Ljava/lang/Object;)I

    move-result v0

    .line 984
    .local v0, position:I
    sget-object v3, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Searched for ID %s; result position: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 986
    invoke-virtual {p0, v0, p2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->setSelection(IZ)V

    move v1, v2

    .line 987
    goto :goto_0
.end method

.method public setSuppressViewUpdates(Z)V
    .locals 1
    .parameter "suppressViewUpdates"

    .prologue
    .line 376
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    iput-boolean p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->suppressViewUpdates:Z

    .line 377
    if-nez p1, :cond_0

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    .line 380
    :cond_0
    return-void
.end method

.method public final shouldSuppressSingleTapSound()Z
    .locals 3

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    const/4 v1, 0x0

    .line 824
    iget-boolean v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z

    if-nez v2, :cond_1

    .line 833
    :cond_0
    :goto_0
    return v1

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    .line 830
    .local v0, selectedView:Lcom/google/glass/widget/horizontalscroll/Card;
    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->shouldSuppressSingleTapSound()Z

    move-result v1

    goto :goto_0
.end method

.method public final updateViews(Z)V
    .locals 2
    .parameter "isDataChange"

    .prologue
    .line 1409
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<TItemID;TItemValue;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateViewsInternal(Z)Z

    move-result v0

    .line 1410
    .local v0, changedViews:Z
    if-eqz v0, :cond_0

    .line 1413
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1414
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V

    .line 1417
    :cond_0
    return-void
.end method
