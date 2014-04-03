.class final Lcom/google/android/maps/driveabout/b/k;
.super Lcom/google/android/maps/driveabout/b/j;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/j;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final c()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/k;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    return v2
.end method

.method protected final d()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/k;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    const/4 v0, 0x1

    return v0
.end method
