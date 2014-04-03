.class public final Lcom/google/googlenav/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/d;


# instance fields
.field protected final a:[I

.field protected final b:[Lcom/google/googlenav/b;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/googlenav/a;->a:[I

    new-array v0, v1, [Lcom/google/googlenav/b;

    iput-object v0, p0, Lcom/google/googlenav/a;->b:[Lcom/google/googlenav/b;

    return-void
.end method

.method private static a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;
    .locals 1

    instance-of v0, p0, Lcom/google/googlenav/common/io/o;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/googlenav/common/io/o;

    const-string v0, "Restrictions_lock"

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

.method private a()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/googlenav/a;->c:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;

    move-result-object v1

    :try_start_0
    const-string v2, "Restrictions"

    invoke-static {v0, v2}, Lcom/google/googlenav/common/h;->a(Lcom/google/googlenav/common/io/PersistentStore;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/googlenav/a;->b(Ljava/io/DataInput;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-static {v1}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    :goto_1
    iget-boolean v0, p0, Lcom/google/googlenav/a;->c:Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "CFR"

    invoke-static {v2, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    throw v0
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/g;->e:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v3, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/googlenav/a;->b:[Lcom/google/googlenav/b;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/googlenav/a;->b:[Lcom/google/googlenav/b;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/googlenav/common/io/b/a;

    sget-object v5, Lcom/google/i/a/a/b/g;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v4, v5}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlenav/a;->a:[I

    aget v6, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/googlenav/a;->b:[Lcom/google/googlenav/b;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/google/googlenav/b;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4, v3}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    invoke-static {v2}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v3, "Restrictions"

    invoke-interface {v2, v1, v3}, Lcom/google/googlenav/common/io/PersistentStore;->a([BLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string v1, "Restrictions"

    invoke-interface {v2, v1}, Lcom/google/googlenav/common/io/PersistentStore;->b(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    invoke-static {v1}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private b(Ljava/io/DataInput;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v1, 0x1

    sget-object v2, Lcom/google/i/a/a/b/g;->e:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v6

    if-ltz v6, :cond_0

    if-gt v6, v9, :cond_0

    iget-object v7, p0, Lcom/google/googlenav/a;->a:[I

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v8

    aput v8, v7, v6

    invoke-virtual {v5, v9}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v7

    if-lez v7, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/a;->b:[Lcom/google/googlenav/b;

    new-instance v7, Lcom/google/googlenav/b;

    invoke-virtual {v5, v9}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/google/googlenav/b;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    aput-object v7, v0, v6

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/io/DataInput;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/a;->b(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/a;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/a;->d:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CFR"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a([I)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/a;->d:Z

    invoke-direct {p0}, Lcom/google/googlenav/a;->a()Z

    new-instance v1, Lcom/google/googlenav/c;

    invoke-direct {v1, p0}, Lcom/google/googlenav/c;-><init>(Lcom/google/googlenav/d;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/c;->a(J)V

    const-string v0, "6200"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/c;->a(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    iget-object v3, p0, Lcom/google/googlenav/a;->a:[I

    aget v4, p1, v0

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/c;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/googlenav/c;->d()V

    return-void
.end method
