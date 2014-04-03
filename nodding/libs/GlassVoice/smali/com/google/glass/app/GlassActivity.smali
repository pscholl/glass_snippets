.class public abstract Lcom/google/glass/app/GlassActivity;
.super Lcom/google/glass/input/InputDetectingActivity;
.source "GlassActivity.java"


# static fields
.field public static final EXTRA_SHOULD_FINISH_TURN_SCREEN_OFF:Ljava/lang/String; = "should_finish_turn_screen_off"


# instance fields
.field private androidMenu:Landroid/view/Menu;

.field private contentView:Landroid/view/View;

.field private isOptionsMenuShowing:Z

.field private menu:Lcom/google/glass/widget/OptionMenu;

.field protected menuDialog:Lcom/google/glass/widget/OptionMenuDialog;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private messageDialog:Lcom/google/glass/widget/MessageDialog;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private rebuildMenu:Z

.field private final screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private shouldTurnScreenOff:Z

.field private tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;-><init>()V

    .line 90
    new-instance v0, Lcom/google/glass/app/GlassActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/app/GlassActivity$1;-><init>(Lcom/google/glass/app/GlassActivity;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/app/GlassActivity;)Lcom/google/glass/widget/OptionMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowCameraButton()Z

    move-result v0

    return v0
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/app/GlassActivity;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 709
    if-nez p0, :cond_0

    move-object p0, v0

    .line 716
    .end local p0
    :goto_0
    return-object p0

    .line 711
    .restart local p0
    :cond_0
    instance-of v1, p0, Lcom/google/glass/app/GlassActivity;

    if-eqz v1, :cond_1

    .line 712
    check-cast p0, Lcom/google/glass/app/GlassActivity;

    goto :goto_0

    .line 713
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 714
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassActivity;

    move-result-object p0

    goto :goto_0

    .restart local p0
    :cond_2
    move-object p0, v0

    .line 716
    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 167
    if-nez p1, :cond_0

    .line 168
    iput-boolean v1, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "should_finish_turn_screen_off"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    goto :goto_0
.end method


# virtual methods
.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuDialog;->dismiss()V

    .line 599
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final finishAndTurnScreenOff()V
    .locals 4

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Not turning off screen because we\'re already finishing."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 324
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$integer;->activity_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/app/GlassActivity$2;

    invoke-direct {v2, p0}, Lcom/google/glass/app/GlassActivity$2;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 337
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/PowerHelper;->goToSleep()V

    goto :goto_0
.end method

.method public final finishAndTurnScreenOffIfRequested()V
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldFinishTurnScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finishAndTurnScreenOff()V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finish()V

    goto :goto_0
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    return-object v0
.end method

.method protected getGlassApplication()Lcom/google/glass/app/GlassApplication;
    .locals 1

    .prologue
    .line 398
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    return-object v0
.end method

.method public getMessageText()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    sget v1, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 679
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptionMenu()Lcom/google/glass/widget/OptionMenu;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    return-object v0
.end method

.method public getOptionMenuDialog()Lcom/google/glass/widget/OptionMenuDialog;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    return-object v0
.end method

.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method public getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    return-object v0
.end method

.method public hideMessageDialog()V
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 695
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    .line 592
    return-void
.end method

.method public isMessageShowing()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuShowing()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    return v0
.end method

