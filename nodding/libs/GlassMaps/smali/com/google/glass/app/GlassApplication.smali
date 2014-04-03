.class public Lcom/google/glass/app/GlassApplication;
.super Landroid/app/Application;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Lcom/google/glass/logging/i;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# instance fields
.field protected b:Landroid/media/AudioManager;

.field protected c:Lcom/google/glass/util/cc;

.field private h:Lcom/google/glass/sound/SoundManager;

.field private i:Lcom/google/glass/userevent/a;

.field private j:Lcom/google/glass/net/h;

.field private k:Lcom/google/glass/net/h;

.field private l:Lcom/google/glass/net/p;

.field private m:Landroid/util/LruCache;

.field private n:Lcom/google/glass/util/ay;

.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->d:Ljava/lang/String;

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->e:Lcom/google/glass/logging/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "private-cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "private-cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/google/glass/app/GlassApplication;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/glass/app/GlassApplication;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context must be a child of the GlassApplication context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/glass/app/GlassApplication;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static j()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/app/GlassApplication;->e:Lcom/google/glass/logging/i;

    const-string v1, "Using testing cache directory at %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/glass/app/GlassApplication;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/app/GlassApplication;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/app/GlassApplication;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private static k()V
    .locals 2

    new-instance v0, Lcom/google/glass/util/ah;

    sget-object v1, Lcom/google/glass/app/GlassApplication;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/glass/util/ah;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/glass/util/ah;->a(Lcom/google/glass/util/ah;)V

    return-void
.end method

.method private l()Lcom/google/glass/util/cc;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->c:Lcom/google/glass/util/cc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/util/cc;

    invoke-direct {v0, p0}, Lcom/google/glass/util/cc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->c:Lcom/google/glass/util/cc;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->c:Lcom/google/glass/util/cc;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/glass/sound/SoundManager;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->h:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;->l()Lcom/google/glass/util/cc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/util/cc;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/google/glass/net/h;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->j:Lcom/google/glass/net/h;

    return-object v0
.end method

.method public final c()Lcom/google/glass/net/h;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->l:Lcom/google/glass/net/p;

    invoke-virtual {v0}, Lcom/google/glass/net/p;->a()Lcom/google/glass/net/h;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/glass/userevent/a;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->i:Lcom/google/glass/userevent/a;

    return-object v0
.end method

.method public final e()Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->m:Landroid/util/LruCache;

    return-object v0
.end method

.method public final f()Lcom/google/glass/util/g;
    .locals 4

    new-instance v0, Lcom/google/glass/util/g;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/app/GlassApplication;->o:I

    iget v3, p0, Lcom/google/glass/app/GlassApplication;->p:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/g;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method protected g()V
    .locals 5

    new-instance v0, Lcom/google/glass/util/CachedFilesManager;

    invoke-static {}, Lcom/google/glass/app/GlassApplication;->j()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x200000000L

    const/16 v4, 0x7d0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager;)V

    return-void
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenAsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-static {p0}, Lcom/google/glass/widget/aj;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/google/glass/app/GlassApplication;->o:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/google/glass/app/GlassApplication;->p:I

    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;->l()Lcom/google/glass/util/cc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->c:Lcom/google/glass/util/cc;

    new-instance v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, p0}, Lcom/google/glass/sound/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->h:Lcom/google/glass/sound/SoundManager;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->b:Landroid/media/AudioManager;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->m:Landroid/util/LruCache;

    new-instance v0, Lcom/google/glass/userevent/a;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->i:Lcom/google/glass/userevent/a;

    new-instance v0, Lcom/google/glass/net/a;

    invoke-direct {v0, p0}, Lcom/google/glass/net/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/glass/net/h;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/util/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/google/glass/net/h;-><init>(Landroid/content/Context;Lcom/google/glass/net/b;ZLjava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/google/glass/app/GlassApplication;->j:Lcom/google/glass/net/h;

    new-instance v1, Lcom/google/glass/app/d;

    iget-object v2, p0, Lcom/google/glass/app/GlassApplication;->j:Lcom/google/glass/net/h;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/app/d;-><init>(Lcom/google/glass/app/GlassApplication;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/google/glass/app/d;->start()V

    new-instance v1, Lcom/google/glass/net/h;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/util/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/google/glass/net/h;-><init>(Landroid/content/Context;Lcom/google/glass/net/b;ZLjava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/google/glass/app/GlassApplication;->k:Lcom/google/glass/net/h;

    new-instance v0, Lcom/google/glass/app/e;

    iget-object v1, p0, Lcom/google/glass/app/GlassApplication;->k:Lcom/google/glass/net/h;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/app/e;-><init>(Lcom/google/glass/app/GlassApplication;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/glass/app/e;->start()V

    new-instance v0, Lcom/google/glass/net/p;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/net/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->l:Lcom/google/glass/net/p;

    new-instance v0, Lcom/google/glass/util/ay;

    invoke-direct {v0, p0}, Lcom/google/glass/util/ay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->n:Lcom/google/glass/util/ay;

    invoke-static {p0}, Lcom/google/glass/location/GlassLocationManager;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/glass/maps/MapHelper;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/glass/entity/y;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/glass/app/GlassApplication;->k()V

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->g()V

    new-instance v0, Lcom/google/glass/entity/p;

    invoke-direct {v0}, Lcom/google/glass/entity/p;-><init>()V

    invoke-static {v0}, Lcom/google/glass/entity/p;->a(Lcom/google/glass/entity/p;)V

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/app/f;

    invoke-direct {v1, p0}, Lcom/google/glass/app/f;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/glass/app/GlassApplication;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/glass/entity/b;

    invoke-direct {v0, p0}, Lcom/google/glass/entity/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/glass/entity/b;->a(Lcom/google/glass/entity/b;)V

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/app/g;

    invoke-direct {v1, p0}, Lcom/google/glass/app/g;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/glass/entity/b;->a()Lcom/google/glass/entity/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/b;->c()V

    :cond_0
    return-void
.end method
