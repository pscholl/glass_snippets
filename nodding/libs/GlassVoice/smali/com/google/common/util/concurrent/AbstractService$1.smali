.class Lcom/google/common/util/concurrent/AbstractService$1;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "from"
    .parameter "failure"

    .prologue
    .line 117
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService$7;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected from state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    #getter for: Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$100(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    .line 120
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    #getter for: Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$200(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed to start."

    invoke-direct {v1, v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    .line 134
    :goto_0
    return-void

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    #getter for: Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$200(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed while running"

    invoke-direct {v1, v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    #getter for: Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$200(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public running()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    #getter for: Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$100(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public starting()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 104
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    #getter for: Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$100(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 110
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    #getter for: Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$100(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    #getter for: Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$200(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method
