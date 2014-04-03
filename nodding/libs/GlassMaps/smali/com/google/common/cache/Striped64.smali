.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final threadHashCode:Lcom/google/common/cache/be;


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/cache/be;

    invoke-direct {v0}, Lcom/google/common/cache/be;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Lcom/google/common/cache/be;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    :try_start_0
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-class v0, Lcom/google/common/cache/Striped64;

    sget-object v1, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "base"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/common/cache/Striped64;->baseOffset:J

    sget-object v1, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "busy"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/google/common/cache/ba;

    invoke-direct {v0}, Lcom/google/common/cache/ba;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 8

    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .locals 6

    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .locals 4

    iget-object v1, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/bb;

    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    iput-wide p1, v3, Lcom/google/common/cache/bb;->a:J

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final retryUpdate(JLcom/google/common/cache/bd;Z)V
    .locals 11

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p3, Lcom/google/common/cache/bd;->b:I

    move v2, v0

    move v0, v1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/bb;

    if-eqz v3, :cond_b

    array-length v5, v3

    if-lez v5, :cond_b

    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v2

    aget-object v6, v3, v6

    if-nez v6, :cond_4

    iget v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/common/cache/bb;

    invoke-direct {v3, p1, p2}, Lcom/google/common/cache/bb;-><init>(J)V

    iget v5, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/bb;

    if-eqz v5, :cond_e

    array-length v6, v5

    if-lez v6, :cond_e

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v2

    aget-object v7, v5, v6

    if-nez v7, :cond_e

    aput-object v3, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    :goto_1
    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v3, :cond_0

    :cond_1
    :goto_2
    iput v2, p3, Lcom/google/common/cache/bd;->b:I

    return-void

    :catchall_0
    move-exception v0

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_2
    move v0, v1

    :cond_3
    :goto_3
    shl-int/lit8 v3, v2, 0xd

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x11

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v2, 0x5

    xor-int/2addr v2, v3

    goto :goto_0

    :cond_4
    if-nez p4, :cond_5

    move p4, v4

    goto :goto_3

    :cond_5
    iget-wide v7, v6, Lcom/google/common/cache/bb;->a:J

    invoke-virtual {p0, v7, v8, p1, p2}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/common/cache/bb;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_1

    sget v6, Lcom/google/common/cache/Striped64;->NCPU:I

    if-ge v5, v6, :cond_6

    iget-object v6, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/bb;

    if-eq v6, v3, :cond_7

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    if-nez v0, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    iget v6, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/bb;

    if-ne v0, v3, :cond_a

    shl-int/lit8 v0, v5, 0x1

    new-array v6, v0, [Lcom/google/common/cache/bb;

    move v0, v1

    :goto_4
    if-ge v0, v5, :cond_9

    aget-object v7, v3, v0

    aput-object v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iput-object v6, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/bb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_a
    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    move v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_b
    iget v5, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/bb;

    if-ne v5, v3, :cond_c

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v5

    if-eqz v5, :cond_c

    :try_start_2
    iget-object v5, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/bb;

    if-ne v5, v3, :cond_d

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/cache/bb;

    and-int/lit8 v5, v2, 0x1

    new-instance v6, Lcom/google/common/cache/bb;

    invoke-direct {v6, p1, p2}, Lcom/google/common/cache/bb;-><init>(J)V

    aput-object v6, v3, v5

    iput-object v3, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/bb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v3, v4

    :goto_5
    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v3, :cond_0

    goto :goto_2

    :catchall_2
    move-exception v0

    iput v1, p0, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_c
    iget-wide v5, p0, Lcom/google/common/cache/Striped64;->base:J

    invoke-virtual {p0, v5, v6, p1, p2}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v7

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_d
    move v3, v1

    goto :goto_5

    :cond_e
    move v3, v1

    goto/16 :goto_1
.end method
