.class public final Lcom/google/glass/widget/ac;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/google/glass/input/InputListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Lcom/google/glass/app/GlassActivity;

.field private final c:Lcom/google/glass/sound/SoundManager;

.field private final d:Lcom/google/glass/widget/OptionMenuView;

.field private final e:Lcom/google/glass/widget/SliderView;

.field private final f:Lcom/google/glass/input/r;

.field private final g:Lcom/google/glass/input/l;

.field private final h:Lcom/google/glass/widget/af;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ac;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/widget/af;)V
    .locals 2

    sget v0, Lcom/google/glass/d/j;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/ac;->i:Z

    iput-object p1, p0, Lcom/google/glass/widget/ac;->b:Lcom/google/glass/app/GlassActivity;

    iput-object p2, p0, Lcom/google/glass/widget/ac;->c:Lcom/google/glass/sound/SoundManager;

    iput-object p3, p0, Lcom/google/glass/widget/ac;->h:Lcom/google/glass/widget/af;

    new-instance v0, Lcom/google/glass/input/r;

    invoke-virtual {p0}, Lcom/google/glass/widget/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/glass/input/r;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/ac;->f:Lcom/google/glass/input/r;

    new-instance v0, Lcom/google/glass/input/l;

    invoke-virtual {p0}, Lcom/google/glass/widget/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/glass/input/l;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/ac;->g:Lcom/google/glass/input/l;

    sget v0, Lcom/google/glass/d/h;->option_menu_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ac;->setContentView(I)V

    sget v0, Lcom/google/glass/d/f;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/widget/ac;->e:Lcom/google/glass/widget/SliderView;

    sget v0, Lcom/google/glass/d/f;->options:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/OptionMenuView;

    iput-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    iget-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    new-instance v1, Lcom/google/glass/widget/ad;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/ad;-><init>(Lcom/google/glass/widget/ac;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenuView;->setListener(Lcom/google/glass/widget/ag;)V

    iget-object v0, p0, Lcom/google/glass/widget/ac;->e:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    new-instance v0, Lcom/google/glass/widget/ae;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/ae;-><init>(Lcom/google/glass/widget/ac;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ac;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/widget/ac;)Lcom/google/glass/widget/af;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ac;->h:Lcom/google/glass/widget/af;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    iget-object v1, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenuView;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/OptionMenuView;->setSelection(IZ)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/widget/x;)Lcom/google/glass/widget/ac;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/OptionMenuView;->setOptionMenu(Lcom/google/glass/widget/x;)V

    invoke-direct {p0}, Lcom/google/glass/widget/ac;->b()V

    iget-object v0, p0, Lcom/google/glass/widget/ac;->e:Lcom/google/glass/widget/SliderView;

    invoke-virtual {p1}, Lcom/google/glass/widget/x;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    return-object p0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/ac;->i:Z

    return v0
.end method

.method public final a(F)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(IFFFFII)Z
    .locals 8

    iget-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/widget/OptionMenuView;->a(IFFFFII)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2

    sget-object v0, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/ar;->a(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/OptionMenuView;->a(ILcom/google/glass/input/SwipeDirection;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/OptionMenuView;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/ac;->i:Z

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public final dismiss()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/ac;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/ac;->c:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/widget/ac;->dismiss()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/ac;->h:Lcom/google/glass/widget/af;

    invoke-interface {v0}, Lcom/google/glass/widget/af;->d()V

    goto :goto_0
.end method

.method public final hide()V
    .locals 0

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ac;->f:Lcom/google/glass/input/r;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/r;->a(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1b

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/widget/ac;->h:Lcom/google/glass/widget/af;

    invoke-interface {v1}, Lcom/google/glass/widget/af;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/widget/ac;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/widget/ac;->h:Lcom/google/glass/widget/af;

    invoke-interface {v1}, Lcom/google/glass/widget/af;->d()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/glass/widget/ac;->g:Lcom/google/glass/input/l;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/l;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ac;->g:Lcom/google/glass/input/l;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/l;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onStart()V
    .locals 3

    sget-object v0, Lcom/google/glass/widget/ac;->a:Lcom/google/glass/logging/i;

    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->b()V

    invoke-direct {p0}, Lcom/google/glass/widget/ac;->b()V

    return-void
.end method

.method protected final onStop()V
    .locals 3

    sget-object v0, Lcom/google/glass/widget/ac;->a:Lcom/google/glass/logging/i;

    const-string v1, "onStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/google/glass/widget/ac;->d:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->c()V

    return-void
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ac;->h:Lcom/google/glass/widget/af;

    invoke-interface {v0}, Lcom/google/glass/widget/af;->c()Z

    move-result v0

    return v0
.end method

.method public final show()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/widget/ac;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/ac;->i:Z

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
