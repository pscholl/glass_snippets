.class public interface abstract Lcom/google/android/speech/helper/AuthTokenHelper;
.super Ljava/lang/Object;
.source "AuthTokenHelper.java"


# virtual methods
.method public abstract blockingGetAuthTokens(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract invalidateAuthTokens()V
.end method
