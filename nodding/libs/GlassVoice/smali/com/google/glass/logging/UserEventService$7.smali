.class Lcom/google/glass/logging/UserEventService$7;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->onCreate()V
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
        "Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;",
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
    .line 226
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$7;->this$0:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Checkin request cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public onError(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 229
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatcher error while checking in device [errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;)V
    .locals 3
    .parameter "responseProto"

    .prologue
    .line 239
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Checkin successful"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    check-cast p1, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/logging/UserEventService$7;->onSuccess(Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;)V

    return-void
.end method
