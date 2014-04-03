.class public final Lcom/google/glass/util/af;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/af;->a:Lcom/google/glass/logging/i;

    new-instance v0, Lcom/google/glass/util/ag;

    invoke-direct {v0}, Lcom/google/glass/util/ag;-><init>()V

    sput-object v0, Lcom/google/glass/util/af;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Ljava/io/File;[BLcom/google/glass/util/u;)I
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    move v0, v1

    :cond_0
    const/16 v4, 0x2000

    sub-int v5, v3, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, p1, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_2

    add-int/2addr v0, v4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/glass/util/u;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/glass/util/af;->a:Lcom/google/glass/logging/i;

    const-string v3, "Error closing file."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_0

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/google/glass/util/af;->a:Lcom/google/glass/logging/i;

    const-string v4, "Error closing file."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4, v1}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    throw v0

    :catch_2
    move-exception v2

    sget-object v3, Lcom/google/glass/util/af;->a:Lcom/google/glass/logging/i;

    const-string v4, "Error closing file."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4, v1}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/google/glass/util/af;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/glass/util/af;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
