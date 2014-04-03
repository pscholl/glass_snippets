.class public final Lcom/google/glass/widget/n;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/google/glass/input/InputListener;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private final c:Lcom/google/glass/widget/r;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/glass/input/r;

.field private final f:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/LinearLayout;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/n;->a:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/widget/n;->a:Lcom/google/glass/logging/i;

    const-string v1, "screenOffReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/n;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/r;)V
    .locals 2

    invoke-static {p2}, Lcom/google/glass/widget/r;->b(Lcom/google/glass/widget/r;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/widget/n;->a(Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/google/glass/widget/o;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/o;-><init>(Lcom/google/glass/widget/n;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    new-instance v0, Lcom/google/glass/widget/MessageDialog$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/MessageDialog$2;-><init>(Lcom/google/glass/widget/n;)V

    iput-object v0, p0, Lcom/google/glass/widget/n;->f:Lcom/google/glass/util/SafeBroadcastReceiver;

    iput-object p2, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    new-instance v0, Lcom/google/glass/input/r;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/r;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/n;->e:Lcom/google/glass/input/r;

    invoke-static {p2}, Lcom/google/glass/widget/r;->c(Lcom/google/glass/widget/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/d/h;->message_dialog_expanded:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/glass/widget/n;->setContentView(I)V

    sget v0, Lcom/google/glass/d/f;->ms_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/glass/widget/n;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/glass/widget/n;->g:Landroid/view/ViewGroup;

    invoke-static {p2}, Lcom/google/glass/widget/r;->d(Lcom/google/glass/widget/r;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    sget v0, Lcom/google/glass/d/f;->gradient_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/widget/n;->h:Landroid/widget/LinearLayout;

    return-void

    :cond_0
    sget v0, Lcom/google/glass/d/h;->message_dialog:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/r;Lcom/google/glass/widget/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/n;-><init>(Landroid/content/Context;Lcom/google/glass/widget/r;)V

    return-void
.end method

.method private static a(Z)I
    .locals 1

    if-eqz p0, :cond_0

    sget v0, Lcom/google/glass/d/j;->ContextualDialogTheme:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/glass/d/j;->ContextualDialogTheme_NoAnimation:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/widget/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/widget/n;->d()V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/glass/widget/n;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/widget/n;->h()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/widget/n;->i()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->f(Lcom/google/glass/widget/r;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/n;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/glass/widget/n;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/d/e;->overlay_medium:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/widget/n;->h:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/widget/n;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/widget/n;)Lcom/google/glass/widget/r;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/glass/widget/n;->i:Z

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->g(Lcom/google/glass/widget/r;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v1}, Lcom/google/glass/widget/r;->h(Lcom/google/glass/widget/r;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v2}, Lcom/google/glass/widget/r;->i(Lcom/google/glass/widget/r;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/glass/widget/n;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/widget/n;->j()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/glass/widget/n;->j()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v1}, Lcom/google/glass/widget/r;->j(Lcom/google/glass/widget/r;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/SliderView;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v2}, Lcom/google/glass/widget/r;->j(Lcom/google/glass/widget/r;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/google/glass/widget/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/widget/n;->i:Z

    return v0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/glass/widget/n;->i:Z

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->k(Lcom/google/glass/widget/r;)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->l(Lcom/google/glass/widget/r;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v1}, Lcom/google/glass/widget/r;->k(Lcom/google/glass/widget/r;)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->m(Lcom/google/glass/widget/r;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v1}, Lcom/google/glass/widget/r;->n(Lcom/google/glass/widget/r;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v2}, Lcom/google/glass/widget/r;->o(Lcom/google/glass/widget/r;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/glass/widget/n;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->p(Lcom/google/glass/widget/r;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/glass/widget/n;->j()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/glass/widget/n;->j()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->a()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->q(Lcom/google/glass/widget/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->c(Lcom/google/glass/widget/r;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x7d0

    :goto_1
    iget-object v2, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/glass/widget/n;->j()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x3e8

    goto :goto_1
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private f()Landroid/widget/TextView;
    .locals 1

    sget v0, Lcom/google/glass/d/f;->label:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private h()Landroid/widget/TextView;
    .locals 1

    sget v0, Lcom/google/glass/d/f;->secondary_label:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private i()Landroid/widget/ImageView;
    .locals 1

    sget v0, Lcom/google/glass/d/f;->icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private j()Lcom/google/glass/widget/SliderView;
    .locals 1

    sget v0, Lcom/google/glass/d/f;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method private k()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/widget/n;->j()Lcom/google/glass/widget/SliderView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/glass/widget/n;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/widget/n;->a:Lcom/google/glass/logging/i;

    const-string v1, "Cancelling for screen off event."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/glass/widget/n;->cancel()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/glass/widget/q;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;Lcom/google/glass/widget/q;)Lcom/google/glass/widget/q;

    return-void
.end method

.method public final a(F)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(IFFFFII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final cancel()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->l(Lcom/google/glass/widget/r;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    invoke-direct {p0}, Lcom/google/glass/widget/n;->e()V

    iget-object v0, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final dismiss()V
    .locals 3

    invoke-direct {p0}, Lcom/google/glass/widget/n;->e()V

    iget-object v0, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final g()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v2}, Lcom/google/glass/widget/r;->r(Lcom/google/glass/widget/r;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v2}, Lcom/google/glass/widget/r;->g(Lcom/google/glass/widget/r;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/glass/widget/n;->a:Lcom/google/glass/logging/i;

    const-string v3, "Temporary message has completed, onDone will be called to listener, do not send onConfirm."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/google/glass/widget/n;->e()V

    iget-object v1, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v1}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;)Lcom/google/glass/widget/q;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v1}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;)Lcom/google/glass/widget/q;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/widget/q;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/widget/n;->d:Landroid/os/Handler;

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/widget/n;->e()V

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/n;->e:Lcom/google/glass/input/r;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/r;->a(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected final onStart()V
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->e(Lcom/google/glass/widget/r;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/n;->setCancelable(Z)V

    iget-object v0, p0, Lcom/google/glass/widget/n;->g:Landroid/view/ViewGroup;

    sget v1, Lcom/google/glass/d/f;->background_image:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v1}, Lcom/google/glass/widget/r;->f(Lcom/google/glass/widget/r;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v1}, Lcom/google/glass/widget/r;->f(Lcom/google/glass/widget/r;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-virtual {v0}, Lcom/google/glass/widget/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/n;->c:Lcom/google/glass/widget/r;

    invoke-static {v0}, Lcom/google/glass/widget/r;->c(Lcom/google/glass/widget/r;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/glass/widget/n;->c()V

    :goto_1
    iget-object v0, p0, Lcom/google/glass/widget/n;->f:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/widget/n;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.intent.action.SCREEN_OFF"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/glass/widget/n;->d()V

    goto :goto_1
.end method

.method protected final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/n;->f:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/widget/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
