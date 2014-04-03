.class final Lcom/google/android/maps/driveabout/util/m;
.super Lcom/google/android/maps/driveabout/util/d;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/maps/driveabout/util/m;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/util/m;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/util/m;->c:Ljava/lang/Runnable;

    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/util/m;->d:Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/util/m;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/util/m;->c:Ljava/lang/Runnable;

    const-string v4, "NavigationParameters.data"

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/util/m;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "NavZoomTables.data"

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/maps/driveabout/util/l;->a(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ZoomTables.data"

    goto :goto_0
.end method
