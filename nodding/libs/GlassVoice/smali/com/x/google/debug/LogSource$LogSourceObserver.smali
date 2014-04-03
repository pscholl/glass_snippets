.class Lcom/x/google/debug/LogSource$LogSourceObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/debug/LogSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogSourceObserver"
.end annotation


# instance fields
.field private logLevelSources:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/x/google/debug/RuntimeVarz;->getInstance()Lcom/x/google/debug/RuntimeVarz;

    move-result-object v0

    const-string v1, "/logs/level"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/RuntimeVarz;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/debug/LogSource$LogSourceObserver;->logLevelSources:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public update(Lcom/x/google/common/util/Observable;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "/logs/level"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/x/google/debug/RuntimeVarz;->getInstance()Lcom/x/google/debug/RuntimeVarz;

    move-result-object v0

    const-string v1, "/logs/level"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/RuntimeVarz;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/x/google/debug/LogSource$LogSourceObserver;->logLevelSources:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New log source level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/x/google/debug/LogSource$LogSourceObserver;->logLevelSources:Ljava/lang/String;

    #calls: Lcom/x/google/debug/LogSource;->parseLogSourceLevelsConfig(Ljava/lang/String;)[[Ljava/lang/Object;
    invoke-static {v0}, Lcom/x/google/debug/LogSource;->access$100(Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/LogSource;->access$002([[Ljava/lang/Object;)[[Ljava/lang/Object;

    #calls: Lcom/x/google/debug/LogSource;->updateLogLevelFromLogSourceLevels()V
    invoke-static {}, Lcom/x/google/debug/LogSource;->access$200()V

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
