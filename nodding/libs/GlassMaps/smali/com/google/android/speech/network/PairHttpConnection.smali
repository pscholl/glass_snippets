.class public final Lcom/google/android/speech/network/PairHttpConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/speech/network/f;


# instance fields
.field private final a:Lcom/google/i/d/a/c;

.field private final b:Lcom/google/android/searchcommon/util/b;

.field private final c:Lcom/google/android/speech/network/a;

.field private final d:Z

.field private e:Lcom/google/android/speech/a/a;

.field private f:Lcom/google/android/speech/network/d;

.field private g:Lcom/google/android/speech/b/a;

.field private h:Ljava/net/HttpURLConnection;

.field private i:Lcom/google/android/speech/network/e;

.field private j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;


# direct methods
.method static synthetic a(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/i/d/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->a:Lcom/google/i/d/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/speech/network/PairHttpConnection;Ljava/net/HttpURLConnection;Lcom/google/i/d/a/b;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/speech/network/PairHttpConnection;->a(Ljava/net/HttpURLConnection;Lcom/google/i/d/a/b;)V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/google/i/d/a/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/i/d/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-S3-Send-Compressible"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/network/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->c:Lcom/google/android/speech/network/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->e:Lcom/google/android/speech/a/a;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/google/android/speech/network/c;->a:[I

    invoke-virtual {p1}, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    if-ne v2, v3, :cond_1

    const-string v1, "PairHttpConnection"

    const-string v2, "The response is sent in the up and down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    if-eq v2, v3, :cond_2

    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/ai;->b(Z)V

    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    if-ne v2, v3, :cond_3

    const-string v1, "PairHttpConnection"

    const-string v2, "The response is sent in the up and down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->d:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    if-ne v2, v3, :cond_4

    sget-object v1, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    iput-object v1, p0, Lcom/google/android/speech/network/PairHttpConnection;->j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v2, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    if-ne v0, v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    move v0, v1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UNKNOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->j:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->b:Lcom/google/android/searchcommon/util/b;

    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->g:Lcom/google/android/speech/b/a;

    invoke-static {v0}, Lcom/google/common/io/d;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->h:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->h:Ljava/net/HttpURLConnection;

    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->i:Lcom/google/android/speech/network/e;

    invoke-static {v0}, Lcom/google/common/io/d;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->f:Lcom/google/android/speech/network/d;

    invoke-static {v0}, Lcom/google/common/io/d;->a(Ljava/io/Closeable;)V

    return-void
.end method
