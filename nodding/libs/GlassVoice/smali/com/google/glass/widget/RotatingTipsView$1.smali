.class Lcom/google/glass/widget/RotatingTipsView$1;
.super Landroid/os/Handler;
.source "RotatingTipsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/RotatingTipsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/RotatingTipsView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/widget/RotatingTipsView$1;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView$1;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    #calls: Lcom/google/glass/widget/RotatingTipsView;->animateToDefaultMessage()V
    invoke-static {v0}, Lcom/google/glass/widget/RotatingTipsView;->access$000(Lcom/google/glass/widget/RotatingTipsView;)V

    .line 50
    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/glass/widget/RotatingTipsView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView$1;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    #calls: Lcom/google/glass/widget/RotatingTipsView;->animateToNextMessage()V
    invoke-static {v0}, Lcom/google/glass/widget/RotatingTipsView;->access$100(Lcom/google/glass/widget/RotatingTipsView;)V

    .line 54
    const/4 v0, 0x0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/widget/RotatingTipsView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/RotatingTipsView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
