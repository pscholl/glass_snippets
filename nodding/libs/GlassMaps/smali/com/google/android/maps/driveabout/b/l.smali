.class final Lcom/google/android/maps/driveabout/b/l;
.super Lcom/google/android/maps/driveabout/b/j;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/j;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final c()Z
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/l;->a:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/l;->a:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
