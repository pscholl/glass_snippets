.class public abstract Lcom/google/speech/recognizer/HotwordGraphCompiler;
.super Ljava/lang/Object;
.source "HotwordGraphCompiler.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private nativeObj:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/speech/recognizer/HotwordGraphCompiler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/speech/recognizer/HotwordGraphCompiler;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeObj:J

    .line 25
    return-void
.end method

.method private assertValidState()V
    .locals 4

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HotwordGraphCompiler not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    return-void
.end method

.method private static native nativeCompile(J[BLjava/lang/String;)Z
.end method

.method private static native nativeConstruct()J
.end method

.method private static native nativeDelete(J)Z
.end method

.method private static native nativeInitFromFile(JLjava/lang/String;[Ljava/lang/String;)Z
.end method

.method private static native nativeInitFromProto(J[B[Ljava/lang/String;)Z
.end method


# virtual methods
.method public declared-synchronized compile([BLjava/lang/String;)Z
    .locals 2
    .parameter "params"
    .parameter "outputDir"

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->assertValidState()V

    .line 43
    iget-wide v0, p0, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeCompile(J[BLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 68
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeObj:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 69
    iget-wide v0, p0, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeObj:J

    invoke-static {v0, v1}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeDelete(J)Z

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeObj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->delete()V

    .line 59
    return-void
.end method

.method public declared-synchronized initFromFile(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "configFile"
    .parameter "resourcePaths"

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->assertValidState()V

    .line 29
    iget-wide v0, p0, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeInitFromFile(JLjava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initFromProto([B[Ljava/lang/String;)Z
    .locals 2
    .parameter "configBytes"
    .parameter "resourcePaths"

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->assertValidState()V

    .line 34
    iget-wide v0, p0, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->nativeInitFromProto(J[B[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
