.class public final Lcom/google/android/maps/driveabout/a/an;
.super Lcom/google/android/maps/driveabout/a/a;


# instance fields
.field final a:Landroid/os/Handler;

.field private b:Z

.field private c:Landroid/media/MediaPlayer;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/an;->c:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/a/an;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/an;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/an;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/os/Handler;)Lcom/google/android/maps/driveabout/a/a;
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    if-nez v7, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :try_start_0
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    new-instance v1, Lcom/google/android/maps/driveabout/a/an;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/maps/driveabout/a/an;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error loading sound file from resource"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error loading sound file from resource"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "Error loading sound file from resource"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)Lcom/google/android/maps/driveabout/a/a;
    .locals 3

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Lcom/google/android/maps/driveabout/a/an;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/maps/driveabout/a/an;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Exception creating MediaAlert from file"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/a/an;->b:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/an;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/an;->d()V

    :cond_0
    return-void
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/an;->c:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/an;->d:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f40

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void

    :cond_1
    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_2
    const v0, 0x3f19999a

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/a/b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/an;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/maps/driveabout/a/b;->a(Lcom/google/android/maps/driveabout/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/an;->c:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/google/android/maps/driveabout/a/ao;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/a/ao;-><init>(Lcom/google/android/maps/driveabout/a/an;Lcom/google/android/maps/driveabout/a/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/an;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/an;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Lcom/google/android/maps/driveabout/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/an;->c()V

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/maps/driveabout/a/b;->a(Lcom/google/android/maps/driveabout/a/a;)V

    :cond_0
    return-void
.end method
