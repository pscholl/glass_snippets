.class Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request.1;"
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;->this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request.1;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;->this$1:Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    invoke-interface {v0}, Lcom/google/glass/net/ProtoResponseHandler;->onCancel()V

    .line 148
    return-void
.end method
