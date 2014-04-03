.class final Lcom/google/glass/navlib/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/glass/navlib/b;


# direct methods
.method constructor <init>(Lcom/google/glass/navlib/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/navlib/c;->a:Lcom/google/glass/navlib/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/navlib/c;->a:Lcom/google/glass/navlib/b;

    invoke-static {v0}, Lcom/google/glass/navlib/b;->a(Lcom/google/glass/navlib/b;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/location/b;->onLocationChanged(Landroid/location/Location;)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/navlib/c;->a:Lcom/google/glass/navlib/b;

    invoke-static {v0}, Lcom/google/glass/navlib/b;->a(Lcom/google/glass/navlib/b;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/location/b;->onProviderDisabled(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/navlib/c;->a:Lcom/google/glass/navlib/b;

    invoke-static {v0}, Lcom/google/glass/navlib/b;->a(Lcom/google/glass/navlib/b;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/location/b;->onProviderEnabled(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/navlib/c;->a:Lcom/google/glass/navlib/b;

    invoke-static {v0}, Lcom/google/glass/navlib/b;->a(Lcom/google/glass/navlib/b;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/google/android/maps/driveabout/location/b;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    move v0, v1

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/navlib/c;->a:Lcom/google/glass/navlib/b;

    invoke-static {v0}, Lcom/google/glass/navlib/b;->a(Lcom/google/glass/navlib/b;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/location/z;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/location/b;->a(Lcom/google/android/maps/driveabout/location/z;)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
