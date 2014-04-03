.class final Lcom/google/android/maps/driveabout/b/u;
.super Lcom/google/android/maps/driveabout/util/d;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/b/x;

.field final synthetic b:Lcom/google/android/maps/driveabout/b/z;

.field final synthetic c:Lcom/google/android/maps/driveabout/b/t;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/b/t;Ljava/lang/String;Lcom/google/android/maps/driveabout/b/x;Lcom/google/android/maps/driveabout/b/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/u;->c:Lcom/google/android/maps/driveabout/b/t;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/b/u;->a:Lcom/google/android/maps/driveabout/b/x;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/b/u;->b:Lcom/google/android/maps/driveabout/b/z;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->b()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "RouteFetcher"

    const-string v2, "Offline Rerouting Enabled"

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/u;->a:Lcom/google/android/maps/driveabout/b/x;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/j;->y()Lcom/google/android/maps/driveabout/util/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/k;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/b/x;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/u;->b:Lcom/google/android/maps/driveabout/b/z;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/z;->b()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "RouteFetcher"

    const-string v1, "Offline Rerouting Disabled"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
