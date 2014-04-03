.class Lcom/google/glass/logging/UserEventService$10;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->onStartCommand(Landroid/content/Intent;II)I
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
    .line 340
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$10;->this$0:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$10;->this$0:Lcom/google/glass/logging/UserEventService;

    #getter for: Lcom/google/glass/logging/UserEventService;->queueFile:Lcom/google/glass/util/ProtoListFile;
    invoke-static {v0}, Lcom/google/glass/logging/UserEventService;->access$200(Lcom/google/glass/logging/UserEventService;)Lcom/google/glass/util/ProtoListFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ProtoListFile;->flushWrites()V

    .line 344
    return-void
.end method
