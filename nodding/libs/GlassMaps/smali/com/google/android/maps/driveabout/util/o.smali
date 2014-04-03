.class final Lcom/google/android/maps/driveabout/util/o;
.super Lcom/google/googlenav/datarequest/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Long;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/util/o;->b:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/util/o;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/util/o;->c:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/util/o;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/maps/driveabout/util/m;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/maps/driveabout/util/o;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {v0, v4, v4}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/o;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/o;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    :cond_0
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/i/a/a/b/e;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/i/a/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/util/o;->c:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/util/o;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    :cond_1
    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    invoke-static {v1}, Lcom/google/googlenav/a/c;->a(Lcom/google/googlenav/common/io/b/a;)V

    invoke-virtual {v1}, Lcom/google/googlenav/common/io/b/a;->b()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 13

    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    sget-object v0, Lcom/google/i/a/a/b/e;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v9, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v4

    if-ne v4, v9, :cond_1

    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v11}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/util/o;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/util/o;->d:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Z

    invoke-virtual {v3, v11}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    const-string v5, "ParameterManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating nav parameters. Hash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/maps/driveabout/util/j;

    invoke-direct {v3, v4}, Lcom/google/android/maps/driveabout/util/j;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    invoke-static {v3}, Lcom/google/android/maps/driveabout/util/l;->a(Lcom/google/android/maps/driveabout/util/j;)Lcom/google/android/maps/driveabout/util/j;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v9}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v12}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/util/o;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/util/o;->e:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Z

    invoke-virtual {v3, v12}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    const-string v5, "ParameterManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating tile zoom progression. Hash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/android/maps/driveabout/vector/e;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/vector/e;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/util/l;->a(Lcom/google/android/maps/driveabout/vector/e;)Lcom/google/android/maps/driveabout/vector/e;

    goto :goto_1

    :cond_2
    invoke-static {v9}, Lcom/google/android/maps/driveabout/util/l;->b(Z)Z

    const-class v1, Lcom/google/android/maps/driveabout/util/l;

    monitor-enter v1

    :try_start_0
    const-class v0, Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v9

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
