.class Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "NetworkRequestProducerParamsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->getPinholeParamsCallable(Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;

.field final synthetic val$requestIdSupplier:Lcom/google/common/base/Supplier;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;Ljava/lang/String;Lcom/google/common/base/Supplier;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;->this$0:Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;

    iput-object p3, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;->val$requestIdSupplier:Lcom/google/common/base/Supplier;

    invoke-direct {p0, p2}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected build()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;->this$0:Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;

    iget-object v1, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;->val$requestIdSupplier:Lcom/google/common/base/Supplier;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->buildParams(Lcom/google/common/base/Supplier;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;->build()Lcom/google/speech/s3/PinholeStream$PinholeParams;

    move-result-object v0

    return-object v0
.end method
