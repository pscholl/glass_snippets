.class public final Lcom/google/googlenav/common/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Ljava/util/HashSet;

.field private static c:J

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Lcom/google/googlenav/common/j;

.field private static h:Z

.field private static i:Lcom/google/googlenav/common/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "USER_EVENTS"

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/i;->a:Lcom/google/glass/logging/i;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/googlenav/common/i;->c:J

    sput-boolean v2, Lcom/google/googlenav/common/i;->d:Z

    sput-boolean v2, Lcom/google/googlenav/common/i;->e:Z

    sput-boolean v3, Lcom/google/googlenav/common/i;->f:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    sput-boolean v2, Lcom/google/googlenav/common/i;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/common/i;
    .locals 1

    sget-object v0, Lcom/google/googlenav/common/i;->i:Lcom/google/googlenav/common/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/common/i;

    invoke-direct {v0}, Lcom/google/googlenav/common/i;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/i;->i:Lcom/google/googlenav/common/i;

    :cond_0
    sget-object v0, Lcom/google/googlenav/common/i;->i:Lcom/google/googlenav/common/i;

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    array-length v0, p0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(J)V
    .locals 1

    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    invoke-static {v0, p0, p1}, Lcom/google/googlenav/common/i;->a(Lcom/google/googlenav/common/j;J)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/common/j;)V
    .locals 1

    sput-object p0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/common/i;->h:Z

    invoke-static {}, Lcom/google/googlenav/common/i;->e()V

    return-void
.end method

