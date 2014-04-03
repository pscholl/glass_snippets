.class Lcom/google/glass/util/BinaryExponentialBackoff$1;
.super Ljava/lang/Object;
.source "BinaryExponentialBackoff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/BinaryExponentialBackoff;->retry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/BinaryExponentialBackoff;


# direct methods
.method constructor <init>(Lcom/google/glass/util/BinaryExponentialBackoff;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/util/BinaryExponentialBackoff$1;->this$0:Lcom/google/glass/util/BinaryExponentialBackoff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff$1;->this$0:Lcom/google/glass/util/BinaryExponentialBackoff;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/util/BinaryExponentialBackoff;->hasSubmittedRunnable:Z
    invoke-static {v0, v1}, Lcom/google/glass/util/BinaryExponentialBackoff;->access$002(Lcom/google/glass/util/BinaryExponentialBackoff;Z)Z

    .line 81
    iget-object v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff$1;->this$0:Lcom/google/glass/util/BinaryExponentialBackoff;

    #getter for: Lcom/google/glass/util/BinaryExponentialBackoff;->callbacks:Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;
    invoke-static {v0}, Lcom/google/glass/util/BinaryExponentialBackoff;->access$200(Lcom/google/glass/util/BinaryExponentialBackoff;)Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/BinaryExponentialBackoff$1;->this$0:Lcom/google/glass/util/BinaryExponentialBackoff;

    iget-object v2, p0, Lcom/google/glass/util/BinaryExponentialBackoff$1;->this$0:Lcom/google/glass/util/BinaryExponentialBackoff;

    #getter for: Lcom/google/glass/util/BinaryExponentialBackoff;->retryCount:I
    invoke-static {v2}, Lcom/google/glass/util/BinaryExponentialBackoff;->access$100(Lcom/google/glass/util/BinaryExponentialBackoff;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;->onTry(Lcom/google/glass/util/BinaryExponentialBackoff;I)V

    .line 82
    return-void
.end method
