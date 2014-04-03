.class public final Lcom/google/glass/util/CloseableUtil;
.super Ljava/lang/Object;
.source "CloseableUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)V
    .locals 4
    .parameter "c"
    .parameter "logger"

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 20
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Error closing: [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
