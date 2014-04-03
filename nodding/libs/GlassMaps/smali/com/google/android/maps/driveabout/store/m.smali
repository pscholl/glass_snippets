.class public abstract Lcom/google/android/maps/driveabout/store/m;
.super Lcom/google/googlenav/datarequest/a;


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/store/p;

.field private b:I

.field private c:Lcom/google/android/maps/driveabout/store/i;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    new-array v0, p1, [Lcom/google/android/maps/driveabout/store/p;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/m;->a:[Lcom/google/android/maps/driveabout/store/p;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/m;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/m;)Lcom/google/android/maps/driveabout/store/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/m;->c:Lcom/google/android/maps/driveabout/store/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/m;Lcom/google/android/maps/driveabout/store/i;)Lcom/google/android/maps/driveabout/store/i;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/m;->c:Lcom/google/android/maps/driveabout/store/i;

    return-object p1
.end method


# virtual methods
.method protected final a(I)Lcom/google/android/maps/driveabout/store/p;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/m;->a:[Lcom/google/android/maps/driveabout/store/p;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected a(Lcom/google/android/maps/driveabout/store/p;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected abstract b(I)Lcom/google/android/maps/driveabout/e/au;
.end method

.method protected final b(Lcom/google/android/maps/driveabout/store/p;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/m;->a:[Lcom/google/android/maps/driveabout/store/p;

    iget v1, p0, Lcom/google/android/maps/driveabout/store/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/store/m;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method protected final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/m;->b:I

    return v0
.end method

.method protected c(I)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/store/m;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/m;->a:[Lcom/google/android/maps/driveabout/store/p;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
