.class public interface abstract Lcom/google/glass/net/ProtoResponseHandler;
.super Ljava/lang/Object;
.source "ProtoResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
