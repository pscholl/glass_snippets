.class Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;
.super Ljava/lang/Object;
.source "S3ResponseStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/message/S3ResponseStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeBrokenNetwork"
.end annotation


# instance fields
.field private mCounter:I

.field private mWaitTime:I

.field final synthetic this$0:Lcom/google/android/speech/message/S3ResponseStream;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/message/S3ResponseStream;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x1388

    const/4 v0, 0x2

    .line 87
    iput-object p1, p0, Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;->this$0:Lcom/google/android/speech/message/S3ResponseStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;->mCounter:I

    .line 85
    iput v1, p0, Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;->mWaitTime:I

    .line 88
    iput v0, p0, Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;->mCounter:I

    .line 89
    iput v1, p0, Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;->mWaitTime:I

    .line 90
    return-void
.end method


# virtual methods
.method public ping()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget v1, p0, Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;->mCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;->mCounter:I

    .line 94
    iget v1, p0, Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;->mCounter:I

    if-nez v1, :cond_0

    .line 96
    :try_start_0
    iget v1, p0, Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;->mWaitTime:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 102
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
