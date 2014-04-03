.class public abstract Lcom/google/speech/grammar/AbstractGrammarCompiler;
.super Ljava/lang/Object;
.source "AbstractGrammarCompiler.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private nativeObj:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/speech/grammar/AbstractGrammarCompiler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    .line 28
    return-void
.end method

.method private assertValidState()V
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recognizer not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method private static native nativeCompile(J[B)Z
.end method

.method private static native nativeConstruct()J
.end method

.method private static native nativeDelete(J)Z
.end method

.method private static native nativeInitFromFile(JLjava/lang/String;[Ljava/lang/String;)Z
.end method

.method private static native nativeInitFromProto(J[B[Ljava/lang/String;)Z
.end method

.method private static native nativeWriteClgFst(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeWriteSemanticFst(JLjava/lang/String;Ljava/lang/String;)Z
.end method


# virtual methods
.method public declared-synchronized compileAbnf(Ljava/lang/String;)Z
    .locals 3
    .parameter "abnfInput"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 57
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeCompile(J[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 112
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 113
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    invoke-static {v0, v1}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeDelete(J)Z

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->delete()V

    .line 103
    return-void
.end method

.method public declared-synchronized initFromFile(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "configFile"
    .parameter "resourcePaths"

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 32
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeInitFromFile(JLjava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 31
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
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 37
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeInitFromProto(J[B[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeClgFst(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "clgFstFile"
    .parameter "clgSymbolFile"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 72
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeWriteClgFst(JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeSemanticFst(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "semanticFstFile"
    .parameter "semanticSymbolFile"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 86
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeWriteSemanticFst(JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
