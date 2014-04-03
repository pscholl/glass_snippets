.class final Lcom/google/glass/util/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/glass/util/cc;


# direct methods
.method constructor <init>(Lcom/google/glass/util/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/ce;->a:Lcom/google/glass/util/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/util/ce;->a:Lcom/google/glass/util/cc;

    invoke-virtual {v0}, Lcom/google/glass/util/cc;->a()V

    iget-object v0, p0, Lcom/google/glass/util/ce;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->c(Lcom/google/glass/util/cc;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
