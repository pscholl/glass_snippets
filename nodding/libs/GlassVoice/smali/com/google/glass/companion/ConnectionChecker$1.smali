.class Lcom/google/glass/companion/ConnectionChecker$1;
.super Landroid/os/Handler;
.source "ConnectionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/ConnectionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/ConnectionChecker;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/ConnectionChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 69
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 70
    .local v1, envelope:Lcom/google/glass/companion/Proto$Envelope;
    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Message is canceled."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v2, v1, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 76
    .local v2, info:Lcom/google/glass/companion/Proto$CompanionInfo;
    if-nez v2, :cond_1

    .line 77
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "No companion info specified."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v4, v2, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v3

    .line 83
    .local v3, responseIsNetworkOk:Z
    const-string v5, "t"

    const-string v6, "0"

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    const-string v4, "d"

    aput-object v4, v7, v9

    if-eqz v3, :cond_3

    const-string v4, "y"

    :goto_1
    aput-object v4, v7, v10

    const-string v4, "v"

    aput-object v4, v7, v11

    const/4 v8, 0x3

    iget-object v4, v2, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    :goto_2
    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, data:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Logging %s for %s"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v9

    iget-object v7, v2, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    aput-object v7, v6, v10

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    if-eqz v3, :cond_2

    iget-object v4, v2, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    iget-object v4, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    #getter for: Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/google/glass/companion/ConnectionChecker;->access$100(Lcom/google/glass/companion/ConnectionChecker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    .line 93
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Send tethering error message to companion.."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v4, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    #calls: Lcom/google/glass/companion/ConnectionChecker;->sendTetheringErrorMessage()V
    invoke-static {v4}, Lcom/google/glass/companion/ConnectionChecker;->access$200(Lcom/google/glass/companion/ConnectionChecker;)V

    .line 97
    :cond_2
    iget-object v4, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    #getter for: Lcom/google/glass/companion/ConnectionChecker;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {v4}, Lcom/google/glass/companion/ConnectionChecker;->access$300(Lcom/google/glass/companion/ConnectionChecker;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v4

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v4, v5, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    .end local v0           #data:Ljava/lang/String;
    :cond_3
    const-string v4, "n"

    goto :goto_1

    :cond_4
    const-string v4, "0"

    goto :goto_2
.end method