.method private static a(Lcom/google/googlenav/common/j;J)V
    .locals 4

    invoke-static {}, Lcom/google/googlenav/common/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-static {p0}, Lcom/google/googlenav/common/i;->b(Lcom/google/googlenav/common/j;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    :goto_1
    sput-wide p1, Lcom/google/googlenav/common/i;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/googlenav/common/j;->a([B)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/i/a/a/b/ad;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/googlenav/common/j;->a([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/googlenav/common/j;->a([B)V

    throw v0
.end method

.method private static a(Z[B)V
    .locals 7

    invoke-static {}, Lcom/google/googlenav/common/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/i;->e()V

    invoke-static {}, Lcom/google/googlenav/common/i;->b()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    invoke-static {p1, v0}, Lcom/google/googlenav/common/k;->a([BLjava/util/Set;)Z

    move-result v5

    move-object v2, p1

    :goto_1
    new-instance v0, Lcom/google/googlenav/datarequest/l;

    invoke-static {}, Lcom/google/googlenav/common/i;->f()I

    move-result v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/datarequest/l;-><init>(I[BZZZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    :cond_1
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlenav/common/i;->a(J)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v0

    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/i/a/a/b/ad;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Lcom/google/googlenav/common/io/b/a;->a([B)Lcom/google/googlenav/common/io/b/a;

    sget-object v5, Lcom/google/googlenav/common/i;->b:Ljava/util/HashSet;

    invoke-static {v2, v5}, Lcom/google/googlenav/common/k;->a(Lcom/google/googlenav/common/io/b/a;Ljava/util/Set;)Z

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    invoke-virtual {v2}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "USER_EVENTS"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/googlenav/common/i;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    const/4 v4, 0x3

    const-wide/32 v7, 0x63ff9c

    const/4 v3, 0x1

    const/4 v9, 0x2

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/common/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/i;->e()V

    sget-object v0, Lcom/google/googlenav/common/i;->a:Lcom/google/glass/logging/i;

    const-string v1, "Event: type=%s, status: %s, data: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v3

    aput-object p2, v4, v9

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    invoke-interface {v0}, Lcom/google/googlenav/common/j;->a()[B

    move-result-object v0

    sget-wide v4, Lcom/google/googlenav/common/i;->c:J

    sub-long v4, p3, v4

    if-eqz v0, :cond_2

    array-length v1, v0

    if-eqz v1, :cond_2

    array-length v1, v0

    const/16 v6, 0x258

    if-gt v1, v6, :cond_2

    invoke-static {}, Lcom/google/googlenav/common/i;->b()Z

    move-result v1

    if-nez v1, :cond_1

    cmp-long v1, v4, v7

    if-gtz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/googlenav/common/i;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    cmp-long v1, v4, v7

    if-lez v1, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_6

    :cond_3
    invoke-static {p3, p4}, Lcom/google/googlenav/common/i;->a(J)V

    :goto_1
    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    invoke-interface {v0}, Lcom/google/googlenav/common/j;->a()[B

    move-result-object v0

    :cond_4
    invoke-static {}, Lcom/google/googlenav/common/i;->b()Z

    move-result v1

    if-nez v1, :cond_9

    array-length v1, v0

    if-le v1, v9, :cond_8

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    int-to-short v1, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    :goto_3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/i;->b()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v1, v0

    if-le v1, v9, :cond_5

    const/4 v1, 0x2

    array-length v8, v0

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v0, v1, v8}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_5
    int-to-short v0, p0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-wide/32 v0, 0x63ff9c

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0x64

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_4
    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/j;->a([B)V

    sput-wide p3, Lcom/google/googlenav/common/i;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/google/googlenav/common/i;->a()Lcom/google/googlenav/common/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/i;->a(Z)V

    goto :goto_1

    :cond_7
    :try_start_1
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v8, Lcom/google/i/a/a/b/ad;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v8}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->a([B)Lcom/google/googlenav/common/io/b/a;

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v8, Lcom/google/i/a/a/b/ad;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v8}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8, p0}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const-wide/32 v8, 0x63ff9c

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v8, 0x64

    div-long/2addr v4, v8

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4, v5}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4, p1}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p2}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto/16 :goto_2

    :cond_9
    move v1, v2

    goto/16 :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x4e

    invoke-static {v0, p0, p1}, Lcom/google/googlenav/common/i;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/common/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/i;->e()V

    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    invoke-static {v0}, Lcom/google/googlenav/common/i;->b(Lcom/google/googlenav/common/j;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Lcom/google/googlenav/common/j;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/googlenav/common/j;->b()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/common/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    invoke-interface {v0}, Lcom/google/googlenav/common/j;->c()V

    goto :goto_0
.end method

.method private static c(Lcom/google/googlenav/common/j;)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v12, 0x2

    invoke-static {}, Lcom/google/googlenav/common/i;->d()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Lcom/google/googlenav/common/j;->b()B

    move-result v2

    if-ge v2, v12, :cond_0

    invoke-interface {p0}, Lcom/google/googlenav/common/j;->a()[B

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    if-le v3, v12, :cond_4

    new-instance v3, Lcom/google/googlenav/common/io/b/a;

    sget-object v4, Lcom/google/i/a/a/b/ad;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    if-gez v4, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid numEvents value!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_1
    sget-object v2, Lcom/google/googlenav/common/i;->a:Lcom/google/glass/logging/i;

    const-string v3, "There was an error upgrading the V1 log store."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-nez v0, :cond_0

    invoke-interface {p0, v12}, Lcom/google/googlenav/common/j;->a(B)V

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/common/i;->a(Lcom/google/googlenav/common/j;J)V

    invoke-interface {p0}, Lcom/google/googlenav/common/j;->c()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-virtual {v3, v2, v6, v7}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_3

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/google/googlenav/common/io/b/a;

    sget-object v11, Lcom/google/i/a/a/b/ad;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v10, v11}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v6, 0x2

    invoke-virtual {v10, v6, v7}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v6, 0x3

    invoke-virtual {v10, v6, v8}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {v10, v6, v9}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v10}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Lcom/google/googlenav/common/j;->a(B)V

    invoke-virtual {v3}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/googlenav/common/j;->a([B)V

    invoke-interface {p0}, Lcom/google/googlenav/common/j;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v2, Lcom/google/googlenav/common/i;->a:Lcom/google/glass/logging/i;

    const-string v3, "Successfully upgraded log event store to v2."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private static d()Z
    .locals 2

    invoke-static {}, Lcom/google/googlenav/common/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "No LogEventStore found"

    sget-object v1, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()V
    .locals 3

    sget-boolean v0, Lcom/google/googlenav/common/i;->h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    invoke-interface {v0}, Lcom/google/googlenav/common/j;->b()B

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    invoke-static {v0}, Lcom/google/googlenav/common/i;->c(Lcom/google/googlenav/common/j;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/common/i;->h:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static f()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/common/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private static g()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/common/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/common/i;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/googlenav/common/i;->e()V

    sget-object v0, Lcom/google/googlenav/common/i;->g:Lcom/google/googlenav/common/j;

    invoke-interface {v0}, Lcom/google/googlenav/common/j;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {}, Lcom/google/googlenav/common/i;->g()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-static {p1, v0}, Lcom/google/googlenav/common/i;->a(Z[B)V

    goto :goto_0
.end method
