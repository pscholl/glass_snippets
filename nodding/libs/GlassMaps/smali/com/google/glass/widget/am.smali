.class final Lcom/google/glass/widget/am;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/RotatingTipsView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/am;->a:Lcom/google/glass/widget/RotatingTipsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/widget/am;->a:Lcom/google/glass/widget/RotatingTipsView;

    invoke-static {v0}, Lcom/google/glass/widget/RotatingTipsView;->a(Lcom/google/glass/widget/RotatingTipsView;)V

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/glass/widget/am;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/widget/am;->a:Lcom/google/glass/widget/RotatingTipsView;

    invoke-static {v0}, Lcom/google/glass/widget/RotatingTipsView;->b(Lcom/google/glass/widget/RotatingTipsView;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/widget/am;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/am;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
