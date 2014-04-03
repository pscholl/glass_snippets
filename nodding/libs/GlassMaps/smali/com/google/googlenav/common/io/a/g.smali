.class public final Lcom/google/googlenav/common/io/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FLASH"

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/io/a/g;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;I[B)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {p1, p3, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v2, "Read %s bytes from %s; expected %s more"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/common/io/a/g;->a:Lcom/google/glass/logging/i;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v1}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sub-int/2addr p2, v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method
