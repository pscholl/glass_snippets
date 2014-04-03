.class final Lcom/google/glass/maps/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;Ljava/lang/CharSequence;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/ab;->c:Lcom/google/glass/maps/NavigationActivity;

    iput-object p2, p0, Lcom/google/glass/maps/ab;->a:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/google/glass/maps/ab;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/glass/maps/ab;->c:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    invoke-virtual {v0}, Lcom/google/glass/maps/ay;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/ab;->c:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationActivity;->b(Lcom/google/glass/maps/NavigationActivity;)V

    iget-object v1, p0, Lcom/google/glass/maps/ab;->c:Lcom/google/glass/maps/NavigationActivity;

    new-instance v0, Lcom/google/glass/widget/p;

    iget-object v2, p0, Lcom/google/glass/maps/ab;->c:Lcom/google/glass/maps/NavigationActivity;

    iget-object v3, p0, Lcom/google/glass/maps/ab;->c:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v3}, Lcom/google/glass/maps/NavigationActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/glass/widget/p;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    iget-object v2, p0, Lcom/google/glass/maps/ab;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/p;->a(Ljava/lang/CharSequence;)Lcom/google/glass/widget/p;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/glass/maps/ab;->b:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/maps/bl;->ic_cloud_sad_big:I

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/glass/widget/p;->c(I)Lcom/google/glass/widget/p;

    move-result-object v0

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/p;->a(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/p;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/p;->d(Z)Lcom/google/glass/widget/p;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/p;->a(Z)Lcom/google/glass/widget/p;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/p;->b(Z)Lcom/google/glass/widget/p;

    move-result-object v0

    new-instance v2, Lcom/google/glass/maps/ac;

    invoke-direct {v2, p0}, Lcom/google/glass/maps/ac;-><init>(Lcom/google/glass/maps/ab;)V

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/p;->a(Lcom/google/glass/widget/q;)Lcom/google/glass/widget/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/p;->a()Lcom/google/glass/widget/n;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/glass/maps/NavigationActivity;->a(Lcom/google/glass/maps/NavigationActivity;Lcom/google/glass/widget/n;)Lcom/google/glass/widget/n;

    iget-object v0, p0, Lcom/google/glass/maps/ab;->c:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationActivity;->c(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/widget/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/n;->show()V

    return-void

    :cond_0
    sget v0, Lcom/google/glass/maps/bl;->ic_exclamation_big:I

    goto :goto_0
.end method