.method protected logUserEvent(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 410
    return-void
.end method

.method public logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "data"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public onConfirm()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldUseAndroidMenus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/glass/app/GlassActivity;->androidMenu:Landroid/view/Menu;

    .line 224
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->openOptionsMenu()V

    .line 225
    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->androidMenu:Landroid/view/Menu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->androidMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    .line 232
    .local v0, menuFailed:Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v3}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onConfirm()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 245
    :goto_1
    return v2

    .end local v0           #menuFailed:Z
    :cond_1
    move v0, v1

    .line 225
    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    .line 229
    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenuDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v0, v2

    .restart local v0       #menuFailed:Z
    :goto_2
    goto :goto_0

    .end local v0           #menuFailed:Z
    :cond_4
    move v0, v1

    goto :goto_2

    .line 240
    .restart local v0       #menuFailed:Z
    :cond_5
    if-eqz v0, :cond_6

    .line 241
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->onDisallowedInput()V

    move v2, v1

    .line 242
    goto :goto_1

    .line 244
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 115
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance v3, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 125
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 129
    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->provideContentView()I

    move-result v0

    .line 138
    .local v0, contentViewId:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "No content view provided."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldScreenOffFinish()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v1, screenOffFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v3, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    .end local v1           #screenOffFilter:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/glass/app/GlassActivity;->handleIntent(Landroid/content/Intent;)V

    .line 163
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Inflating content view into tuggable container."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    sget v3, Lcom/google/glass/common/R$layout;->glass_activity_tuggable:I

    invoke-super {p0, v3}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 143
    sget v3, Lcom/google/glass/common/R$id;->content_view_container:I

    invoke-virtual {p0, v3}, Lcom/google/glass/app/GlassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    iput-object v3, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    .line 144
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    .line 145
    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    iget-object v4, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Inflating content view to stub."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    sget v3, Lcom/google/glass/common/R$layout;->glass_activity:I

    invoke-super {p0, v3}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 149
    sget v3, Lcom/google/glass/common/R$id;->content_view_stub:I

    invoke-virtual {p0, v3}, Lcom/google/glass/app/GlassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 150
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 151
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldScreenOffFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 205
    :cond_0
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onDestroy()V

    .line 206
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 376
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .parameter "dismissAction"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowDismiss()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 288
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 293
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finishAndTurnScreenOffIfRequested()V

    .line 294
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onFingerCountChanged(IZ)Z

    move-result v0

    .line 281
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "feature"
    .parameter "menu"

    .prologue
    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    .line 627
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/google/glass/app/GlassActivity;->handleIntent(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuCanceled(Lcom/google/glass/widget/OptionMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 611
    return-void
.end method

.method public onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    .line 619
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    .line 188
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldHideMessageDialogOnPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->hideMessageDialog()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->deactivate()V

    .line 196
    :cond_1
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onPause()V

    .line 197
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->androidMenu:Landroid/view/Menu;

    .line 470
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onResume()V

    .line 178
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->activate()V

    .line 181
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onStart()V

    .line 345
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 346
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 264
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 266
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openOptionsMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldUseAndroidMenus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->openOptionsMenu()V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    if-eqz v0, :cond_6

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    if-nez v0, :cond_4

    .line 522
    new-instance v0, Lcom/google/glass/widget/OptionMenu;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    .line 526
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    goto :goto_0

    .line 523
    :cond_4
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    if-eqz v0, :cond_3

    .line 524
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    goto :goto_1

    .line 530
    :cond_5
    iput-boolean v3, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    .line 532
    :cond_6
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-nez v0, :cond_7

    .line 541
    new-instance v0, Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/app/GlassActivity$3;

    invoke-direct {v2, p0}, Lcom/google/glass/app/GlassActivity$3;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/widget/OptionMenuDialog;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/widget/OptionMenuDialog$Listener;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    .line 582
    :cond_7
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenuDialog;->setMenu(Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/widget/OptionMenuDialog;

    .line 583
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuDialog;->show()V

    .line 584
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/app/GlassActivity;->onMenuOpened(ILcom/google/glass/widget/OptionMenu;)V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, -0x1

    return v0
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 442
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 443
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 449
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(Landroid/view/View;)V

    .line 450
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    return-void
.end method

.method public setPowerHelperForTest(Lcom/google/glass/util/PowerHelper;)V
    .locals 0
    .parameter "powerHelper"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 685
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 686
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 687
    return-void
.end method

.method protected shouldAllowDismiss()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAllowHorizontalTugging()Z
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    return v0
.end method

.method protected shouldHideMessageDialogOnPause()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldUseAndroidMenus()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public showError(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter "errorDialog"

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 667
    return-void
.end method

.method public showMessage(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->showMessage(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public showMessage(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter "messageDialog"

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->hideMessageDialog()V

    .line 660
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    .line 661
    invoke-virtual {p1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 662
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 651
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_exclamation_big:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 655
    return-void
.end method
