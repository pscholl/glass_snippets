.class final Lcom/google/glass/voice/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V

    iget-object v0, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->b(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->b(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->c(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->d(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->e(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->f(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/voice/network/a;

    invoke-static {v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/a;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/CharSequence;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/CharSequence;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;F)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/a/a/a/d;

    invoke-static {v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/a/a/a/d;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/BaseVoiceInputActivity;[B)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/voice/network/SpeechException;

    invoke-static {v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/SpeechException;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/google/glass/voice/a;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->g(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->a()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method
