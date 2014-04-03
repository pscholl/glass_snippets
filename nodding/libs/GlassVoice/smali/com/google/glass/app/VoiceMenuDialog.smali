.class public Lcom/google/glass/app/VoiceMenuDialog;
.super Landroid/app/Dialog;
.source "VoiceMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;
    }
.end annotation


# static fields
.field private static final PRIMARY_MENU:I = 0x0

.field private static final SECONDARY_MENU:I = 0x1

.field private static final connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final activity:Lcom/google/glass/app/GlassVoiceActivity;

.field private final connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private dismissedByUser:Z

.field private hasFocus:Z

.field private menuShowing:I

.field private persistent:Z

.field private primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private singleOptionPrimaryMenu:Z

.field private final voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

.field private voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

.field private final voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/VoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    sget-object v0, Lcom/google/glass/app/VoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connectivityReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I

    .line 63
    iput-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->persistent:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->dismissedByUser:Z

    .line 142
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$1;

    invoke-direct {v0, p0}, Lcom/google/glass/app/VoiceMenuDialog$1;-><init>(Lcom/google/glass/app/VoiceMenuDialog;)V

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 160
    check-cast p1, Lcom/google/glass/app/GlassVoiceActivity;

    .end local p1
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    .line 161
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {p0, v0}, Lcom/google/glass/app/VoiceMenuDialog;->createVoiceInputHelper(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/input/VoiceInputHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 162
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;-><init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    .line 163
    invoke-virtual {p0}, Lcom/google/glass/app/VoiceMenuDialog;->findVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 167
    sget v0, Lcom/google/glass/voiceclient/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    iput v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I

    .line 63
    iput-boolean v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->persistent:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->dismissedByUser:Z

    .line 142
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$1;

    invoke-direct {v0, p0}, Lcom/google/glass/app/VoiceMenuDialog$1;-><init>(Lcom/google/glass/app/VoiceMenuDialog;)V

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 169
    sget v0, Lcom/google/glass/voiceclient/R$layout;->voice_menu_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/VoiceMenuDialog;->setContentView(I)V

    .line 171
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    .line 172
    invoke-direct {p0, p1}, Lcom/google/glass/app/VoiceMenuDialog;->createVoiceInputHelper(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/input/VoiceInputHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 173
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;-><init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    .line 174
    invoke-virtual {p0}, Lcom/google/glass/app/VoiceMenuDialog;->findVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    .line 176
    sget v0, Lcom/google/glass/voiceclient/R$id;->progress_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/VoiceMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 177
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->setListener(Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;)V

    .line 179
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/app/VoiceMenuDialog$2;-><init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/app/VoiceMenuDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/app/GlassVoiceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/app/VoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/app/VoiceMenuDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->progressSlider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/app/VoiceMenuDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->dismissedByUser:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/input/VoiceInputHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/app/VoiceMenuDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->hasFocus:Z

    return v0
.end method

.method private final createVoiceInputHelper(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/input/VoiceInputHelper;
    .locals 3
    .parameter "activity"

    .prologue
    .line 188
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper;

    new-instance v1, Lcom/google/glass/app/VoiceMenuDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/app/VoiceMenuDialog$3;-><init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V

    invoke-static {p1}, Lcom/google/glass/input/VoiceInputHelper;->newUserActivityObserver(Landroid/content/Context;)Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;)V

    return-object v0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .parameter "dismissedByUser"

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->dismissedByUser:Z

    .line 296
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 297
    return-void
.end method

.method findVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 230
    sget v0, Lcom/google/glass/voiceclient/R$id;->voice_menu:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/VoiceMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenu;

    return-object v0
.end method

.method public getVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    return-object v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->persistent:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 307
    iget v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I

    packed-switch v0, :pswitch_data_0

    .line 322
    :goto_0
    return-void

    .line 309
    :pswitch_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0

    .line 312
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->singleOptionPrimaryMenu:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 317
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->animateBackToPrimaryMenu()V

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I

    .line 319
    invoke-virtual {p0}, Lcom/google/glass/app/VoiceMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 254
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->addVoiceServiceListener()V

    .line 256
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->onDismissed()V

    .line 261
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->removeVoiceServiceListener()V

    .line 262
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 263
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 264
    return-void
.end method

.method public onVerticalHeadScroll(F)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 268
    const/high16 v1, 0x4234

    div-float v0, p1, v1

    .line 269
    .local v0, deltaItem:F
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/voice/menu/OverscrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/OverscrollView;->scrollByItem(F)V

    .line 270
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->hasFocus:Z

    .line 302
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 303
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .parameter "persistent"

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->persistent:Z

    .line 286
    return-void
.end method

.method public setPrimaryItems(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, menuItems:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    const/4 v0, 0x1

    .line 235
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->setPrimaryMenuItems(Ljava/util/List;)V

    .line 236
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->singleOptionPrimaryMenu:Z

    .line 237
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .parameter "voiceConfig"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 242
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->setShouldHighlightSelectedItem(Z)V

    .line 247
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->showPrimaryMenu()V

    .line 248
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 249
    return-void
.end method
