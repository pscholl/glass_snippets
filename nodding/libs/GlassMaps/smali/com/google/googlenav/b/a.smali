.class public final Lcom/google/googlenav/b/a;
.super Lcom/google/googlenav/datarequest/a;


# static fields
.field private static a:Lcom/google/googlenav/b/a;

.field private static j:Z


# instance fields
.field private b:I

.field private c:Lcom/google/googlenav/c/a;

.field private d:Lcom/google/googlenav/c/a;

.field private e:I

.field private f:I

.field private g:[J

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/b/a;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/googlenav/b/a;->g:[J

    iput v1, p0, Lcom/google/googlenav/b/a;->h:I

    iput v1, p0, Lcom/google/googlenav/b/a;->i:I

    invoke-direct {p0}, Lcom/google/googlenav/b/a;->g()V

    return-void
.end method

.method private static a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;
    .locals 1

    instance-of v0, p0, Lcom/google/googlenav/common/io/o;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/googlenav/common/io/o;

    const-string v0, "savedLocationShiftCoefficients_lock"

    invoke-interface {p0, v0}, Lcom/google/googlenav/common/io/o;->a(Ljava/lang/String;)Lcom/google/googlenav/common/io/n;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/googlenav/common/io/n;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/googlenav/common/io/n;->a()Z

    :cond_0
    return-void
.end method

.method private a(Lcom/google/googlenav/c/a;I)Z
    .locals 6

    const-wide/32 v4, 0x15752a00

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/b/a;->c:Lcom/google/googlenav/c/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/c/a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/b/a;->c:Lcom/google/googlenav/c/a;

    invoke-virtual {v2}, Lcom/google/googlenav/c/a;->a()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, p2, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/c/a;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/b/a;->c:Lcom/google/googlenav/c/a;

    invoke-virtual {v2}, Lcom/google/googlenav/c/a;->b()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_1
    if-gez v1, :cond_2

    int-to-long v1, v1

    add-long/2addr v1, v4

    long-to-int v1, v1

    goto :goto_1

    :cond_2
    int-to-long v2, v1

    sub-long v2, v4, v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/google/googlenav/c/a;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c/a;->a()I

    move-result v2

    const v3, 0x2dc6c0

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c/a;->a()I

    move-result v2

    const v3, 0x337f980

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c/a;->b()I

    move-result v2

    const v3, 0x44aa200

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c/a;->b()I

    move-result v2

    const v3, 0x81b3200

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/googlenav/b/a/a;->a()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1cc

    if-eq v2, v3, :cond_2

    const/16 v3, 0x460

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/google/googlenav/c/a;)Z
    .locals 1

    iget v0, p0, Lcom/google/googlenav/b/a;->e:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/b/a;->a(Lcom/google/googlenav/c/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Lcom/google/googlenav/b/a;
    .locals 1

    sget-object v0, Lcom/google/googlenav/b/a;->a:Lcom/google/googlenav/b/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/b/a;->e()V

    :cond_0
    sget-object v0, Lcom/google/googlenav/b/a;->a:Lcom/google/googlenav/b/a;

    return-object v0
.end method

.method private d(Lcom/google/googlenav/c/a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/b/a;->c:Lcom/google/googlenav/c/a;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/b/a;->d:Lcom/google/googlenav/c/a;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/googlenav/b/a;->d:Lcom/google/googlenav/c/a;

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized e()V
    .locals 2

    const-class v1, Lcom/google/googlenav/b/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/googlenav/b/a;

    invoke-direct {v0}, Lcom/google/googlenav/b/a;-><init>()V

    sput-object v0, Lcom/google/googlenav/b/a;->a:Lcom/google/googlenav/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f()V
    .locals 8

    const-wide/32 v6, 0xf4240

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/b/a;->g:[J

    aput-wide v3, v0, v2

    iget-object v0, p0, Lcom/google/googlenav/b/a;->g:[J

    aput-wide v6, v0, v5

    iget-object v0, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v1, 0x2

    aput-wide v3, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v1, 0x3

    aput-wide v3, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v1, 0x4

    aput-wide v3, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v1, 0x5

    aput-wide v6, v0, v1

    iput v2, p0, Lcom/google/googlenav/b/a;->e:I

    iput v2, p0, Lcom/google/googlenav/b/a;->f:I

    iput v2, p0, Lcom/google/googlenav/b/a;->h:I

    iput v2, p0, Lcom/google/googlenav/b/a;->i:I

    iput v5, p0, Lcom/google/googlenav/b/a;->b:I

    return-void
.end method

.method private declared-synchronized g()V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/b/a;->a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;

    move-result-object v2

    const-string v3, "savedLocationShiftCoefficients"

    invoke-static {v1, v3}, Lcom/google/googlenav/common/h;->a(Lcom/google/googlenav/common/io/PersistentStore;Ljava/lang/String;)Ljava/io/DataInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/google/googlenav/b/a;->a(Ljava/io/DataInput;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :try_start_2
    invoke-static {v2}, Lcom/google/googlenav/b/a;->a(Lcom/google/googlenav/common/io/n;)V

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/b/a;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v3

    :try_start_3
    const-string v3, "FLASH"

    const-string v4, "Error reading coefficients for location shift."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "savedLocationShiftCoefficients"

    invoke-interface {v1, v3}, Lcom/google/googlenav/common/io/PersistentStore;->b(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2}, Lcom/google/googlenav/b/a;->a(Lcom/google/googlenav/common/io/n;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2}, Lcom/google/googlenav/b/a;->a(Lcom/google/googlenav/common/io/n;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private h()Lcom/google/googlenav/common/io/b/a;
    .locals 5

    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/i/a/a/b/r;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/googlenav/b/a;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/b/a;->g:[J

    aget-wide v3, v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/common/io/b/a;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/googlenav/b/a;->c:Lcom/google/googlenav/c/a;

    invoke-virtual {v2}, Lcom/google/googlenav/c/a;->c()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    const/4 v0, 0x4

    iget v2, p0, Lcom/google/googlenav/b/a;->f:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v0, 0x5

    iget v2, p0, Lcom/google/googlenav/b/a;->e:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    return-object v1
.end method

.method private declared-synchronized i()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/b/a;->a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/b/a;->h()Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "savedLocationShiftCoefficients"

    invoke-interface {v1, v0, v3}, Lcom/google/googlenav/common/io/PersistentStore;->a([BLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v2}, Lcom/google/googlenav/b/a;->a(Lcom/google/googlenav/common/io/n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "FLASH"

    const-string v3, "Error writing coefficients for location shift."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "savedLocationShiftCoefficients"

    invoke-interface {v1, v0}, Lcom/google/googlenav/common/io/PersistentStore;->b(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2}, Lcom/google/googlenav/b/a;->a(Lcom/google/googlenav/common/io/n;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2}, Lcom/google/googlenav/b/a;->a(Lcom/google/googlenav/common/io/n;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method public final a(Lcom/google/googlenav/c/a;)Lcom/google/googlenav/c/a;
    .locals 10

    const-wide/32 v8, 0xf4240

    iget-object v0, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {p1}, Lcom/google/googlenav/c/a;->a()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {p1}, Lcom/google/googlenav/c/a;->b()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    div-long/2addr v0, v8

    iget-object v2, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v5, 0x4

    aget-wide v4, v4, v5

    invoke-virtual {p1}, Lcom/google/googlenav/c/a;->a()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    invoke-virtual {p1}, Lcom/google/googlenav/c/a;->b()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    div-long/2addr v2, v8

    invoke-direct {p0, p1}, Lcom/google/googlenav/b/a;->c(Lcom/google/googlenav/c/a;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/b/a;->d(Lcom/google/googlenav/c/a;)V

    :cond_0
    long-to-int v4, v0

    invoke-virtual {p1}, Lcom/google/googlenav/c/a;->a()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlenav/b/a;->h:I

    long-to-int v4, v2

    invoke-virtual {p1}, Lcom/google/googlenav/c/a;->b()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlenav/b/a;->i:I

    new-instance v4, Lcom/google/googlenav/c/a;

    long-to-int v0, v0

    long-to-int v1, v2

    invoke-direct {v4, v0, v1}, Lcom/google/googlenav/c/a;-><init>(II)V

    return-object v4
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 5

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/r;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/b/a;->d:Lcom/google/googlenav/c/a;

    invoke-virtual {v2}, Lcom/google/googlenav/c/a;->c()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;)V

    const-string v0, "REQUEST"

    const-string v1, "Location Shift Request for: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/b/a;->c:Lcom/google/googlenav/c/a;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/google/i/a/a/b/r;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/b/a;->b:I

    iget v2, p0, Lcom/google/googlenav/b/a;->b:I

    if-nez v2, :cond_0

    move v2, v1

    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/google/googlenav/b/a;->g:[J

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2}, Lcom/google/googlenav/common/io/b/a;->c(II)J

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/b/a;->f:I

    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/b/a;->e:I

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/googlenav/c/a;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/b/a;->c:Lcom/google/googlenav/c/a;

    iget v2, p0, Lcom/google/googlenav/b/a;->b:I

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/google/googlenav/b/a;->i()V

    const-string v2, "REQUEST"

    const-string v3, "Location Shift Response for %s"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/googlenav/b/a;->c:Lcom/google/googlenav/c/a;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget v2, p0, Lcom/google/googlenav/b/a;->b:I

    if-nez v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
