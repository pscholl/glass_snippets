.class Lcom/google/glass/logging/UserEventService$6;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$6;->this$0:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$6;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService$6;->this$0:Lcom/google/glass/logging/UserEventService;

    #getter for: Lcom/google/glass/logging/UserEventService;->queueFile:Lcom/google/glass/util/ProtoListFile;
    invoke-static {v1}, Lcom/google/glass/logging/UserEventService;->access$200(Lcom/google/glass/logging/UserEventService;)Lcom/google/glass/util/ProtoListFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/ProtoListFile;->read()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$102(Lcom/google/glass/logging/UserEventService;Ljava/util/List;)Ljava/util/List;

    .line 223
    return-void
.end method
