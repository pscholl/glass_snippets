.class public final Lcom/google/android/maps/driveabout/store/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/b;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/util/g;

.field private final b:Lcom/google/android/maps/driveabout/util/g;

.field private c:Lcom/google/android/maps/driveabout/store/q;

.field private final d:Lcom/google/googlenav/common/a;

.field private e:Ljava/util/Locale;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/am;->f:I

    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    new-instance v0, Lcom/google/googlenav/common/a/a;

    invoke-direct {v0}, Lcom/google/googlenav/common/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->d:Lcom/google/googlenav/common/a;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/am;->e:Ljava/util/Locale;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/e/p;Z)Lcom/google/android/maps/driveabout/e/o;
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    move-object p1, v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/o;

    if-eqz v0, :cond_2

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    monitor-exit v2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/store/t;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/t;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/p;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "BuildingCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "malformed building id from cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/t;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/e/p;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/store/t;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/t;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/p;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/e/p;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    :try_start_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_8
    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/t;->a:Lcom/google/googlenav/common/io/b/a;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/t;->b:Lcom/google/android/maps/driveabout/store/a;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/e/o;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/a;)Lcom/google/android/maps/driveabout/e/o;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/am;->b(Lcom/google/android/maps/driveabout/e/o;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/o;)Z
    .locals 1

    instance-of v0, p0, Lcom/google/android/maps/driveabout/store/ao;

    return v0
.end method

.method private b(Lcom/google/android/maps/driveabout/e/o;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/o;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/o;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/q;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/q;->b()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/e/p;Lcom/google/googlenav/common/io/b/a;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/b/a;)V

    invoke-virtual {p2, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/g/a/a/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/p;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v6, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/e/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/p;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/b/a;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/q;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/store/am;->f:I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/o;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/e/p;Z)Lcom/google/android/maps/driveabout/e/o;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/p;Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/e/o;
    .locals 8

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/p;

    move-result-object v7

    if-eqz p1, :cond_0

    if-nez v7, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/store/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->d:Lcom/google/googlenav/common/a;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/am;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/am;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/a;-><init>(Lcom/google/googlenav/common/a;IJLcom/google/android/maps/driveabout/store/b;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    if-eqz v1, :cond_2

    invoke-direct {p0, v7, p2}, Lcom/google/android/maps/driveabout/store/am;->b(Lcom/google/android/maps/driveabout/e/p;Lcom/google/googlenav/common/io/b/a;)V

    :cond_2
    invoke-static {p2, v0}, Lcom/google/android/maps/driveabout/e/o;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/a;)Lcom/google/android/maps/driveabout/e/o;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v6

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/am;->b(Lcom/google/android/maps/driveabout/e/o;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/File;)V
    .locals 7

    new-instance v0, Lcom/google/android/maps/driveabout/store/q;

    new-instance v1, Lcom/google/googlenav/common/a/a;

    invoke-direct {v1}, Lcom/google/googlenav/common/a/a;-><init>()V

    const-string v2, "bd"

    sget-object v3, Lcom/google/g/a/a/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    const/16 v4, 0xbb8

    const-wide/32 v5, 0x5265c00

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/store/q;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Lcom/google/googlenav/common/io/b/d;IJ)V

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->e:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/util/Locale;)Z

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    :cond_0
    return-void
.end method

.method public final b()J
    .locals 2

    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public final b(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/o;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/e/p;Z)Lcom/google/android/maps/driveabout/e/o;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/q;->c()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/google/android/maps/driveabout/e/p;)V
    .locals 6

    new-instance v0, Lcom/google/android/maps/driveabout/store/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->d:Lcom/google/googlenav/common/a;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/am;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/am;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/a;-><init>(Lcom/google/googlenav/common/a;IJLcom/google/android/maps/driveabout/store/b;)V

    new-instance v1, Lcom/google/android/maps/driveabout/store/ao;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/maps/driveabout/store/ao;-><init>(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/store/a;Lcom/google/android/maps/driveabout/store/an;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
