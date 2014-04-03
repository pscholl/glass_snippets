.class Lcom/google/glass/logging/UserEventService$13;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventService;

.field final synthetic val$event:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$13;->this$0:Lcom/google/glass/logging/UserEventService;

    iput-object p2, p0, Lcom/google/glass/logging/UserEventService$13;->val$event:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 703
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User event request cancelled. Will retry."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$13;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService$13;->val$event:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    #calls: Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$800(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 705
    return-void
.end method

.method public onError(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$13;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService$13;->val$event:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    #calls: Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$800(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 711
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;)V
    .locals 0
    .parameter "responseProto"

    .prologue
    .line 715
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 700
    check-cast p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/logging/UserEventService$13;->onSuccess(Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;)V

    return-void
.end method
