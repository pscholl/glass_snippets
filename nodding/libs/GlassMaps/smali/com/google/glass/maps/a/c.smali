.class final Lcom/google/glass/maps/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/maps/a/g;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/a/a;

.field private b:Lcom/google/android/maps/driveabout/location/b;

.field private c:Lcom/google/android/maps/driveabout/location/q;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/a/c;->a:Lcom/google/glass/maps/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/a/a;Lcom/google/glass/maps/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/a/c;-><init>(Lcom/google/glass/maps/a/a;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/c;->c:Lcom/google/android/maps/driveabout/location/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/a/c;->c:Lcom/google/android/maps/driveabout/location/q;

    :cond_0
    return-void
.end method

.method public final a(JFF)V
    .locals 7

    iget-object v0, p0, Lcom/google/glass/maps/a/c;->a:Lcom/google/glass/maps/a/a;

    invoke-static {v0, p3}, Lcom/google/glass/maps/a/a;->a(Lcom/google/glass/maps/a/a;F)F

    iget-object v6, p0, Lcom/google/glass/maps/a/c;->b:Lcom/google/android/maps/driveabout/location/b;

    new-instance v0, Lcom/google/android/maps/driveabout/location/z;

    const-string v1, "android_orientation"

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/location/z;-><init>(Ljava/lang/String;JFF)V

    invoke-interface {v6, v0}, Lcom/google/android/maps/driveabout/location/b;->a(Lcom/google/android/maps/driveabout/location/z;)V

    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/a/c;->b:Lcom/google/android/maps/driveabout/location/b;

    return-void
.end method
