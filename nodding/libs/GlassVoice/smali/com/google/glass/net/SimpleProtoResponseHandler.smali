.class public Lcom/google/glass/net/SimpleProtoResponseHandler;
.super Ljava/lang/Object;
.source "SimpleProtoResponseHandler.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lcom/google/glass/net/SimpleProtoResponseHandler;,"Lcom/google/glass/net/SimpleProtoResponseHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 17
    .local p0, this:Lcom/google/glass/net/SimpleProtoResponseHandler;,"Lcom/google/glass/net/SimpleProtoResponseHandler<TT;>;"
    return-void
.end method

.method public onError(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 22
    .local p0, this:Lcom/google/glass/net/SimpleProtoResponseHandler;,"Lcom/google/glass/net/SimpleProtoResponseHandler<TT;>;"
    return-void
.end method

.method public onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/google/glass/net/SimpleProtoResponseHandler;,"Lcom/google/glass/net/SimpleProtoResponseHandler<TT;>;"
    .local p1, responseProto:Lcom/google/protobuf/nano/MessageNano;,"TT;"
    return-void
.end method
