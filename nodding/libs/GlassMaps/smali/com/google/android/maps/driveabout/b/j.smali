.class public abstract Lcom/google/android/maps/driveabout/b/j;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/media/AudioManager;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/j;->b:Z

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/j;->a:Landroid/media/AudioManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/b/j;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/b/l;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/b/l;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/b/k;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/b/k;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/j;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const-string v0, "a"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/j;->a:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b/v;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/b/j;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/j;->b:Z

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/b/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/j;->b:Z

    :cond_0
    return-void
.end method

.method protected abstract c()Z
.end method

.method protected abstract d()Z
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/j;->b:Z

    return v0
.end method
