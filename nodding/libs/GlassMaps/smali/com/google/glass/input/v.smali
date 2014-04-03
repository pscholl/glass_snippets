.class final Lcom/google/glass/input/v;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/input/t;


# direct methods
.method constructor <init>(Lcom/google/glass/input/t;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/input/v;->a:Lcom/google/glass/input/t;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/input/v;->a:Lcom/google/glass/input/t;

    invoke-static {v0}, Lcom/google/glass/input/t;->a(Lcom/google/glass/input/t;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/input/v;->a:Lcom/google/glass/input/t;

    invoke-static {v0}, Lcom/google/glass/input/t;->b(Lcom/google/glass/input/t;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/input/v;->a:Lcom/google/glass/input/t;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/input/z;

    invoke-virtual {v1, v0}, Lcom/google/glass/input/t;->a(Lcom/google/glass/input/z;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/input/v;->a:Lcom/google/glass/input/t;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/input/t;->a([BII)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/glass/input/v;->a:Lcom/google/glass/input/t;

    invoke-virtual {v0}, Lcom/google/glass/input/t;->e()V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/google/glass/input/v;->a:Lcom/google/glass/input/t;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v0}, Lcom/google/glass/input/t;->b(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
