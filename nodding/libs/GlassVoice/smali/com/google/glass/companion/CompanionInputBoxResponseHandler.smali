.class public abstract Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
.super Ljava/lang/Object;
.source "CompanionInputBoxResponseHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromBytes([B)Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
    .locals 9
    .parameter "bytes"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/companion/CompanionInputBoxResponseHandler;",
            ">([B)TT;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 94
    .local v1, bis:Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 95
    .local v3, in:Ljava/io/ObjectInputStream;
    const/4 v5, 0x0

    .line 97
    .local v5, result:Lcom/google/glass/companion/CompanionInputBoxResponseHandler;,"TT;"
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .local v4, in:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    move-object v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    const-class v6, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception when convert handler to bytes."

    invoke-static {v1, v6, v7}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-class v6, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception when convert handler to bytes."

    invoke-static {v4, v6, v7}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 107
    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v5

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    sget-object v6, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Exception when convert bytes to handler."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v2, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    const-class v6, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception when convert handler to bytes."

    invoke-static {v1, v6, v7}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-class v6, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception when convert handler to bytes."

    invoke-static {v3, v6, v7}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    const-class v7, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Exception when convert handler to bytes."

    invoke-static {v1, v7, v8}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-class v7, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Exception when convert handler to bytes."

    invoke-static {v3, v7, v8}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 102
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 99
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public static handleResponse(Landroid/content/Context;Lcom/google/glass/companion/Proto$InputBoxResponse;)Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
    .locals 4
    .parameter "context"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/companion/CompanionInputBoxResponseHandler;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/google/glass/companion/Proto$InputBoxResponse;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p1, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    invoke-static {v1}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->fromBytes([B)Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    move-result-object v0

    .line 41
    .local v0, handler:Lcom/google/glass/companion/CompanionInputBoxResponseHandler;,"TT;"
    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p1, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p1, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->handleTextTyped(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-object v0

    .line 45
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->handleCancelled(Landroid/content/Context;)V

    goto :goto_0

    .line 48
    :cond_1
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot get a handler from the response"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract handleCancelled(Landroid/content/Context;)V
.end method

.method protected abstract handleTextTyped(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public toBytes()[B
    .locals 8

    .prologue
    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 73
    .local v2, out:Ljava/io/ObjectOutputStream;
    const/4 v4, 0x0

    .line 75
    .local v4, results:[B
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .local v3, out:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Exception when convert handler to bytes."

    invoke-static {v3, v5, v6}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Exception when convert handler to bytes."

    invoke-static {v0, v5, v6}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 84
    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v4

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Exception when convert handler to bytes."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Exception when convert handler to bytes."

    invoke-static {v2, v5, v6}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Exception when convert handler to bytes."

    invoke-static {v0, v5, v6}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception when convert handler to bytes."

    invoke-static {v2, v6, v7}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception when convert handler to bytes."

    invoke-static {v0, v6, v7}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 81
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 78
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method
