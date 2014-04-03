.class final Lcom/google/android/maps/driveabout/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/a/x;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/a/x;->b:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/a/x;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/a/x;)I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/a/x;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/a/x;->b:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/a/x;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/a/x;->b:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/a/x;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/x;->a(Lcom/google/android/maps/driveabout/a/x;)I

    move-result v0

    return v0
.end method
