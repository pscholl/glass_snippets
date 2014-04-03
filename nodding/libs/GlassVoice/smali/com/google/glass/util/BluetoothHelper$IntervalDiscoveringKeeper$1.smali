.class Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "receive %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$100(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$100(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$200(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$200(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1$1;

    invoke-direct {v2, p0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1$1;-><init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;)V

    const-wide/32 v3, 0xe290

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
