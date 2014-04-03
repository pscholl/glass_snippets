.class final Lcom/google/android/maps/driveabout/b/ab;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/b/z;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/b/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/ab;->a:Lcom/google/android/maps/driveabout/b/z;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/ab;->a:Lcom/google/android/maps/driveabout/b/z;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/z;->a(Lcom/google/android/maps/driveabout/b/z;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/ab;->a:Lcom/google/android/maps/driveabout/b/z;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/z;->b(Lcom/google/android/maps/driveabout/b/z;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/ab;->a:Lcom/google/android/maps/driveabout/b/z;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/z;->c(Lcom/google/android/maps/driveabout/b/z;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/ab;->a:Lcom/google/android/maps/driveabout/b/z;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/w;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b/z;->a(Lcom/google/android/maps/driveabout/b/z;Lcom/google/android/maps/driveabout/nav/w;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/ab;->a:Lcom/google/android/maps/driveabout/b/z;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ah;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/b/z;->a(Lcom/google/android/maps/driveabout/b/z;Lcom/google/android/maps/driveabout/nav/ah;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/ab;->a:Lcom/google/android/maps/driveabout/b/z;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/z;->d(Lcom/google/android/maps/driveabout/b/z;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/ab;->a:Lcom/google/android/maps/driveabout/b/z;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b/z;->b(Lcom/google/android/maps/driveabout/b/z;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/ab;->a:Lcom/google/android/maps/driveabout/b/z;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/z;->e(Lcom/google/android/maps/driveabout/b/z;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
