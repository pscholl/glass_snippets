.class public abstract Lcom/google/glass/util/aw;
.super Lcom/google/glass/util/z;


# static fields
.field private static final c:Lcom/google/glass/logging/i;

.field public static final d:Lcom/google/glass/util/CachedFilesManager$Type;

.field private static final e:Lcom/google/glass/net/f;


# instance fields
.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private final i:I

.field private final j:Lcom/google/glass/util/CachedFilesManager;

.field private final k:Lcom/google/glass/net/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/aw;->c:Lcom/google/glass/logging/i;

    new-instance v0, Lcom/google/glass/net/f;

    new-instance v1, Lcom/google/glass/util/ax;

    invoke-direct {v1}, Lcom/google/glass/util/ax;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/f;-><init>(Lcom/google/glass/net/g;)V

    sput-object v0, Lcom/google/glass/util/aw;->e:Lcom/google/glass/net/f;

    sget-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    sput-object v0, Lcom/google/glass/util/aw;->d:Lcom/google/glass/util/CachedFilesManager$Type;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/util/z;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    iput p3, p0, Lcom/google/glass/util/aw;->g:I

    iput p4, p0, Lcom/google/glass/util/aw;->h:I

    iput p5, p0, Lcom/google/glass/util/aw;->i:I

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->a()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/aw;->j:Lcom/google/glass/util/CachedFilesManager;

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->c()Lcom/google/glass/net/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/aw;->k:Lcom/google/glass/net/h;

    return-void
.end method

.method private static a(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v3, -0x1

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    new-instance v0, Lcom/google/googlex/glass/common/proto/p;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/p;-><init>()V

    iget v2, p0, Lcom/google/glass/util/aw;->g:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/google/glass/util/aw;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/p;->b:Ljava/lang/Integer;

    :cond_0
    iget v2, p0, Lcom/google/glass/util/aw;->h:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/google/glass/util/aw;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/p;->c:Ljava/lang/Integer;

    :cond_1
    new-instance v2, Lcom/google/googlex/glass/common/proto/o;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/o;-><init>()V

    iput-object v0, v2, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    iget-object v0, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    iget v0, p0, Lcom/google/glass/util/aw;->i:I

    iput v0, v2, Lcom/google/googlex/glass/common/proto/o;->d:I

    sget-object v0, Lcom/google/glass/util/aw;->c:Lcom/google/glass/logging/i;

    const-string v3, "Downloading image [filename=%s, request=%s]."

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object v2, v4, v8

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v3}, Lcom/google/glass/util/Stopwatch;-><init>()V

    invoke-virtual {v3}, Lcom/google/glass/util/Stopwatch;->a()Lcom/google/glass/util/Stopwatch;

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/aw;->k:Lcom/google/glass/net/h;

    sget-object v4, Lcom/google/glass/net/ServerConstants$Action;->DOWNLOAD_IMAGE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v5, Lcom/google/glass/util/aw;->e:Lcom/google/glass/net/f;

    invoke-virtual {v0, v4, v2, v5}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;Lcom/google/glass/net/f;)Lcom/google/glass/net/r;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/glass/util/Stopwatch;->b()Lcom/google/glass/util/Stopwatch;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/glass/net/r;->e()Lcom/google/protobuf/nano/b;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    sget-object v0, Lcom/google/glass/util/aw;->c:Lcom/google/glass/logging/i;

    const-string v2, "No response - network may be disconnected"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/glass/util/aw;->c:Lcom/google/glass/logging/i;

    const-string v3, "Interrupted while downloading image from clientproxy"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/glass/net/r;->e()Lcom/google/protobuf/nano/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/q;

    iget v2, v0, Lcom/google/googlex/glass/common/proto/q;->c:I

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/glass/util/aw;->c:Lcom/google/glass/logging/i;

    const-string v3, "Server status: %s for: %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v0, v0, Lcom/google/googlex/glass/common/proto/q;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    iget-object v0, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    aput-object v0, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/q;->b:[B

    invoke-static {v2}, Lcom/google/glass/util/a;->a([B)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/google/glass/util/aw;->c:Lcom/google/glass/logging/i;

    const-string v2, "No image download data for %s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/util/aw;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/google/glass/util/aw;->c:Lcom/google/glass/logging/i;

    const-string v2, "Image download cancelled for %s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/google/glass/userevent/a;

    invoke-virtual {p0}, Lcom/google/glass/util/aw;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/userevent/a;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "l"

    invoke-virtual {v3}, Lcom/google/glass/util/Stopwatch;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "b"

    aput-object v6, v5, v7

    iget-object v6, v0, Lcom/google/googlex/glass/common/proto/q;->b:[B

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v3, v5}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/glass/util/aw;->j:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/util/aw;->d:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v1, v2, p1}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/glass/util/aw;->c:Lcom/google/glass/logging/i;

    const-string v3, "Saving %s under %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/glass/util/aw;->j:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/util/aw;->d:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/q;->b:[B

    invoke-static {v0}, Lcom/google/glass/util/ah;->a([B)Lcom/google/glass/util/aj;

    move-result-object v0

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/aj;)Z

    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/glass/util/u;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/glass/util/aw;->b(Lcom/google/glass/util/u;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    return-object p1
.end method

.method protected final b(Lcom/google/glass/util/u;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    iget v1, p0, Lcom/google/glass/util/aw;->g:I

    iget v2, p0, Lcom/google/glass/util/aw;->h:I

    iget v3, p0, Lcom/google/glass/util/aw;->i:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/aw;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/aw;->j:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/util/aw;->d:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->b(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/glass/util/aw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/util/aw;->j:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/util/aw;->d:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    const-string v0, "ip"

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/aw;->f:Ljava/lang/String;

    iget v1, p0, Lcom/google/glass/util/aw;->g:I

    iget v2, p0, Lcom/google/glass/util/aw;->h:I

    iget v3, p0, Lcom/google/glass/util/aw;->i:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/aw;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/aw;->j:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/util/aw;->d:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
