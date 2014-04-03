.class final Lcom/google/android/maps/driveabout/nav/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/nav/w;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/y;->a:Lcom/google/android/maps/driveabout/nav/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/z;Lcom/google/android/maps/driveabout/nav/z;)I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/z;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/nav/z;->a:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/nav/z;

    check-cast p2, Lcom/google/android/maps/driveabout/nav/z;

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/nav/y;->a(Lcom/google/android/maps/driveabout/nav/z;Lcom/google/android/maps/driveabout/nav/z;)I

    move-result v0

    return v0
.end method
