.class Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request.2;"
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;->this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iput p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request.2;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;->this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    iget v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;->val$errorCode:I

    invoke-interface {v0, v1}, Lcom/google/glass/net/ProtoResponseHandler;->onError(I)V

    .line 185
    return-void
.end method
