.class final Lcom/x/google/masf/MultiplexedHttpConnection$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/google/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/x/google/masf/MultiplexedHttpConnection;

.field final synthetic val$mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/x/google/masf/MultiplexedHttpConnection;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/MultiplexedHttpConnection$1;->this$0:Lcom/x/google/masf/MultiplexedHttpConnection;

    iput-object p2, p0, Lcom/x/google/masf/MultiplexedHttpConnection$1;->val$mutex:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/x/google/common/util/Observable;Ljava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lcom/x/google/masf/MultiplexedHttpConnection$1;->val$mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/x/google/masf/MultiplexedHttpConnection$1;->val$mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
