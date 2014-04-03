.class public final Lcom/google/glass/widget/aj;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/aj;->a:Lcom/google/glass/logging/i;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/widget/aj;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/google/glass/widget/aj;->a(Landroid/content/Context;IZZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IZZ)Landroid/graphics/Typeface;
    .locals 3

    new-instance v1, Lcom/google/glass/widget/al;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/glass/widget/al;-><init>(IZZ)V

    sget-object v2, Lcom/google/glass/widget/aj;->b:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/glass/widget/aj;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Lcom/google/glass/widget/aj;->a(Landroid/content/Context;Lcom/google/glass/widget/al;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/glass/widget/al;)Landroid/graphics/Typeface;
    .locals 9

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lcom/google/glass/widget/aj;->a(Lcom/google/glass/widget/al;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v0, "/system/glass_fonts"

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v0, Lcom/google/glass/widget/aj;->a:Lcom/google/glass/logging/i;

    const-string v3, "Font was loaded from system."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v0, v3, v5}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    sget-object v3, Lcom/google/glass/widget/aj;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/glass/widget/aj;->a:Lcom/google/glass/logging/i;

    const-string v5, "Loaded %s in %sms"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/glass/widget/aj;->a:Lcom/google/glass/logging/i;

    const-string v5, "Font wasn\'t in system, checking in assets."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/glass/widget/aj;->a:Lcom/google/glass/logging/i;

    const-string v2, "Failed to load font, returning null."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static a(Lcom/google/glass/widget/al;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/google/glass/widget/al;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/widget/al;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/widget/al;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Only regular (default) or bold can be combined with condensed."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v0, p0, Lcom/google/glass/widget/al;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/google/glass/widget/al;->c:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/widget/al;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "Roboto-CondensedItalic.ttf"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "Roboto-Condensed.ttf"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/glass/widget/al;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "Roboto-Italic.ttf"

    goto :goto_0

    :cond_3
    const-string v0, "Roboto-Regular.ttf"

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/glass/widget/al;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "Roboto-ThinItalic.ttf"

    goto :goto_0

    :cond_4
    const-string v0, "Roboto-Thin.ttf"

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/google/glass/widget/al;->b:Z

    if-eqz v0, :cond_5

    const-string v0, "Roboto-LightItalic.ttf"

    goto :goto_0

    :cond_5
    const-string v0, "Roboto-Light.ttf"

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/google/glass/widget/al;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "Roboto-MediumItalic.ttf"

    goto :goto_0

    :cond_6
    const-string v0, "Roboto-Medium.ttf"

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/glass/widget/al;->c:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/glass/widget/al;->b:Z

    if-eqz v0, :cond_7

    const-string v0, "Roboto-BoldCondensedItalic.ttf"

    goto :goto_0

    :cond_7
    const-string v0, "Roboto-BoldCondensed.ttf"

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/google/glass/widget/al;->b:Z

    if-eqz v0, :cond_9

    const-string v0, "Roboto-BoldItalic.ttf"

    goto :goto_0

    :cond_9
    const-string v0, "Roboto-Bold.ttf"

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/google/glass/widget/al;->b:Z

    if-eqz v0, :cond_a

    const-string v0, "Roboto-BlackItalic.ttf"

    goto :goto_0

    :cond_a
    const-string v0, "Roboto-Black.ttf"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/ak;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/ak;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
