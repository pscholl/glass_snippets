.class final Lcom/google/android/maps/driveabout/store/bz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/ca;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/bd;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
