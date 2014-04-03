.class final Lcom/google/glass/sound/d;
.super Lcom/google/glass/util/bq;


# instance fields
.field final synthetic a:Lcom/google/glass/sound/SoundManager;


# direct methods
.method constructor <init>(Lcom/google/glass/sound/SoundManager;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/sound/d;->a:Lcom/google/glass/sound/SoundManager;

    invoke-direct {p0, p2}, Lcom/google/glass/util/bq;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/sound/SoundManager;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/sound/d;->a:Lcom/google/glass/sound/SoundManager;

    invoke-static {p2}, Lcom/google/glass/sound/b;->a(Landroid/os/IBinder;)Lcom/google/glass/sound/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/a;)Lcom/google/glass/sound/a;

    return-void
.end method

.method public final a(Landroid/content/ComponentName;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/sound/d;->a:Lcom/google/glass/sound/SoundManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/a;)Lcom/google/glass/sound/a;

    return-void
.end method
