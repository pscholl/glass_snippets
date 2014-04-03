.class public abstract Lcom/google/glass/app/GlassVoiceActivity;
.super Lcom/google/glass/app/GlassActivity;

# interfaces
.implements Lcom/google/glass/input/ab;


# instance fields
.field b:Lcom/google/glass/input/t;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Lcom/google/glass/app/m;

.field private f:Lcom/google/glass/voice/GuardHintAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->d:Z

    return-void
.end method

.method private static A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private B()V
    .locals 1

    invoke-static {}, Lcom/google/glass/app/GlassVoiceActivity;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->b:Lcom/google/glass/input/t;

    invoke-virtual {v0}, Lcom/google/glass/input/t;->c()V

    :cond_0
    return-void
.end method

.method private static C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private D()Lcom/google/glass/app/m;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/google/glass/app/m;

    invoke-direct {v0, p0}, Lcom/google/glass/app/m;-><init>(Lcom/google/glass/app/GlassVoiceActivity;)V

    return-object v0
.end method

.method private E()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    invoke-virtual {v0}, Lcom/google/glass/app/m;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/glass/voice/VoiceConfig;Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/voice/VoiceConfig;)V

    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->q()V

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->D()Lcom/google/glass/app/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    invoke-virtual {v0, p2}, Lcom/google/glass/app/m;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    invoke-virtual {v0, p1}, Lcom/google/glass/app/m;->a(Lcom/google/glass/voice/VoiceConfig;)V

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    invoke-virtual {v0}, Lcom/google/glass/app/m;->show()V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->u()V

    return-void
.end method

.method private static x()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method private y()V
    .locals 1

    invoke-static {}, Lcom/google/glass/app/GlassVoiceActivity;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->b:Lcom/google/glass/input/t;

    invoke-virtual {v0}, Lcom/google/glass/input/t;->a()V

    :cond_0
    return-void
.end method

.method private z()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->b:Lcom/google/glass/input/t;

    invoke-static {}, Lcom/google/glass/input/t;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Listening for guard phrase."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->e:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/voice/VoiceConfig;)V

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->f:Lcom/google/glass/voice/GuardHintAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/glass/voice/GuardHintAnimator;-><init>(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->f:Lcom/google/glass/voice/GuardHintAnimator;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->f:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/GuardHintAnimator;->a()V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->b:Lcom/google/glass/input/t;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/t;->a(Lcom/google/glass/voice/VoiceConfig;)V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 0

    return-void
.end method

.method public final varargs a(Lcom/google/glass/voice/VoiceConfig;[Lcom/google/glass/voice/menu/n;)V
    .locals 1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/voice/VoiceConfig;Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/network/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->b:Lcom/google/glass/input/t;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/t;->a(Lcom/google/glass/voice/network/d;)V

    return-void
.end method

.method public final a(Lcom/google/glass/widget/x;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->o()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/voice/VoiceConfig;)V

    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->a(Lcom/google/glass/widget/x;)V

    return-void
.end method

.method protected final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->v()V

    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->o()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/voice/VoiceConfig;)V

    :cond_1
    return-void
.end method

.method public final a(D)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    invoke-virtual {v0, p1}, Lcom/google/glass/app/m;->a(F)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->a(F)Z

    move-result v0

    goto :goto_0
.end method

.method public final a([BII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Voice Service Connected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Not applying initial voice config because we are paused."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->B()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->b:Lcom/google/glass/input/t;

    invoke-static {}, Lcom/google/glass/app/GlassVoiceActivity;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/input/t;->a(Z)V

    invoke-static {}, Lcom/google/glass/net/c;->a()V

    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->E()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->o()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method public final b(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Stopping listening for guard phrase."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->d:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/voice/VoiceConfig;)V

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->f:Lcom/google/glass/voice/GuardHintAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/glass/voice/GuardHintAnimator;-><init>(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->f:Lcom/google/glass/voice/GuardHintAnimator;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->f:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/GuardHintAnimator;->b()V

    return-void
.end method

.method public final b(Lcom/google/glass/widget/n;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->q()V

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->d:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/voice/VoiceConfig;)V

    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->b(Lcom/google/glass/widget/n;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/app/GlassVoiceActivity;->c:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->d:Z

    return v0
.end method

.method public o()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->d:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onCreate: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/glass/input/t;

    new-instance v1, Lcom/google/glass/app/l;

    invoke-direct {v1, p0, p0}, Lcom/google/glass/app/l;-><init>(Lcom/google/glass/app/GlassVoiceActivity;Lcom/google/glass/input/ab;)V

    invoke-static {p0}, Lcom/google/glass/input/t;->a(Landroid/content/Context;)Lcom/google/glass/input/aa;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/app/GlassVoiceActivity;->x()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/input/t;-><init>(Landroid/content/Context;Lcom/google/glass/input/ab;Lcom/google/glass/input/aa;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->b:Lcom/google/glass/input/t;

    return-void
.end method

.method protected onPause()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/glass/app/GlassVoiceActivity;->d:Z

    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onPause: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->w()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    invoke-virtual {v0}, Lcom/google/glass/app/m;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v5, p0, Lcom/google/glass/app/GlassVoiceActivity;->c:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->c:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->d:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/voice/VoiceConfig;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Orientation sensors still running in onPause! Stopping them."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->v()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->q()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iput-boolean v2, p0, Lcom/google/glass/app/GlassVoiceActivity;->d:Z

    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onResume: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->w()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/google/glass/app/GlassVoiceActivity;->c:Z

    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->b()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStart()V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onStart: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->y()V

    return-void
.end method

.method protected onStop()V
    .locals 5

    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStop()V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onStop: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->B()V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->d:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/voice/VoiceConfig;)V

    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->b:Lcom/google/glass/input/t;

    invoke-virtual {v0}, Lcom/google/glass/input/t;->d()V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/m;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->e:Lcom/google/glass/app/m;

    :cond_0
    return-void
.end method

.method public final r()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->r()Z

    move-result v0

    return v0
.end method
