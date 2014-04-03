.class public final Lcom/google/android/speech/network/e;
.super Ljava/lang/Thread;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final a:Lcom/google/android/speech/b/b;

.field private final b:Ljava/net/HttpURLConnection;

.field private final c:Lcom/google/android/speech/a/a;

.field private d:Lcom/google/h/d/d;

.field private volatile e:Z


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/network/e;->e:Z

    invoke-virtual {p0}, Lcom/google/android/speech/network/e;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 4

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/speech/network/e;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/speech/network/e;->d:Lcom/google/h/d/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/speech/network/e;->d:Lcom/google/h/d/d;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/speech/network/e;->d:Lcom/google/h/d/d;

    :goto_1
    invoke-virtual {v0}, Lcom/google/h/d/d;->d()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/h/d/d;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/network/e;->e:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/speech/network/e;->c:Lcom/google/android/speech/a/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/speech/network/e;->a:Lcom/google/android/speech/b/b;

    invoke-virtual {v0}, Lcom/google/android/speech/b/b;->a()Lcom/google/h/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/speech/network/e;->a:Lcom/google/android/speech/b/b;

    invoke-static {v0}, Lcom/google/common/io/d;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/speech/network/e;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/speech/network/e;->e:Z

    if-eqz v1, :cond_4

    const-string v1, "PairHttpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Upload] exception - exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/speech/network/e;->c:Lcom/google/android/speech/a/a;

    new-instance v1, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v2, "Error while reading"

    invoke-direct {v1, v2, v0}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/speech/network/e;->a:Lcom/google/android/speech/b/b;

    invoke-static {v0}, Lcom/google/common/io/d;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/speech/network/e;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/speech/network/e;->a:Lcom/google/android/speech/b/b;

    invoke-static {v1}, Lcom/google/common/io/d;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/google/android/speech/network/e;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method
