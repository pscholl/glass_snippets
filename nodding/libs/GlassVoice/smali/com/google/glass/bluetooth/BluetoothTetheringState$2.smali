.class Lcom/google/glass/bluetooth/BluetoothTetheringState$2;
.super Ljava/lang/Object;
.source "BluetoothTetheringState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/BluetoothTetheringState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$2;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5
    .parameter "profileId"
    .parameter "proxy"

    .prologue
    .line 103
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$2;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    #setter for: Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;
    invoke-static {v3, p2}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$302(Lcom/google/glass/bluetooth/BluetoothTetheringState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 105
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$2;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    #calls: Lcom/google/glass/bluetooth/BluetoothTetheringState;->getState()I
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$400(Lcom/google/glass/bluetooth/BluetoothTetheringState;)I

    move-result v2

    .line 106
    .local v2, state:I
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$2;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$000(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    .line 107
    .local v1, l:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;
    invoke-interface {v1, v2}, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;->onBluetoothTetheringStateChanged(I)V

    goto :goto_0

    .line 110
    .end local v1           #l:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$2;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$100(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$2;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$000(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$2;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$000(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 112
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profileId"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$2;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/bluetooth/BluetoothTetheringState;->profile:Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$302(Lcom/google/glass/bluetooth/BluetoothTetheringState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 117
    return-void
.end method
