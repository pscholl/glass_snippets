.class public Lcom/google/glass/logging/FeedbackActivity;
.super Lcom/google/glass/app/GlassActivity;


# static fields
.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private final c:Lcom/google/glass/timeline/d;

.field private d:Lcom/google/glass/voice/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/FeedbackActivity;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    new-instance v0, Lcom/google/glass/timeline/d;

    invoke-direct {v0}, Lcom/google/glass/timeline/d;-><init>()V

    iput-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->c:Lcom/google/glass/timeline/d;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/voice/x;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->d:Lcom/google/glass/voice/x;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/logging/FeedbackActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/logging/FeedbackActivity;->b:Lcom/google/glass/logging/i;

    const-string v1, "No intent."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "screenshot_file_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "recovery_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/google/glass/util/Feedback$RecoveryAction;

    const-string v1, "bugreport"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "additional_files"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/google/glass/logging/FeedbackActivity;->b:Lcom/google/glass/logging/i;

    const-string v1, "name: %s, description: %s, screenshot: %s, recoveryAction: %s, shouldBugreport: %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v7

    aput-object p1, v4, v10

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v7, 0x3

    aput-object v9, v4, v7

    const/4 v7, 0x4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v7, Lcom/google/glass/logging/b;

    invoke-direct {v7, p0}, Lcom/google/glass/logging/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/glass/a/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-instance v0, Lcom/google/glass/logging/e;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/logging/e;-><init>(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/logging/b;[Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/timeline/d;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->c:Lcom/google/glass/timeline/d;

    return-object v0
.end method


# virtual methods
.method public final d()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/logging/FeedbackActivity;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method protected final e()I
    .locals 1

    sget v0, Lcom/google/glass/logging/r;->feedback:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/app/GlassActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->d:Lcom/google/glass/voice/x;

    invoke-static {p2, p3}, Lcom/google/glass/voice/x;->a(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/logging/FeedbackActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/google/glass/logging/FeedbackActivity;->b:Lcom/google/glass/logging/i;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/glass/voice/x;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/x;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/glass/logging/FeedbackActivity;->d:Lcom/google/glass/voice/x;

    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "allow_voice_note"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Lcom/google/glass/widget/p;

    invoke-virtual {p0}, Lcom/google/glass/logging/FeedbackActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/widget/p;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v2, Lcom/google/glass/logging/q;->ic_bug_large:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/p;->c(I)Lcom/google/glass/widget/p;

    move-result-object v1

    sget v2, Lcom/google/glass/logging/s;->capturing_bugreport:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/p;->a(I)Lcom/google/glass/widget/p;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/glass/widget/p;->c(Z)Lcom/google/glass/widget/p;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/glass/widget/p;->d(Z)Lcom/google/glass/widget/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/p;->b(Z)Lcom/google/glass/widget/p;

    move-result-object v1

    new-instance v2, Lcom/google/glass/logging/d;

    invoke-direct {v2, p0}, Lcom/google/glass/logging/d;-><init>(Lcom/google/glass/logging/FeedbackActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/p;->a(Lcom/google/glass/widget/q;)Lcom/google/glass/widget/p;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/logging/s;->sharing_menu_tap_to_annotate:I

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/p;->b(I)Lcom/google/glass/widget/p;

    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/widget/p;->a()Lcom/google/glass/widget/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/FeedbackActivity;->a(Lcom/google/glass/widget/n;)V

    return-void
.end method
