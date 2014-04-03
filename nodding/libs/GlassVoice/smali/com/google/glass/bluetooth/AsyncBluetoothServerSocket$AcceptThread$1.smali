.class Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;
.super Ljava/lang/Object;
.source "AsyncBluetoothServerSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;

.field final synthetic val$newSocket:Lcom/google/glass/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;Lcom/google/glass/bluetooth/BluetoothSocket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;

    iput-object p2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;->val$newSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;->this$1:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;

    iget-object v0, v0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    #getter for: Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->listener:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;
    invoke-static {v0}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$200(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;->val$newSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-interface {v0, v1}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;->onSocketAccepted(Lcom/google/glass/bluetooth/BluetoothSocket;)V

    .line 71
    return-void
.end method
