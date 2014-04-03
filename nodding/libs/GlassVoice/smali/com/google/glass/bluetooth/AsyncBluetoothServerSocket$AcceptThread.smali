.class Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;
.super Ljava/lang/Thread;
.source "AsyncBluetoothServerSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AcceptThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 66
    :goto_0
    :try_start_0
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    #getter for: Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->socket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$100(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 67
    .local v1, newSocket:Lcom/google/glass/bluetooth/BluetoothSocket;
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    #getter for: Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$300(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;Lcom/google/glass/bluetooth/BluetoothSocket;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v1           #newSocket:Lcom/google/glass/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    #getter for: Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->isCleanShutdown:Z
    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$400(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unexpected shutdown of async server socket"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method
