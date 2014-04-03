.class final Lcom/google/android/maps/driveabout/nav/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/nav/aa;)I
    .locals 4

    invoke-static {p0}, Lcom/google/android/maps/driveabout/nav/aa;->b(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/aa;->b(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/maps/driveabout/nav/aa;->b(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/aa;->b(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/nav/aa;

    check-cast p2, Lcom/google/android/maps/driveabout/nav/aa;

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/nav/x;->a(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/nav/aa;)I

    move-result v0

    return v0
.end method
