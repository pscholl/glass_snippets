.class public final Lcom/google/android/maps/driveabout/nav/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/google/android/maps/driveabout/nav/c;

.field private static b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private static c:Lcom/google/googlenav/datarequest/d;

.field private static final d:Ljava/util/ArrayList;


# instance fields
.field private final e:Ljava/util/Locale;

.field private final f:[Lcom/google/android/maps/driveabout/nav/e;

.field private final g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/c;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;[Lcom/google/android/maps/driveabout/nav/e;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/c;->e:Ljava/util/Locale;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/c;->f:[Lcom/google/android/maps/driveabout/nav/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/c;->g:Ljava/util/HashMap;

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/c;->g:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/nav/e;->a(Lcom/google/android/maps/driveabout/nav/e;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DA_DirOpt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 3

    sput-object p1, Lcom/google/android/maps/driveabout/nav/c;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    new-instance v0, Lcom/google/android/maps/driveabout/nav/c;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/maps/driveabout/nav/e;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/c;-><init>(Ljava/util/Locale;[Lcom/google/android/maps/driveabout/nav/e;)V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/c;->a:Lcom/google/android/maps/driveabout/nav/c;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/nav/c;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 5

    const-class v1, Lcom/google/android/maps/driveabout/nav/c;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/c;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/i/a/a/b/h;->s:Lcom/google/googlenav/common/io/b/d;

    invoke-static {p0, v2, v3}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/b/d;)Lcom/google/googlenav/common/io/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/nav/c;->b(Ljava/util/Locale;Lcom/google/googlenav/common/io/b/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/google/android/maps/driveabout/nav/c;->c:Lcom/google/googlenav/datarequest/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "DirectionsOptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load cached options: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_4
    new-instance v0, Lcom/google/android/maps/driveabout/nav/d;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/nav/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/c;->c:Lcom/google/googlenav/datarequest/d;

    sget-object v0, Lcom/google/android/maps/driveabout/nav/c;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    sget-object v2, Lcom/google/android/maps/driveabout/nav/c;->c:Lcom/google/googlenav/datarequest/d;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Ljava/util/Locale;Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/nav/c;->b(Ljava/util/Locale;Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method private static declared-synchronized b(Ljava/util/Locale;Lcom/google/googlenav/common/io/b/a;)V
    .locals 5

    const-class v1, Lcom/google/android/maps/driveabout/nav/c;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    new-array v3, v2, [Lcom/google/android/maps/driveabout/nav/e;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/e;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/e;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/nav/c;->a:Lcom/google/android/maps/driveabout/nav/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/maps/driveabout/nav/c;->a:Lcom/google/android/maps/driveabout/nav/c;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/nav/c;->f:[Lcom/google/android/maps/driveabout/nav/e;

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/nav/c;

    invoke-direct {v0, p0, v3}, Lcom/google/android/maps/driveabout/nav/c;-><init>(Ljava/util/Locale;[Lcom/google/android/maps/driveabout/nav/e;)V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/c;->a:Lcom/google/android/maps/driveabout/nav/c;

    sget-object v0, Lcom/google/android/maps/driveabout/nav/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/google/android/maps/driveabout/nav/c;->c:Lcom/google/googlenav/datarequest/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method
