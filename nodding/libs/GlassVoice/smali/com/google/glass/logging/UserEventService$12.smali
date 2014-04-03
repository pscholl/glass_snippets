.class Lcom/google/glass/logging/UserEventService$12;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "UserEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->sendBlockingGetSessionIdRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/net/SimpleProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$12;->this$0:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;)V
    .locals 3
    .parameter "responseProto"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$12;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId:Ljava/lang/String;

    #setter for: Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$1002(Lcom/google/glass/logging/UserEventService;Ljava/lang/String;)Ljava/lang/String;

    .line 673
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$12;->this$0:Lcom/google/glass/logging/UserEventService;

    #getter for: Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/glass/logging/UserEventService;->access$1100(Lcom/google/glass/logging/UserEventService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session"

    iget-object v2, p0, Lcom/google/glass/logging/UserEventService$12;->this$0:Lcom/google/glass/logging/UserEventService;

    #getter for: Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/glass/logging/UserEventService;->access$1000(Lcom/google/glass/logging/UserEventService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 677
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 669
    check-cast p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/logging/UserEventService$12;->onSuccess(Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;)V

    return-void
.end method
