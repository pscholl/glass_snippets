.class public final Lcom/google/glass/maps/ay;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/ay;->a:Ljava/util/List;

    sget v0, Lcom/google/glass/maps/bm;->step_pane_1_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/ViewGroup;I)V

    sget v0, Lcom/google/glass/maps/bm;->step_pane_2_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/ViewGroup;I)V

    sget v0, Lcom/google/glass/maps/bm;->route_overview_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/ViewGroup;I)V

    sget v0, Lcom/google/glass/maps/bm;->loading_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/ViewGroup;I)V

    sget v0, Lcom/google/glass/maps/bm;->voice_result_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/ViewGroup;I)V

    sget v0, Lcom/google/glass/maps/bm;->rerouting_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/ViewGroup;I)V

    sget v0, Lcom/google/glass/maps/bm;->destinations_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/ViewGroup;I)V

    sget v0, Lcom/google/glass/maps/bm;->trips_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/ViewGroup;I)V

    sget v0, Lcom/google/glass/maps/bm;->steps_pane_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/ViewGroup;I)V

    sget v0, Lcom/google/glass/maps/bm;->transit_map_stub:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/google/glass/maps/ay;->a:Ljava/util/List;

    new-instance v2, Lcom/google/glass/maps/az;

    invoke-direct {v2, v0}, Lcom/google/glass/maps/az;-><init>(Landroid/view/ViewStub;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/glass/maps/bm;->step_pane_1:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/glass/maps/bm;->step_pane_2:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 5

    const-wide/16 v3, 0xc8

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/google/glass/maps/ay;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/glass/maps/ay;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/google/glass/maps/d/a;->a(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v0, Lcom/google/glass/maps/bm;->loading_pane:I

    if-eq v1, v0, :cond_3

    sget v0, Lcom/google/glass/maps/bm;->voice_result_pane:I

    if-ne v1, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    sget v2, Lcom/google/glass/maps/bm;->loading_slider:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->b()V

    :cond_4
    sget v0, Lcom/google/glass/maps/bm;->loading_pane:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/glass/maps/bm;->destinations_pane:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/glass/maps/bm;->steps_pane:I

    if-ne v1, v0, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/google/glass/maps/d/a;->e(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    :cond_6
    :goto_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/glass/maps/bm;->loading_pane:I

    if-eq v0, v1, :cond_7

    sget v1, Lcom/google/glass/maps/bm;->destinations_pane:I

    if-eq v0, v1, :cond_7

    sget v1, Lcom/google/glass/maps/bm;->steps_pane:I

    if-ne v0, v1, :cond_a

    :cond_7
    invoke-static {p1}, Lcom/google/glass/maps/d/a;->d(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :goto_3
    sget v1, Lcom/google/glass/maps/bm;->loading_pane:I

    if-eq v0, v1, :cond_8

    sget v1, Lcom/google/glass/maps/bm;->voice_result_pane:I

    if-ne v0, v1, :cond_1

    :cond_8
    sget v0, Lcom/google/glass/maps/bm;->loading_slider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->a()V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/google/glass/maps/d/a;->c(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_a
    sget v1, Lcom/google/glass/maps/bm;->voice_result_pane:I

    if-ne v0, v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_b
    invoke-static {p1}, Lcom/google/glass/maps/d/a;->b(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3
.end method

.method private c(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/ay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/az;

    iget v2, v0, Lcom/google/glass/maps/az;->a:I

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/maps/az;->a()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    return-object v0
.end method

.method public final a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IFFFFII)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    instance-of v1, v1, Lcom/google/glass/input/InputListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    check-cast v0, Lcom/google/glass/input/InputListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/glass/input/InputListener;->a(IFFFFII)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    instance-of v1, v1, Lcom/google/glass/input/InputListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    check-cast v0, Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(IZ)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    instance-of v1, v1, Lcom/google/glass/input/InputListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    check-cast v0, Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/maps/ay;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/ay;->b(Landroid/view/View;)V

    return-object v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/ay;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/glass/maps/bm;->step_pane_1:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/google/glass/maps/bm;->step_pane_2:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/google/glass/maps/bm;->step_pane_1:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    instance-of v1, v1, Lcom/google/glass/input/InputListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ay;->b:Landroid/view/View;

    check-cast v0, Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->g()Z

    move-result v0

    goto :goto_0
.end method
