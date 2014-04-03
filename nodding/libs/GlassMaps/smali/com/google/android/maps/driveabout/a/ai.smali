.class public final Lcom/google/android/maps/driveabout/a/ai;
.super Lcom/google/android/maps/driveabout/a/a;


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/a/a;


# direct methods
.method public constructor <init>([Lcom/google/android/maps/driveabout/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/ai;->a:[Lcom/google/android/maps/driveabout/a/a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/ai;)[Lcom/google/android/maps/driveabout/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ai;->a:[Lcom/google/android/maps/driveabout/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/b;)V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/a/ak;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/a/ak;-><init>(Lcom/google/android/maps/driveabout/a/ai;Lcom/google/android/maps/driveabout/a/b;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/ak;->a()Z

    return-void
.end method

.method public final a()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ai;->a:[Lcom/google/android/maps/driveabout/a/a;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/a/a;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
