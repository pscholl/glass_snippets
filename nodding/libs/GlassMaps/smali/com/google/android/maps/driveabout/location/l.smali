.class final Lcom/google/android/maps/driveabout/location/l;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/maps/driveabout/location/b;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/l;->b:Lcom/google/android/maps/driveabout/location/b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/location/l;)Lcom/google/android/maps/driveabout/location/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/l;->b:Lcom/google/android/maps/driveabout/location/b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/l;->b:Lcom/google/android/maps/driveabout/location/b;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/maps/driveabout/location/l;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/location/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/l;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/location/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/l;->b:Lcom/google/android/maps/driveabout/location/b;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/location/l;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/l;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
