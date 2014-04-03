.class public final Lcom/google/common/io/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)[B
    .locals 1

    invoke-static {p0}, Lcom/google/common/io/i;->b(Ljava/io/File;)Lcom/google/common/io/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/File;)Lcom/google/common/io/a;
    .locals 2

    new-instance v0, Lcom/google/common/io/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/io/k;-><init>(Ljava/io/File;Lcom/google/common/io/j;)V

    return-object v0
.end method
