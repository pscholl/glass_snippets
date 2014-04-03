.class public Lcom/google/glass/bluetooth/AsyncBluetoothSocket;
.super Ljava/lang/Object;
.source "AsyncBluetoothSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;,
        Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;,
        Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isClosed:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final readerThread:Ljava/lang/Thread;

.field private socket:Landroid/bluetooth/BluetoothSocket;

.field private final writeQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private final writerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->$assertionsDisabled:Z

    .line 21
    const-class v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->TAG:Ljava/lang/String;

    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1
    .parameter "socket"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->handler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->listeners:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    .line 44
    new-instance v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$ReaderThread;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->readerThread:Ljava/lang/Thread;

    .line 45
    new-instance v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/AsyncBluetoothSocket$WriterThread;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writerThread:Ljava/lang/Thread;

    .line 46
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 48
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/AsyncBluetoothSocket;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 54
    sget-boolean v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget-boolean v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    .line 83
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 84
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->socket:Landroid/bluetooth/BluetoothSocket;

    sget-object v1, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->TAG:Ljava/lang/String;

    const-string v2, "socket"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Util;->close(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->readerThread:Ljava/lang/Thread;

    sget-object v1, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->TAG:Ljava/lang/String;

    const-string v2, "readerThread"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Util;->join(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writerThread:Ljava/lang/Thread;

    sget-object v1, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->TAG:Ljava/lang/String;

    const-string v2, "writerThread"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Util;->join(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/bluetooth/AsyncBluetoothSocket$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 61
    sget-boolean v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    sget-boolean v0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 68
    sget-boolean v1, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->isClosed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 70
    :cond_0
    new-array v0, p3, [B

    .line 71
    .local v0, dataCopy:[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothSocket;->writeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method
