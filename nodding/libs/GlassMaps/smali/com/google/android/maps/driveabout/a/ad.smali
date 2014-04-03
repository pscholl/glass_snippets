.class public Lcom/google/android/maps/driveabout/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/a/aa;


# static fields
.field private static a:Lcom/google/android/maps/driveabout/a/ad;


# instance fields
.field private final b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/Context;

.field private e:Lcom/google/android/maps/driveabout/a/ab;

.field private f:Lcom/google/android/maps/driveabout/a/ag;

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/ad;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/ad;->d:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ad;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/ad;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/ad;->c()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/ad;->e()V

    return-void
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/a/ad;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/ad;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ag;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;Lcom/google/android/maps/driveabout/a/ae;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ag;Lcom/google/android/maps/driveabout/a/ae;[B)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/a/ae;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/ae;->i()Lcom/google/android/maps/driveabout/a/af;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/ae;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ad;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/ae;->i()Lcom/google/android/maps/driveabout/a/af;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/ae;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/ae;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ae;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/ad;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/a/ag;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/maps/driveabout/a/ag;->a(Lcom/google/android/maps/driveabout/a/ag;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/a/ad;->b(I)I

    move-result v1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/a/ag;->a(Lcom/google/android/maps/driveabout/a/ag;)I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/a/ag;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/a/ag;->b(Lcom/google/android/maps/driveabout/a/ag;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/a/ag;->a(Lcom/google/android/maps/driveabout/a/ag;)I

    move-result v3

    invoke-static {v1}, Lcom/google/android/maps/driveabout/a/ad;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/google/android/maps/driveabout/a/ag;->c(Lcom/google/android/maps/driveabout/a/ag;)Lcom/google/android/maps/driveabout/a/ae;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/a/ag;-><init>(Lcom/google/android/maps/driveabout/a/ad;Ljava/util/Locale;ILjava/lang/String;Lcom/google/android/maps/driveabout/a/ae;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ad;->f:Lcom/google/android/maps/driveabout/a/ag;

    if-ne p1, v1, :cond_1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->f:Lcom/google/android/maps/driveabout/a/ag;

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ad;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/a/ag;Lcom/google/android/maps/driveabout/a/ae;[B)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/a/ae;->f()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v1}, Lcom/google/android/maps/driveabout/a/w;->a(Ljava/io/File;)Lcom/google/android/maps/driveabout/a/w;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ad;->f:Lcom/google/android/maps/driveabout/a/ag;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ad;->e:Lcom/google/android/maps/driveabout/a/ab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ad;->e:Lcom/google/android/maps/driveabout/a/ab;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/a/ab;->a(Lcom/google/android/maps/driveabout/a/w;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->e:Lcom/google/android/maps/driveabout/a/ab;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->f:Lcom/google/android/maps/driveabout/a/ag;

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ae;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot save bundle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ag;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot save bundle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ag;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/a/ae;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ag;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private static b(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)Lcom/google/android/maps/driveabout/a/ad;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/a/ad;->a:Lcom/google/android/maps/driveabout/a/ad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/a/ad;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/a/ad;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/a/ad;->a:Lcom/google/android/maps/driveabout/a/ad;

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/a/ad;->a:Lcom/google/android/maps/driveabout/a/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/a/ad;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/ad;->d()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ag;)V

    return-void
.end method

.method private static b(Lcom/google/android/maps/driveabout/a/ae;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/ae;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private declared-synchronized b(Lcom/google/android/maps/driveabout/a/ag;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->f:Lcom/google/android/maps/driveabout/a/ag;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->e:Lcom/google/android/maps/driveabout/a/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->e:Lcom/google/android/maps/driveabout/a/ab;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ab;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->e:Lcom/google/android/maps/driveabout/a/ab;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->f:Lcom/google/android/maps/driveabout/a/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "voice_instructions.zip"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "voice_instructions_imperial.zip"

    goto :goto_0

    :pswitch_1
    const-string v0, "voice_instructions_yards.zip"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/ad;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/util/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/ad;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/maps/driveabout/a/ae;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/ad;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/a/ae;->i()Lcom/google/android/maps/driveabout/a/af;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/ae;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/ae;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/ad;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/maps/driveabout/util/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/ae;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ae;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/ad;->d()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/Locale;ILcom/google/android/maps/driveabout/a/ab;)Lcom/google/android/maps/driveabout/a/w;
    .locals 6

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->c:Ljava/util/Map;

    new-instance v1, Lcom/google/android/maps/driveabout/a/af;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/google/android/maps/driveabout/a/af;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/ae;->f()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/a/w;->a(Ljava/io/File;)Lcom/google/android/maps/driveabout/a/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/ae;->g()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/ad;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/ae;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    new-instance v1, Lcom/google/android/maps/driveabout/a/ag;

    if-eqz v2, :cond_3

    :goto_1
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/a/ag;-><init>(Lcom/google/android/maps/driveabout/a/ad;Ljava/util/Locale;ILcom/google/android/maps/driveabout/a/ae;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/a/ad;->f:Lcom/google/android/maps/driveabout/a/ag;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/a/ad;->e:Lcom/google/android/maps/driveabout/a/ab;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ad;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ad;->f:Lcom/google/android/maps/driveabout/a/ag;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse speech bundle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v2, v3

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "/voice/"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "VoiceBundles"

    return-object v0
.end method
