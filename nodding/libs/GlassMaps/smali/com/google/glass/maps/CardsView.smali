.class public abstract Lcom/google/glass/maps/CardsView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/glass/input/InputListener;


# instance fields
.field protected a:[Lcom/google/android/maps/driveabout/nav/DataType;

.field protected b:Z

.field private c:Lcom/google/glass/sound/SoundManager;

.field private d:Lcom/google/glass/maps/c;

.field private e:Lcom/google/glass/widget/SliderView;

.field private f:Lcom/google/glass/maps/d;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->b:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->g:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->h:Z

    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->b:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->g:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->h:Z

    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->b:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->g:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/CardsView;->h:Z

    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Lcom/google/glass/maps/c;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/maps/c;-><init>(Lcom/google/glass/maps/CardsView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/c;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/CardsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/google/glass/widget/SliderView;

    invoke-direct {v0, p1}, Lcom/google/glass/widget/SliderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/CardsView;->e:Lcom/google/glass/widget/SliderView;

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->e:Lcom/google/glass/widget/SliderView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/CardsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->e:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/glass/maps/CardsView;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->e:Lcom/google/glass/widget/SliderView;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/SliderView;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->e:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/c;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/glass/maps/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/c;->setAdapter(Landroid/widget/Adapter;)V

    invoke-direct {p0}, Lcom/google/glass/maps/CardsView;->b()V

    return-void
.end method

.method public final a(F)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(IFFFFII)Z
    .locals 8

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/maps/c;->a(IFFFFII)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/c;->a(ILcom/google/glass/input/SwipeDirection;)Z

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/c;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/maps/CardsView;->g:Z

    if-nez v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/maps/CardsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/nav/DataType;->a()Lcom/google/android/maps/driveabout/nav/DataType$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/DataType$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/maps/GlassUserEventLogger;->a(Landroid/content/Context;ILjava/lang/String;)V

    iput-boolean v4, p0, Lcom/google/glass/maps/CardsView;->g:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/glass/maps/CardsView;->h:Z

    if-nez v1, :cond_1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/maps/CardsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    invoke-virtual {v2}, Lcom/google/glass/maps/c;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v3, v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/nav/DataType;->a()Lcom/google/android/maps/driveabout/nav/DataType$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/DataType$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/glass/maps/GlassUserEventLogger;->a(Landroid/content/Context;ILjava/lang/String;)V

    iput-boolean v4, p0, Lcom/google/glass/maps/CardsView;->h:Z

    :cond_1
    return v4
.end method

.method public final a(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/c;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/c;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/DataType;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->c:Lcom/google/glass/sound/SoundManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->c:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->f:Lcom/google/glass/maps/d;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/glass/maps/CardsView;->b:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->f:Lcom/google/glass/maps/d;

    invoke-interface {v0}, Lcom/google/glass/maps/d;->a()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/glass/maps/CardsView;->f:Lcom/google/glass/maps/d;

    iget-object v2, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    invoke-virtual {v2}, Lcom/google/glass/maps/c;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/google/glass/maps/d;->a(Lcom/google/android/maps/driveabout/nav/DataType;I)V

    goto :goto_0
.end method

.method public final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIsNavigating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/maps/CardsView;->b:Z

    invoke-direct {p0}, Lcom/google/glass/maps/CardsView;->b()V

    return-void
.end method

.method public setOnCardSelectedListener(Lcom/google/glass/maps/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/CardsView;->f:Lcom/google/glass/maps/d;

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/CardsView;->d:Lcom/google/glass/maps/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/maps/c;->setSelection(IZ)V

    return-void
.end method

.method public setSoundManager(Lcom/google/glass/sound/SoundManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/CardsView;->c:Lcom/google/glass/sound/SoundManager;

    return-void
.end method
