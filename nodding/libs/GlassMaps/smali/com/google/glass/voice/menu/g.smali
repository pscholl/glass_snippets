.class final Lcom/google/glass/voice/menu/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/menu/VoiceMenu;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/g;->a:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/g;->a:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/voice/menu/g;->a:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    if-eq v1, v0, :cond_1

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
