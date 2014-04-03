.class public final Lcom/google/glass/navlib/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/location/b;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/location/b;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/navlib/c;

    invoke-direct {v1, p0}, Lcom/google/glass/navlib/c;-><init>(Lcom/google/glass/navlib/b;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/glass/navlib/b;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/glass/navlib/b;->a:Lcom/google/android/maps/driveabout/location/b;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/navlib/b;)Lcom/google/android/maps/driveabout/location/b;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/navlib/b;->a:Lcom/google/android/maps/driveabout/location/b;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/navlib/b;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/navlib/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/navlib/b;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/google/glass/navlib/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
