.class final Lcom/google/glass/voice/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/MicrophoneView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/MicrophoneView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/s;->a:Lcom/google/glass/voice/MicrophoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/s;->a:Lcom/google/glass/voice/MicrophoneView;

    invoke-static {v0}, Lcom/google/glass/voice/MicrophoneView;->a(Lcom/google/glass/voice/MicrophoneView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/glass/voice/s;->a:Lcom/google/glass/voice/MicrophoneView;

    invoke-static {v0}, Lcom/google/glass/voice/MicrophoneView;->b(Lcom/google/glass/voice/MicrophoneView;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/s;->a:Lcom/google/glass/voice/MicrophoneView;

    invoke-static {v0}, Lcom/google/glass/voice/MicrophoneView;->a(Lcom/google/glass/voice/MicrophoneView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
