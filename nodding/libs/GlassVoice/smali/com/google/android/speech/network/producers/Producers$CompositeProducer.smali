.class public Lcom/google/android/speech/network/producers/Producers$CompositeProducer;
.super Ljava/lang/Object;
.source "Producers.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/S3RequestProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/network/producers/Producers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositeProducer"
.end annotation


# instance fields
.field private mCurrent:Lcom/google/android/speech/network/producers/S3RequestProducer;

.field private final mFirst:Lcom/google/android/speech/network/producers/S3RequestProducer;

.field private final mSecond:Lcom/google/android/speech/network/producers/S3RequestProducer;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/network/producers/S3RequestProducer;Lcom/google/android/speech/network/producers/S3RequestProducer;)V
    .locals 1
    .parameter "first"
    .parameter "second"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mFirst:Lcom/google/android/speech/network/producers/S3RequestProducer;

    .line 58
    iput-object p2, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mSecond:Lcom/google/android/speech/network/producers/S3RequestProducer;

    .line 59
    iget-object v0, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mFirst:Lcom/google/android/speech/network/producers/S3RequestProducer;

    iput-object v0, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mCurrent:Lcom/google/android/speech/network/producers/S3RequestProducer;

    .line 60
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mFirst:Lcom/google/android/speech/network/producers/S3RequestProducer;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mSecond:Lcom/google/android/speech/network/producers/S3RequestProducer;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    return-void
.end method

.method public next()Lcom/google/speech/s3/S3$S3Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mCurrent:Lcom/google/android/speech/network/producers/S3RequestProducer;

    invoke-interface {v2}, Lcom/google/android/speech/network/producers/S3RequestProducer;->next()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    .line 66
    .local v1, req:Lcom/google/speech/s3/S3$S3Request;
    if-nez v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mCurrent:Lcom/google/android/speech/network/producers/S3RequestProducer;

    iget-object v3, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mFirst:Lcom/google/android/speech/network/producers/S3RequestProducer;

    if-ne v2, v3, :cond_1

    .line 70
    iget-object v2, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mSecond:Lcom/google/android/speech/network/producers/S3RequestProducer;

    iput-object v2, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mCurrent:Lcom/google/android/speech/network/producers/S3RequestProducer;

    .line 71
    iget-object v2, p0, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->mCurrent:Lcom/google/android/speech/network/producers/S3RequestProducer;

    invoke-interface {v2}, Lcom/google/android/speech/network/producers/S3RequestProducer;->next()Lcom/google/speech/s3/S3$S3Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    .end local v1           #req:Lcom/google/speech/s3/S3$S3Request;
    :cond_0
    :goto_0
    return-object v1

    .line 73
    .restart local v1       #req:Lcom/google/speech/s3/S3$S3Request;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 78
    .end local v1           #req:Lcom/google/speech/s3/S3$S3Request;
    :catch_0
    move-exception v0

    .line 81
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;->close()V

    .line 82
    throw v0
.end method
