.class final Lcom/google/glass/widget/o;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/n;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/n;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/o;->a:Lcom/google/glass/widget/n;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/widget/o;->a:Lcom/google/glass/widget/n;

    invoke-virtual {v0}, Lcom/google/glass/widget/n;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/widget/o;->a:Lcom/google/glass/widget/n;

    invoke-static {v0}, Lcom/google/glass/widget/n;->a(Lcom/google/glass/widget/n;)V

    iget-object v0, p0, Lcom/google/glass/widget/o;->a:Lcom/google/glass/widget/n;

    invoke-static {v0}, Lcom/google/glass/widget/n;->b(Lcom/google/glass/widget/n;)Lcom/google/glass/widget/r;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;)Lcom/google/glass/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/o;->a:Lcom/google/glass/widget/n;

    invoke-static {v0}, Lcom/google/glass/widget/n;->b(Lcom/google/glass/widget/n;)Lcom/google/glass/widget/r;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;)Lcom/google/glass/widget/q;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/widget/o;->a:Lcom/google/glass/widget/n;

    invoke-static {v0}, Lcom/google/glass/widget/n;->b(Lcom/google/glass/widget/n;)Lcom/google/glass/widget/r;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;)Lcom/google/glass/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/o;->a:Lcom/google/glass/widget/n;

    invoke-static {v0}, Lcom/google/glass/widget/n;->c(Lcom/google/glass/widget/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/o;->a:Lcom/google/glass/widget/n;

    invoke-static {v0}, Lcom/google/glass/widget/n;->b(Lcom/google/glass/widget/n;)Lcom/google/glass/widget/r;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;)Lcom/google/glass/widget/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/widget/q;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/o;->a:Lcom/google/glass/widget/n;

    invoke-static {v0}, Lcom/google/glass/widget/n;->b(Lcom/google/glass/widget/n;)Lcom/google/glass/widget/r;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;)Lcom/google/glass/widget/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/widget/q;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
