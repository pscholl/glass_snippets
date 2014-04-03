.class final Lcom/google/android/maps/driveabout/nav/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/nav/ad;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/nav/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/af;->a:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/nav/ad;Lcom/google/android/maps/driveabout/nav/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/af;-><init>(Lcom/google/android/maps/driveabout/nav/ad;)V

    return-void
.end method


# virtual methods
.method public final a(IZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/af;->a:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/ad;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/nav/q;->a(IZ)V

    return-void
.end method

.method public final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/maps/driveabout/nav/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/af;->a:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/ad;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    check-cast p1, Lcom/google/android/maps/driveabout/nav/f;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/googlenav/datarequest/d;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/maps/driveabout/nav/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/nav/f;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/nav/f;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/af;->a:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/ad;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    :cond_0
    return-void
.end method
