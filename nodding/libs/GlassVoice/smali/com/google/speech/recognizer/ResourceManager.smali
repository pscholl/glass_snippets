.class public abstract Lcom/google/speech/recognizer/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# instance fields
.field private nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0}, Lcom/google/speech/recognizer/ResourceManager;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/recognizer/ResourceManager;->nativeObj:J

    .line 13
    return-void
.end method

.method private native nativeConstruct()J
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeInitFromFile(JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeInitFromProto(J[B[Ljava/lang/String;)I
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/speech/recognizer/ResourceManager;->nativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "recognizer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/speech/recognizer/ResourceManager;->nativeObj:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 29
    iget-wide v0, p0, Lcom/google/speech/recognizer/ResourceManager;->nativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/google/speech/recognizer/ResourceManager;->nativeDelete(J)V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/ResourceManager;->nativeObj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/speech/recognizer/ResourceManager;->delete()V

    .line 19
    return-void
.end method

.method getNativeObject()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/google/speech/recognizer/ResourceManager;->nativeObj:J

    return-wide v0
.end method

.method public initFromFile(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "configFile"
    .parameter "resourcePaths"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/speech/recognizer/ResourceManager;->validate()V

    .line 40
    iget-wide v0, p0, Lcom/google/speech/recognizer/ResourceManager;->nativeObj:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/speech/recognizer/ResourceManager;->nativeInitFromFile(JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initFromProto([B[Ljava/lang/String;)I
    .locals 2
    .parameter "configBytes"
    .parameter "resourcePaths"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/speech/recognizer/ResourceManager;->validate()V

    .line 49
    iget-wide v0, p0, Lcom/google/speech/recognizer/ResourceManager;->nativeObj:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/speech/recognizer/ResourceManager;->nativeInitFromProto(J[B[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
