.class public abstract Lcom/google/glass/app/GlassActivity;
.super Lcom/google/glass/input/InputDetectingActivity;


# instance fields
.field protected a:Lcom/google/glass/widget/ac;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

.field private d:Lcom/google/glass/util/bj;

.field private e:Lcom/google/glass/widget/x;

.field private f:Z

.field private g:Z

.field private h:Lcom/google/glass/widget/n;

.field private i:Landroid/view/Menu;

.field private j:Z

.field private final k:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;-><init>()V

    new-instance v0, Lcom/google/glass/app/GlassActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/app/GlassActivity$1;-><init>(Lcom/google/glass/app/GlassActivity;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->k:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method private static A()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/google/glass/app/GlassActivity;)Lcom/google/glass/widget/x;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    return-object v0
.end method

.method private a(ILcom/google/glass/widget/x;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->g:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/google/glass/app/GlassActivity;->j:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "should_finish_turn_screen_off"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->j:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1

    invoke-static {}, Lcom/google/glass/app/GlassActivity;->t()Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/google/glass/widget/x;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method private static c(Lcom/google/glass/widget/x;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method private o()V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->h()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finish()V

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->j:Z

    return v0
.end method

.method private static q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private x()Lcom/google/glass/userevent/a;
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->y()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->d()Lcom/google/glass/userevent/a;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/google/glass/app/GlassApplication;
    .locals 1

    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    return-object v0
.end method

.method private z()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->h:Lcom/google/glass/widget/n;

    invoke-virtual {v0}, Lcom/google/glass/widget/n;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->x()Lcom/google/glass/userevent/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/glass/widget/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->z()V

    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->h:Lcom/google/glass/widget/n;

    invoke-virtual {p1}, Lcom/google/glass/widget/n;->show()V

    return-void
.end method

.method public a(Lcom/google/glass/widget/x;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->g:Z

    return-void
.end method

.method public a(IFFFFII)Z
    .locals 8

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a(IFFFFII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2

    sget-object v0, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->f()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/ar;->a(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a(ILcom/google/glass/input/SwipeDirection;)Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IZ)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a(IZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2

    invoke-static {}, Lcom/google/glass/app/GlassActivity;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->f()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/ar;->a(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->o()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/google/glass/widget/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassActivity;->a(Lcom/google/glass/widget/n;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->a:Lcom/google/glass/widget/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->a:Lcom/google/glass/widget/ac;

    invoke-virtual {v0}, Lcom/google/glass/widget/ac;->dismiss()V

    :cond_0
    return-void
.end method

.method protected e()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected final f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->i:Landroid/view/Menu;

    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->openOptionsMenu()V

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->i:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->i:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v3}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    return v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->a:Lcom/google/glass/widget/ac;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->a:Lcom/google/glass/widget/ac;

    invoke-virtual {v0}, Lcom/google/glass/widget/ac;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->k()V

    move v2, v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_1
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Not turning off screen because we\'re already finishing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/d/g;->activity_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/app/b;

    invoke-direct {v1, p0}, Lcom/google/glass/app/b;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->d:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->a()V

    goto :goto_0
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->a:Lcom/google/glass/widget/ac;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->f:Z

    return-void
.end method

.method protected j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final k()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    return-void
.end method

.method public final l()Lcom/google/glass/sound/SoundManager;
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->y()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->a()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method protected m()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->h:Lcom/google/glass/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->h:Lcom/google/glass/widget/n;

    invoke-virtual {v0}, Lcom/google/glass/widget/n;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/glass/util/bj;

    invoke-direct {v0, p0}, Lcom/google/glass/util/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->d:Lcom/google/glass/util/bj;

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->e()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "No content view provided."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->k:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/app/GlassActivity;->a(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v2, "Inflating content view into tuggable container."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v0, Lcom/google/glass/d/h;->glass_activity_tuggable:I

    invoke-super {p0, v0}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    sget v0, Lcom/google/glass/d/f;->content_view_container:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->setView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v2, "Inflating content view to stub."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v0, Lcom/google/glass/d/h;->glass_activity:I

    invoke-super {p0, v0}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    sget v0, Lcom/google/glass/d/f;->content_view_stub:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->b:Landroid/view/View;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->k:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/google/glass/app/GlassActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    invoke-static {}, Lcom/google/glass/app/GlassActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;->z()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->c()V

    :cond_1
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->i:Landroid/view/Menu;

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onResume()V

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->c:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->b()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onStart()V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->f()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->openOptionsMenu()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->f:Z

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/glass/widget/x;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->b(Lcom/google/glass/widget/x;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    invoke-virtual {v0}, Lcom/google/glass/widget/x;->a()V

    goto :goto_1

    :cond_5
    iput-boolean v3, p0, Lcom/google/glass/app/GlassActivity;->f:Z

    :cond_6
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->c(Lcom/google/glass/widget/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    invoke-virtual {v0}, Lcom/google/glass/widget/x;->c()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->a:Lcom/google/glass/widget/ac;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/glass/widget/ac;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/app/c;

    invoke-direct {v2, p0}, Lcom/google/glass/app/c;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/widget/ac;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/widget/af;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->a:Lcom/google/glass/widget/ac;

    :cond_7
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->a:Lcom/google/glass/widget/ac;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/ac;->a(Lcom/google/glass/widget/x;)Lcom/google/glass/widget/ac;

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->a:Lcom/google/glass/widget/ac;

    invoke-virtual {v0}, Lcom/google/glass/widget/ac;->show()V

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->e:Lcom/google/glass/widget/x;

    invoke-direct {p0, v3, v0}, Lcom/google/glass/app/GlassActivity;->a(ILcom/google/glass/widget/x;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
