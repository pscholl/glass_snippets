.class final Lcom/google/android/maps/driveabout/store/av;
.super Lcom/google/android/maps/driveabout/store/m;


# instance fields
.field a:[Lcom/google/googlenav/common/io/b/a;

.field private b:Lcom/google/googlenav/common/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/a;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/m;-><init>(I)V

    new-array v0, v0, [Lcom/google/googlenav/common/io/b/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/av;->a:[Lcom/google/googlenav/common/io/b/a;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/av;->b:Lcom/google/googlenav/common/a;

    return-void
.end method

.method private e()Lcom/google/googlenav/common/io/b/a;
    .locals 11

    const/16 v10, 0x16

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/i/a/a/b/n;->f:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/16 v0, 0x80

    invoke-virtual {v2, v8, v0}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/store/av;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/aw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aw;->f()Lcom/google/android/maps/driveabout/e/u;

    move-result-object v0

    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/b/a;->a(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/u;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/u;->b()[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/b/a;->a(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-virtual {v5, v8, v6}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v7, v6}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    invoke-virtual {v3, v10, v5}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v7, v3}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/av;->c()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/store/av;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    new-instance v3, Lcom/google/googlenav/common/io/b/a;

    sget-object v4, Lcom/google/i/a/a/b/aa;->i:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v8, v4}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    invoke-virtual {v2, v9, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/av;->e()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method protected final a(Lcom/google/android/maps/driveabout/store/p;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/av;->c()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/aw;

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/store/av;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/store/aw;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/aw;->a(Lcom/google/android/maps/driveabout/store/aw;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-object v0, Lcom/google/i/a/a/b/n;->h:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/av;->c()I

    move-result v0

    if-eq v2, v0, :cond_1

    :cond_0
    return v5

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/av;->a:[Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/e/au;
    .locals 9

    const/4 v8, 0x3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/av;->a:[Lcom/google/googlenav/common/io/b/a;

    aget-object v2, v0, p1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lcom/google/android/maps/driveabout/e/aq;

    invoke-direct {v4}, Lcom/google/android/maps/driveabout/e/aq;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/store/av;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/aw;

    invoke-virtual {v2, v8}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v8, v1}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    invoke-static {}, Lcom/google/android/maps/driveabout/e/aq;->a()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/google/android/maps/driveabout/store/au;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/e/ap;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/j;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x14

    if-ne v6, v7, :cond_3

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/e/j;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/maps/driveabout/e/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aw;->f()Lcom/google/android/maps/driveabout/e/u;

    move-result-object v5

    const-wide/16 v2, -0x1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/u;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/av;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/u;->d()J

    move-result-wide v5

    add-long/2addr v2, v5

    :cond_2
    new-instance v5, Lcom/google/android/maps/driveabout/e/be;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/e/be;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/e/be;->a(Lcom/google/android/maps/driveabout/e/aq;)Lcom/google/android/maps/driveabout/e/be;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/e/be;->a(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/be;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/be;->a([Lcom/google/android/maps/driveabout/e/j;)Lcom/google/android/maps/driveabout/e/be;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/e/be;->a(J)Lcom/google/android/maps/driveabout/e/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/be;->a()Lcom/google/android/maps/driveabout/e/bd;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
