.class final Lcom/google/glass/app/h;
.super Lcom/google/glass/widget/s;


# instance fields
.field final synthetic a:Lcom/google/glass/app/GlassActivity;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/google/glass/sound/SoundManager;

.field final synthetic d:Lcom/google/glass/app/GlassError;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassError;Lcom/google/glass/app/GlassActivity;Ljava/lang/Runnable;Lcom/google/glass/sound/SoundManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/h;->d:Lcom/google/glass/app/GlassError;

    iput-object p2, p0, Lcom/google/glass/app/h;->a:Lcom/google/glass/app/GlassActivity;

    iput-object p3, p0, Lcom/google/glass/app/h;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/google/glass/app/h;->c:Lcom/google/glass/sound/SoundManager;

    invoke-direct {p0}, Lcom/google/glass/widget/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/glass/app/h;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/h;->d:Lcom/google/glass/app/GlassError;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassError;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/h;->a:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/app/h;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/h;->c:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    iget-object v0, p0, Lcom/google/glass/app/h;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/h;->c:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
