.class public final Lcom/google/googlenav/c/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# instance fields
.field private b:Lcom/google/googlenav/common/io/b/a;

.field private c:Lcom/google/googlenav/common/io/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/googlenav/c/b;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x4ct
        0x54t
        0x49t
        0x50t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI[B)Z
    .locals 4

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p2

    add-int/2addr v2, p1

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static b([B)Lcom/google/googlenav/common/io/b/a;
    .locals 4

    sget-object v0, Lcom/google/googlenav/c/b;->a:[B

    array-length v0, v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/google/googlenav/common/e/b;->a([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    if-gez v1, :cond_0

    invoke-static {v0}, Lcom/google/googlenav/common/io/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/i/a/a/b/aa;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method private d()Lcom/google/googlenav/common/io/b/a;
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/google/googlenav/c/b;->c:Lcom/google/googlenav/common/io/b/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c/b;->b:Lcom/google/googlenav/common/io/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c/b;->b:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c/b;->b:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c/b;->c:Lcom/google/googlenav/common/io/b/a;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/c/b;->c:Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method


# virtual methods
.method public final a([B)[B
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/google/googlenav/c/b;->a:[B

    invoke-static {p1, v1, v0}, Lcom/google/googlenav/c/b;->a([BI[B)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/google/googlenav/c/b;->b([B)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/c/b;->b:Lcom/google/googlenav/common/io/b/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/c/b;->c:Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/googlenav/c/b;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/googlenav/c/b;->b:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1}, Lcom/google/googlenav/common/io/b/a;->b()I

    move-result v1

    add-int/2addr v1, v0

    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "IOException reading map tile info"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p1, v0

    move-object v0, v1

    goto :goto_1
.end method

.method public final a()[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/c/b;->d()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final b()[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/c/b;->d()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 4

    const/4 v3, 0x3

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/googlenav/c/b;->d()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "year=0"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/common/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
