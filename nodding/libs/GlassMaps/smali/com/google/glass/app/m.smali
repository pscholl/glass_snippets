.class public final Lcom/google/glass/app/m;
.super Landroid/app/Dialog;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private c:I

.field private d:Lcom/google/glass/voice/menu/VoiceMenu;

.field private e:Lcom/google/glass/widget/SliderView;

.field private final f:Lcom/google/glass/input/t;

.field private final g:Lcom/google/glass/app/GlassVoiceActivity;

.field private final h:Lcom/google/glass/app/q;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/google/glass/voice/VoiceConfig;

.field private m:Z

.field private final n:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/m;->a:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/app/m;->a:Lcom/google/glass/logging/i;

    const-string v1, "connectivityReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/m;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/google/glass/g/g;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/google/glass/app/m;->c:I

    iput-boolean v1, p0, Lcom/google/glass/app/m;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/m;->j:Z

    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$1;

    invoke-direct {v0, p0}, Lcom/google/glass/app/VoiceMenuDialog$1;-><init>(Lcom/google/glass/app/m;)V

    iput-object v0, p0, Lcom/google/glass/app/m;->n:Lcom/google/glass/util/SafeBroadcastReceiver;

    sget v0, Lcom/google/glass/g/e;->voice_menu_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/m;->setContentView(I)V

    iput-object p1, p0, Lcom/google/glass/app/m;->g:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {p0, p1}, Lcom/google/glass/app/m;->a(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/input/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/m;->f:Lcom/google/glass/input/t;

    new-instance v0, Lcom/google/glass/app/q;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/app/q;-><init>(Lcom/google/glass/app/m;Lcom/google/glass/app/GlassVoiceActivity;)V

    iput-object v0, p0, Lcom/google/glass/app/m;->h:Lcom/google/glass/app/q;

    invoke-direct {p0}, Lcom/google/glass/app/m;->d()Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/m;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    sget v0, Lcom/google/glass/g/d;->progress_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/app/m;->e:Lcom/google/glass/widget/SliderView;

    iget-object v0, p0, Lcom/google/glass/app/m;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/app/m;->h:Lcom/google/glass/app/q;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->setListener(Lcom/google/glass/voice/menu/m;)V

    new-instance v0, Lcom/google/glass/app/n;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/app/n;-><init>(Lcom/google/glass/app/m;Lcom/google/glass/app/GlassVoiceActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/app/m;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private final a(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/input/t;
    .locals 3

    new-instance v0, Lcom/google/glass/input/t;

    new-instance v1, Lcom/google/glass/app/o;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/app/o;-><init>(Lcom/google/glass/app/m;Lcom/google/glass/app/GlassVoiceActivity;)V

    invoke-static {p1}, Lcom/google/glass/input/t;->a(Landroid/content/Context;)Lcom/google/glass/input/aa;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/input/t;-><init>(Landroid/content/Context;Lcom/google/glass/input/ab;Lcom/google/glass/input/aa;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/app/m;)Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/m;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/app/m;)Lcom/google/glass/app/q;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/m;->h:Lcom/google/glass/app/q;

    return-object v0
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/app/m;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic c()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/app/m;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic c(Lcom/google/glass/app/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/app/m;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/google/glass/app/m;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/m;->l:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method private d()Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sget v0, Lcom/google/glass/g/d;->voice_menu:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenu;

    return-object v0
.end method

.method static synthetic e(Lcom/google/glass/app/m;)Lcom/google/glass/input/t;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/m;->f:Lcom/google/glass/input/t;

    return-object v0
.end method

.method static synthetic f(Lcom/google/glass/app/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/app/m;->k:Z

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    const/high16 v0, 0x4234

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/google/glass/app/m;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->b()Lcom/google/glass/voice/menu/OverscrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/OverscrollView;->a(F)V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/m;->l:Lcom/google/glass/voice/VoiceConfig;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/app/m;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->setPrimaryMenuItems(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/app/m;->m:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/app/m;->j:Z

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/app/m;->i:Z

    return v0
.end method

.method public final onBackPressed()V
    .locals 2

    iget v0, p0, Lcom/google/glass/app/m;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/google/glass/app/m;->m:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/m;->f:Lcom/google/glass/input/t;

    iget-object v1, p0, Lcom/google/glass/app/m;->l:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/t;->a(Lcom/google/glass/voice/VoiceConfig;)V

    iget-object v0, p0, Lcom/google/glass/app/m;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/app/m;->c:I

    invoke-virtual {p0}, Lcom/google/glass/app/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->a()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/google/glass/app/m;->n:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/app/m;->g:Lcom/google/glass/app/GlassVoiceActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/glass/app/m;->f:Lcom/google/glass/input/t;

    invoke-virtual {v0}, Lcom/google/glass/input/t;->a()V

    return-void
.end method

.method protected final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/app/m;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a()V

    iget-object v0, p0, Lcom/google/glass/app/m;->f:Lcom/google/glass/input/t;

    invoke-virtual {v0}, Lcom/google/glass/input/t;->c()V

    iget-object v0, p0, Lcom/google/glass/app/m;->n:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/app/m;->g:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/app/m;->k:Z

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/app/m;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->setShouldHighlightSelectedItem(Z)V

    iget-object v0, p0, Lcom/google/glass/app/m;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->d()V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
