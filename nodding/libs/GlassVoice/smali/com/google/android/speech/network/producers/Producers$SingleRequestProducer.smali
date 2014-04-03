.class public abstract Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;
.super Ljava/lang/Object;
.source "Producers.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/S3RequestProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/network/producers/Producers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SingleRequestProducer"
.end annotation


# instance fields
.field private mComplete:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;->mComplete:Z

    .line 35
    return-void
.end method

.method public next()Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;->mComplete:Z

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;->mComplete:Z

    .line 29
    invoke-virtual {p0}, Lcom/google/android/speech/network/producers/Producers$SingleRequestProducer;->produceRequest()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0
.end method

.method protected abstract produceRequest()Lcom/google/speech/s3/S3$S3Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
