.class public interface abstract Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;
.super Ljava/lang/Object;
.source "PinholeParamsBuilder.java"


# virtual methods
.method public abstract getPinholeParamsCallable(Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation
.end method
