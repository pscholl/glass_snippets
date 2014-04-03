.class Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;
.super Ljava/lang/Thread;
.source "AsyncBluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/AsyncBluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/WriterThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, stream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    #getter for: Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$100(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 147
    :goto_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    #getter for: Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writeQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$500(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 148
    .local v0, data:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 150
    .end local v0           #data:[B
    :catch_0
    move-exception v2

    .line 155
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stream"

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_1
    return-void

    .line 152
    :catch_1
    move-exception v2

    .line 155
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stream"

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "stream"

    invoke-static {v1, v3, v4}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method
