.class public abstract Lcom/google/glass/timeline/TimelineItemCreatorJob;
.super Ljava/lang/Object;
.source "TimelineItemCreatorJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private volatile cancelled:Z

.field private final context:Landroid/content/Context;

.field private volatile finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private volatile finalItemReady:Z

.field private final itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field private runningOnThread:Ljava/lang/Thread;

.field private volatile temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private volatile temporaryItemCreated:Z

.field private volatile temporaryItemReady:Z

.field protected final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private userActionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;)V
    .locals 1
    .parameter "context"
    .parameter "itemType"

    .prologue
    .line 54
    const/high16 v0, -0x8000

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;I)V
    .locals 1
    .parameter "context"
    .parameter "itemType"
    .parameter "userActionType"

    .prologue
    .line 58
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;ILcom/google/glass/timeline/TimelineHelper;)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;ILcom/google/glass/timeline/TimelineHelper;)V
    .locals 2
    .parameter "context"
    .parameter "itemType"
    .parameter "userActionType"
    .parameter "timelineHelper"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    .line 33
    iput-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemReady:Z

    .line 36
    iput-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemCreated:Z

    .line 39
    iput-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    .line 42
    iput-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 66
    iput p3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    .line 67
    iput-object p4, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/TimelineItemCreatorJob;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private checkCancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Processing cancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 116
    :cond_0
    return-void
.end method

.method private deleteTemporaryItem()V
    .locals 3

    .prologue
    .line 275
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemCreated:Z

    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Deleting temporary item"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineHelper;->deleteTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method

.method private dispatchCreateFinalItem()V
    .locals 4

    .prologue
    .line 227
    iget v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;-><init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;)V

    .line 265
    .local v0, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 266
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 267
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v1, :cond_0

    .line 268
    sget-object v1, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Final item could not be updated.  Cancelling job"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->onFinalItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 272
    return-void
.end method

.method private dispatchCreateTemporaryItem()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 192
    iget v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->createTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 195
    .local v0, itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v0, :cond_0

    .line 196
    sget-object v2, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Temporary item was null.  Cancelling job"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 200
    :cond_0
    new-instance v1, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;-><init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 214
    .local v1, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {v2, v1}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 215
    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v1}, Lcom/google/glass/timeline/TimelineHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 217
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemCreated:Z

    .line 218
    sget-object v2, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Temporary item created"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, v2}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->onTemporaryItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_1
    sget-object v2, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not create temporary item"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    goto :goto_0
.end method

.method private declared-synchronized waitForFinalItem()V
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 147
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized waitForTemporaryItem()V
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cancelling timeline item creation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 165
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized cancelIfNotFinished()V
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createFinalTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end method

.method protected abstract createTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end method

.method public getFinalItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized notifyReadyToCreateTemporaryItem()V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemReady:Z

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyReadyToUpdateToFinalItem()V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFinalItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter "completeItem"

    .prologue
    .line 321
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public onTemporaryItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter "temporaryItem"

    .prologue
    .line 314
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->onPreExecute()V

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->shouldCreateTemporaryItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->waitForTemporaryItem()V

    .line 94
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->checkCancel()V

    .line 95
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->dispatchCreateTemporaryItem()V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->checkCancel()V

    .line 99
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->waitForFinalItem()V

    .line 100
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->checkCancel()V

    .line 102
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->dispatchCreateFinalItem()V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/util/concurrent/CancellationException;
    sget-object v1, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Processing cancellation request"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->deleteTemporaryItem()V

    goto :goto_0
.end method

.method public setUserActionType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 75
    iput p1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    .line 76
    return-void
.end method

.method protected shouldCreateTemporaryItem()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
