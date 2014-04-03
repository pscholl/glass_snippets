.class final Lcom/google/android/maps/driveabout/nav/s;
.super Lcom/google/android/maps/driveabout/util/c;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/nav/q;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/nav/q;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/s;->a:Lcom/google/android/maps/driveabout/nav/q;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/util/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/s;->a:Lcom/google/android/maps/driveabout/nav/q;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/q;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/s;->a:Lcom/google/android/maps/driveabout/nav/q;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/q;->c(Lcom/google/android/maps/driveabout/nav/q;)Lcom/google/android/maps/driveabout/nav/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/s;->a:Lcom/google/android/maps/driveabout/nav/q;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/nav/q;->b(Lcom/google/android/maps/driveabout/nav/q;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/o;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/s;->a:Lcom/google/android/maps/driveabout/nav/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/q;Landroid/location/Location;)Landroid/location/Location;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/s;->a:Lcom/google/android/maps/driveabout/nav/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/q;Z)Z

    return-void
.end method
