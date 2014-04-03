.class public interface abstract Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;
.super Ljava/lang/Object;
.source "AsyncBluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/AsyncBluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onData(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;[BI)V
.end method

.method public abstract onDisconnect(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V
.end method
