.class final Lcom/google/glass/navlib/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/glass/navlib/d;


# direct methods
.method constructor <init>(Lcom/google/glass/navlib/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/navlib/e;->a:Lcom/google/glass/navlib/d;

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
    iget-object v0, p0, Lcom/google/glass/navlib/e;->a:Lcom/google/glass/navlib/d;

    invoke-static {v0}, Lcom/google/glass/navlib/d;->a(Lcom/google/glass/navlib/d;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->a(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/navlib/e;->a:Lcom/google/glass/navlib/d;

    invoke-static {v0}, Lcom/google/glass/navlib/d;->a(Lcom/google/glass/navlib/d;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->b(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/navlib/f;

    iget-object v2, p0, Lcom/google/glass/navlib/e;->a:Lcom/google/glass/navlib/d;

    invoke-static {v2}, Lcom/google/glass/navlib/d;->a(Lcom/google/glass/navlib/d;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget v3, v0, Lcom/google/glass/navlib/f;->a:I

    iget-object v4, v0, Lcom/google/glass/navlib/f;->b:Lcom/google/android/maps/driveabout/nav/f;

    iget-object v0, v0, Lcom/google/glass/navlib/f;->c:Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/maps/driveabout/nav/n;->a(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/navlib/e;->a:Lcom/google/glass/navlib/d;

    invoke-static {v0}, Lcom/google/glass/navlib/d;->a(Lcom/google/glass/navlib/d;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/i;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v0, v3}, Lcom/google/android/maps/driveabout/nav/n;->a(Lcom/google/android/maps/driveabout/nav/i;I)V

    move v0, v1

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/navlib/e;->a:Lcom/google/glass/navlib/d;

    invoke-static {v0}, Lcom/google/glass/navlib/d;->a(Lcom/google/glass/navlib/d;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/i;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v0, v3}, Lcom/google/android/maps/driveabout/nav/n;->b(Lcom/google/android/maps/driveabout/nav/i;I)V

    move v0, v1

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/glass/navlib/e;->a:Lcom/google/glass/navlib/d;

    invoke-static {v0}, Lcom/google/glass/navlib/d;->a(Lcom/google/glass/navlib/d;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->c(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/glass/navlib/e;->a:Lcom/google/glass/navlib/d;

    invoke-static {v0}, Lcom/google/glass/navlib/d;->a(Lcom/google/glass/navlib/d;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->d(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/glass/navlib/e;->a:Lcom/google/glass/navlib/d;

    invoke-static {v0}, Lcom/google/glass/navlib/d;->a(Lcom/google/glass/navlib/d;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->e(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/google/glass/navlib/e;->a:Lcom/google/glass/navlib/d;

    invoke-static {v0}, Lcom/google/glass/navlib/d;->a(Lcom/google/glass/navlib/d;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->f(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    goto/16 :goto_0

    nop

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
        :pswitch_8
    .end packed-switch
.end method
