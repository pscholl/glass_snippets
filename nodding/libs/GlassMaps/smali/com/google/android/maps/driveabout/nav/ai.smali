.class final Lcom/google/android/maps/driveabout/nav/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/nav/aj;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/nav/aj;

    check-cast p2, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/nav/ai;->a(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/nav/aj;)I

    move-result v0

    return v0
.end method
