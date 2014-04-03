.class public abstract Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromBytes([B)Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-class v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Exception when convert handler to bytes."

    invoke-static {v3, v1, v4}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Exception when convert handler to bytes."

    invoke-static {v2, v1, v3}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_2
    sget-object v4, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/i;

    const-string v5, "Exception when convert bytes to handler."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-class v0, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Exception when convert handler to bytes."

    invoke-static {v3, v0, v4}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Exception when convert handler to bytes."

    invoke-static {v2, v0, v3}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    const-class v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Exception when convert handler to bytes."

    invoke-static {v3, v1, v4}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Exception when convert handler to bytes."

    invoke-static {v2, v1, v3}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static handleResponse(Landroid/content/Context;Lcom/google/glass/companion/u;)Lcom/google/glass/companion/CompanionInputBoxResponseHandler;
    .locals 4

    iget-object v0, p1, Lcom/google/glass/companion/u;->c:[B

    invoke-static {v0}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->fromBytes([B)Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/google/glass/companion/u;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/google/glass/companion/u;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->handleTextTyped(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->handleCancelled(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/i;

    const-string v2, "Cannot get a handler from the response"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract handleCancelled(Landroid/content/Context;)V
.end method

.method protected abstract handleTextTyped(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public toBytes()[B
    .locals 7

    const/4 v0, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Exception when convert handler to bytes."

    invoke-static {v2, v1, v4}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception when convert handler to bytes."

    invoke-static {v3, v1, v2}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    sget-object v4, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->logger:Lcom/google/glass/logging/i;

    const-string v5, "Exception when convert handler to bytes."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Exception when convert handler to bytes."

    invoke-static {v2, v1, v4}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception when convert handler to bytes."

    invoke-static {v3, v1, v2}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Exception when convert handler to bytes."

    invoke-static {v2, v1, v4}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception when convert handler to bytes."

    invoke-static {v3, v1, v2}, Lcom/google/glass/util/ci;->a(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method
