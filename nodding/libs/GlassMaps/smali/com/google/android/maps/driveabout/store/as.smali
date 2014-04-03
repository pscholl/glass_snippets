.class final Lcom/google/android/maps/driveabout/store/as;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/store/ar;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/as;->a:Lcom/google/android/maps/driveabout/store/ar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/as;->a:Lcom/google/android/maps/driveabout/store/ar;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/store/at;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/store/ar;Lcom/google/android/maps/driveabout/store/at;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/as;->a:Lcom/google/android/maps/driveabout/store/ar;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/store/ar;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/as;->a:Lcom/google/android/maps/driveabout/store/ar;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/store/aq;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/store/ar;Lcom/google/android/maps/driveabout/store/aq;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/as;->a:Lcom/google/android/maps/driveabout/store/ar;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/store/aq;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/store/ar;->b(Lcom/google/android/maps/driveabout/store/ar;Lcom/google/android/maps/driveabout/store/aq;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
