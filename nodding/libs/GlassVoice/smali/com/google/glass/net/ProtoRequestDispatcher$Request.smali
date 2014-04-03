.class Lcom/google/glass/net/ProtoRequestDispatcher$Request;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/ProtoRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final isImmediate:Z

.field final logMetrics:Z

.field final path:Ljava/lang/String;

.field final requestProto:Lcom/google/protobuf/nano/MessageNano;

.field final responseHandler:Lcom/google/glass/net/ProtoResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field final responseParser:Lcom/google/glass/net/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field final responseThread:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/google/glass/net/ProtoRequestDispatcher;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "requestProto"
    .parameter "isImmediate"
    .parameter
    .parameter
    .parameter "responseThread"
    .parameter "logMetrics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Z",
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    .local p5, responseParser:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    .local p6, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    .line 134
    iput-object p5, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseParser:Lcom/google/glass/net/ProtoParser;

    .line 135
    iput-boolean p4, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    .line 136
    iput-object p6, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    .line 137
    iput-object p7, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    .line 138
    iput-boolean p8, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->logMetrics:Z

    .line 139
    return-void
.end method


# virtual methods
.method onCancel()V
    .locals 4

    .prologue
    .line 144
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;

    invoke-direct {v2, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$1;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Exception while dispatching cancel response."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method onError(I)V
    .locals 6
    .parameter "errorCode"

    .prologue
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    const/4 v5, 0x0

    .line 161
    const/4 v2, 0x2

    if-ne v2, p1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    #getter for: Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$100(Lcom/google/glass/net/ProtoRequestDispatcher;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 163
    new-instance v2, Lcom/google/glass/auth/AuthUtils;

    iget-object v3, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    #getter for: Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$100(Lcom/google/glass/net/ProtoRequestDispatcher;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/glass/auth/AuthUtils;->invalidateAuthToken()V

    .line 171
    :cond_0
    const/4 v2, 0x5

    if-ne v2, p1, :cond_1

    .line 173
    :try_start_0
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 174
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->reportNetworkError()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;

    invoke-direct {v3, p0, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$2;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_1
    return-void

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unexpected error logging network error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    .end local v1           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Exception while dispatching error response."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method onSuccess([B)V
    .locals 5
    .parameter "data"

    .prologue
    .line 198
    .local p0, this:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->reportNetworkOK()V

    .line 199
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseParser:Lcom/google/glass/net/ProtoParser;

    invoke-virtual {v2, p1}, Lcom/google/glass/net/ProtoParser;->parse([B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    .line 200
    .local v1, proto:Lcom/google/protobuf/nano/MessageNano;,"TT;"
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->responseThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/net/ProtoRequestDispatcher$Request$3;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/protobuf/nano/MessageNano;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    .end local v1           #proto:Lcom/google/protobuf/nano/MessageNano;,"TT;"
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(I)V

    goto :goto_0

    .line 208
    .end local v0           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Exception while dispatching success response."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
