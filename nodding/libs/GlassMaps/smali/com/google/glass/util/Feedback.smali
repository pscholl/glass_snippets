.class public final Lcom/google/glass/util/Feedback;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/Feedback;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZLjava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.FeedbackActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "recovery_action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "bugreport"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "allow_voice_note"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "screenshot_file_path"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "additional_files"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/util/af;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/glass/util/Feedback$RecoveryAction;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    sget-object v0, Lcom/google/glass/util/Feedback;->a:Lcom/google/glass/logging/i;

    const-string v1, "RecoveryAction was null, taking no action."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->b()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/util/Feedback$RecoveryAction;->buildTypes:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/google/glass/util/ae;->a:[I

    invoke-virtual {p1}, Lcom/google/glass/util/Feedback$RecoveryAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    if-eqz v0, :cond_0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenShutdown;->createIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/glass/util/Feedback;->a:Lcom/google/glass/logging/i;

    const-string v2, "recoveryAction %s overridden, does not apply to build type %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZZ[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Feedback;->a:Lcom/google/glass/logging/i;

    const-string v1, "This is a user build, not showing feedback, handling %s triggered by %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p2}, Lcom/google/glass/util/Feedback;->a(Landroid/content/Context;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->a()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    invoke-static {}, Lcom/google/glass/util/Feedback;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-static {p0, v0}, Lcom/google/glass/util/bs;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/glass/util/Feedback;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZLjava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method
