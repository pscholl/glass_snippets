.class public Lcom/google/glass/voice/ConcurrentAudioInterface;
.super Ljava/lang/Object;
.source "ConcurrentAudioInterface.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private errorLogged:Z

.field private nativeAudioInterface:Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

.field private open:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/NativeAudioInterfaceWrapper;)V
    .locals 0
    .parameter "nativeAudioInterface"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->nativeAudioInterface:Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Native audio interface already closed; ignoring close() call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->nativeAudioInterface:Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;->nativeClose()V

    .line 64
    sget-object v0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Closed audio interface."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()V
    .locals 3

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Native audio interface already open; ignoring open() call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    monitor-exit p0

    return-void

    .line 31
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->nativeAudioInterface:Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;->nativeOpen()V

    .line 32
    sget-object v0, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Opened audio interface."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->errorLogged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 4
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    .line 38
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z

    if-nez v1, :cond_1

    .line 39
    iget-boolean v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->errorLogged:Z

    if-nez v1, :cond_0

    .line 40
    sget-object v1, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Native audio interface not open; ignoring read() call; no further warnings will be printed until the interface is reopened."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->errorLogged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 47
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->errorLogged:Z

    .line 49
    iget-object v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->nativeAudioInterface:Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;->nativeRead([B)I

    move-result v0

    .line 50
    .local v0, bytesRead:I
    if-gtz v0, :cond_0

    .line 51
    sget-object v1, Lcom/google/glass/voice/ConcurrentAudioInterface;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed read from native audio interface, assuming the interface is now closed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/voice/ConcurrentAudioInterface;->open:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    .end local v0           #bytesRead:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
