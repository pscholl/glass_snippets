.class Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onSuccess([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

.field final synthetic val$proto:Lcom/google/protobuf/nano/MessageNano;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request.3;"
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;->this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;->val$proto:Lcom/google/protobuf/nano/MessageNano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request.3;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;->this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;->val$proto:Lcom/google/protobuf/nano/MessageNano;

    invoke-interface {v0, v1}, Lcom/google/glass/net/ProtoResponseHandler;->onSuccess(Lcom/google/protobuf/nano/MessageNano;)V

    .line 204
    return-void
.end method
