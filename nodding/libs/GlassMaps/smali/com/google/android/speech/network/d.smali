.class public final Lcom/google/android/speech/network/d;
.super Ljava/lang/Thread;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/speech/network/PairHttpConnection;

.field private final b:Ljava/net/URL;

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private volatile d:Z


# direct methods
.method private a(Ljava/net/HttpURLConnection;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    const-string v2, "PairHttpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "PairHttpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] Error opening connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/network/d;->b:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PairHttpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Download] redirect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/android/speech/network/d;->a(Ljava/net/HttpURLConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    sget-object v1, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/network/PairHttpConnection;->a(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    invoke-static {v0}, Lcom/google/android/speech/network/PairHttpConnection;->c(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/a/a;

    new-instance v0, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v1, "[Download] Bad response or url"

    invoke-direct {v0, v1}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/speech/b/b;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/speech/b/b;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/speech/network/d;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/speech/b/b;->a()Lcom/google/h/d/d;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/PairHttpConnection;->a(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    invoke-static {v0}, Lcom/google/android/speech/network/PairHttpConnection;->c(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/a/a;

    new-instance v0, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v2, "State error while reading."

    invoke-direct {v0, v2}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    invoke-static {v1}, Lcom/google/common/io/d;->a(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/google/h/d/d;->d()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/google/h/d/d;->d()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/network/d;->d:Z

    :cond_5
    iget-object v0, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    invoke-static {v0}, Lcom/google/android/speech/network/PairHttpConnection;->c(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/a/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    iget-boolean v2, p0, Lcom/google/android/speech/network/d;->d:Z

    if-eqz v2, :cond_6

    const-string v2, "PairHttpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] exception - exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/PairHttpConnection;->a(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    invoke-static {v2}, Lcom/google/android/speech/network/PairHttpConnection;->c(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/a/a;

    new-instance v2, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v3, "Error while reading"

    invoke-direct {v2, v3, v0}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    invoke-static {v1}, Lcom/google/common/io/d;->a(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/google/common/io/d;->a(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/network/d;->d:Z

    invoke-virtual {p0}, Lcom/google/android/speech/network/d;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    invoke-static {v1}, Lcom/google/android/speech/network/PairHttpConnection;->b(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/network/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    invoke-static {v2}, Lcom/google/android/speech/network/PairHttpConnection;->a(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/i/d/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/i/d/a/c;->d()Lcom/google/i/d/a/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/network/d;->b:Ljava/net/URL;

    invoke-interface {v1, v2, v3}, Lcom/google/android/speech/network/a;->a(Lcom/google/i/d/a/b;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    invoke-static {v1}, Lcom/google/android/speech/network/PairHttpConnection;->a(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/i/d/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/i/d/a/c;->d()Lcom/google/i/d/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/speech/network/b;->a(Ljava/net/HttpURLConnection;Lcom/google/i/d/a/b;)V

    iget-object v1, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    iget-object v2, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    invoke-static {v2}, Lcom/google/android/speech/network/PairHttpConnection;->a(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/i/d/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/i/d/a/c;->d()Lcom/google/i/d/a/b;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/speech/network/PairHttpConnection;->a(Lcom/google/android/speech/network/PairHttpConnection;Ljava/net/HttpURLConnection;Lcom/google/i/d/a/b;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/speech/network/d;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/d;->b(Ljava/net/HttpURLConnection;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/network/d;->a:Lcom/google/android/speech/network/PairHttpConnection;

    sget-object v1, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/network/PairHttpConnection;->a(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/network/d;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/speech/network/d;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/speech/network/d;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
