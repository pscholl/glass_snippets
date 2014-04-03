.class public final Lcom/google/googlenav/common/b;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field private static final g:Lcom/google/glass/logging/i;

.field private static h:Lcom/google/googlenav/common/b;

.field private static i:Ljava/lang/String;

.field private static j:Landroid/content/Context;

.field private static o:Ljava/lang/Thread;


# instance fields
.field protected b:Lcom/google/googlenav/common/io/i;

.field protected c:Lcom/google/googlenav/common/io/PersistentStore;

.field protected d:Lcom/google/googlenav/common/graphics/b;

.field protected e:Lcom/google/googlenav/common/graphics/a;

.field protected f:Landroid/content/Context;

.field private final k:I

.field private l:F

.field private final m:F

.field private final n:F

.field private volatile p:Z

.field private q:Lcom/google/googlenav/common/f;

.field private final r:Lcom/google/googlenav/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MAPS"

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/b;->g:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x4320

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/b;->p:Z

    new-instance v0, Lcom/google/googlenav/common/a/a;

    invoke-direct {v0}, Lcom/google/googlenav/common/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->r:Lcom/google/googlenav/common/a;

    invoke-static {}, Lcom/google/googlenav/common/e/i;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/b;->f:Landroid/content/Context;

    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/googlenav/common/b;->k:I

    iput v1, p0, Lcom/google/googlenav/common/b;->m:F

    iput v1, p0, Lcom/google/googlenav/common/b;->n:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/googlenav/common/b;->l:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/high16 v4, 0x3fd0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/b;->p:Z

    new-instance v0, Lcom/google/googlenav/common/a/a;

    invoke-direct {v0}, Lcom/google/googlenav/common/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->r:Lcom/google/googlenav/common/a;

    iput-object p1, p0, Lcom/google/googlenav/common/b;->f:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/b;->o:Ljava/lang/Thread;

    invoke-static {p0}, Lcom/google/googlenav/common/b;->a(Lcom/google/googlenav/common/b;)V

    invoke-direct {p0}, Lcom/google/googlenav/common/b;->i()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/google/googlenav/common/b;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/googlenav/common/b;->l:F

    :goto_0
    iget v0, p0, Lcom/google/googlenav/common/b;->k:I

    int-to-float v0, v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    :cond_0
    iput v0, p0, Lcom/google/googlenav/common/b;->m:F

    iput v0, p0, Lcom/google/googlenav/common/b;->n:F

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/b;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/b;->a(Ljava/util/Locale;)V

    return-void

    :cond_1
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/googlenav/common/b;->k:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/googlenav/common/b;->l:F

    goto :goto_0

    :cond_2
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/google/googlenav/common/b;->m:F

    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/google/googlenav/common/b;->n:F

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/google/googlenav/common/b;->m:F

    iput v0, p0, Lcom/google/googlenav/common/b;->n:F

    goto :goto_1
.end method

.method public static a()Lcom/google/googlenav/common/b;
    .locals 1

    sget-object v0, Lcom/google/googlenav/common/b;->h:Lcom/google/googlenav/common/b;

    return-object v0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/googlenav/common/f;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/googlenav/common/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/googlenav/common/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/google/googlenav/common/b;->j:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/google/googlenav/common/b;)V
    .locals 0

    sput-object p0, Lcom/google/googlenav/common/b;->h:Lcom/google/googlenav/common/b;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/common/b;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/common/io/j;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/j;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->c:Lcom/google/googlenav/common/io/PersistentStore;

    :goto_0
    new-instance v0, Lcom/google/googlenav/common/io/a/b;

    iget-object v1, p0, Lcom/google/googlenav/common/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->b:Lcom/google/googlenav/common/io/i;

    new-instance v0, Lcom/google/googlenav/common/graphics/android/b;

    invoke-direct {v0}, Lcom/google/googlenav/common/graphics/android/b;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->e:Lcom/google/googlenav/common/graphics/a;

    new-instance v0, Lcom/google/googlenav/common/graphics/android/a;

    iget-object v1, p0, Lcom/google/googlenav/common/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/graphics/android/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->d:Lcom/google/googlenav/common/graphics/b;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/googlenav/common/io/a/a;

    invoke-direct {v0, p1}, Lcom/google/googlenav/common/io/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->c:Lcom/google/googlenav/common/io/PersistentStore;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/googlenav/common/io/a/e;

    iget-object v1, p0, Lcom/google/googlenav/common/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->c:Lcom/google/googlenav/common/io/PersistentStore;

    goto :goto_0
.end method

.method private a(Ljava/util/Locale;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/common/b;->l()Lcom/google/googlenav/common/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/f;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/common/b;->l()Lcom/google/googlenav/common/f;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/common/b;->m()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/common/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/google/googlenav/common/f;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/google/googlenav/common/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/googlenav/common/b;->h:Lcom/google/googlenav/common/b;

    iget-object v0, v0, Lcom/google/googlenav/common/b;->q:Lcom/google/googlenav/common/f;

    invoke-virtual {v0}, Lcom/google/googlenav/common/f;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/common/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v6

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    sget-object v2, Lcom/google/googlenav/common/b;->g:Lcom/google/glass/logging/i;

    const-string v3, "Error getting distribution channel for key %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/i;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/googlenav/common/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "6.2.0.0"

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x5f

    const/16 v5, 0x2d

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/b;->q:Lcom/google/googlenav/common/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/common/f;->a(Ljava/lang/String;)Lcom/google/googlenav/common/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/b;->q:Lcom/google/googlenav/common/f;

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/common/b;->k()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/b;->i:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/common/b;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "unknown"

    sput-object v0, Lcom/google/googlenav/common/b;->i:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/common/b;->j()V

    return-void
.end method

.method private j()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/common/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/c;-><init>(Lcom/google/googlenav/common/b;)V

    invoke-static {v0}, Lcom/google/googlenav/common/io/g;->a(Lcom/google/googlenav/common/io/h;)V

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 3

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Web"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "-dogfood"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private l()Lcom/google/googlenav/common/f;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/b;->q:Lcom/google/googlenav/common/f;

    return-object v0
.end method

.method private m()[Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/googlenav/common/b;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "en"

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/b;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/b;->a:[Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/google/googlenav/common/b;->a:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final e()Lcom/google/googlenav/common/io/i;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/b;->b:Lcom/google/googlenav/common/io/i;

    return-object v0
.end method

.method public final f()Lcom/google/googlenav/common/io/PersistentStore;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/b;->c:Lcom/google/googlenav/common/io/PersistentStore;

    return-object v0
.end method

.method public final g()Lcom/google/googlenav/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/b;->r:Lcom/google/googlenav/common/a;

    return-object v0
.end method
