.class public abstract Lcom/google/glass/maps/BaseActivity;
.super Lcom/google/glass/app/GlassVoiceActivity;


# instance fields
.field protected final c:Ljava/lang/String;

.field private d:Landroid/widget/FrameLayout;

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/BaseActivity;->c:Ljava/lang/String;

    new-instance v0, Lcom/google/glass/maps/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/BaseActivity$1;-><init>(Lcom/google/glass/maps/BaseActivity;)V

    iput-object v0, p0, Lcom/google/glass/maps/BaseActivity;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/BaseActivity;->z()V

    return-void
.end method

.method private z()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/BaseActivity;->c:Ljava/lang/String;

    const-string v1, "OnBugreport"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/maps/BaseActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maps build info:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/maps/driveabout/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/glass/maps/c/a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/BaseActivity;->d:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/google/glass/maps/cb;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public final a(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/glass/maps/BaseActivity;->c:Ljava/lang/String;

    const-string v1, "OnDismiss"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bk;->glass_screen_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/maps/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/maps/bn;->activity_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    const v2, 0x3f8ccccd

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/a;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/a;-><init>(Lcom/google/glass/maps/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/google/glass/maps/BaseActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/BaseActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/google/glass/maps/BaseActivity;->y()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/google/glass/maps/BaseActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/maps/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected x()V
    .locals 0

    return-void
.end method

.method protected final y()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/BaseActivity;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
