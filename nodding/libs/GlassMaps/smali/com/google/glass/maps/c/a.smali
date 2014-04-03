.class public final Lcom/google/glass/maps/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/c/a;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/google/glass/maps/c/a;->a:Lcom/google/glass/logging/i;

    const-string v1, "Sending Maps bugreport."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/maps/driveabout/h/f;->e()Lcom/google/android/maps/driveabout/h/f;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd_kk.mm.ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/h/f;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event-log-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".xml"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lcom/google/glass/maps/c/a;->a:Lcom/google/glass/logging/i;

    const-string v4, "Dumping to: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-interface {v2, v4, v6}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/google/android/maps/driveabout/h/f;->a(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "GlassMaps"

    sget-object v2, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/glass/util/Feedback;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZZ[Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
