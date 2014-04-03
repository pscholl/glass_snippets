.class public Lcom/google/glass/timeline/TimelineNotificationHelper;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"


# static fields
.field public static final ACTION_NOTIFY_TIMELINE_ITEM:Ljava/lang/String; = "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

.field private static final ATTACHMENT_TYPES_TO_PRELOAD:[Ljava/lang/String; = null

.field public static final EXTRA_BUNDLE_ITEM:Ljava/lang/String; = "bundle_item"

.field public static final EXTRA_BUNDLE_ITEM_ID:Ljava/lang/String; = "bundle_item_id"

.field public static final EXTRA_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final EXTRA_NUM_NOTIFICATIONS:Ljava/lang/String; = "numNotifications"

.field private static final HTML_RESOURCE_WAIT_TIME_SECONDS:I = 0x1e

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 64
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->getAttachmentTypesToPreload()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->ATTACHMENT_TYPES_TO_PRELOAD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private static getAttachmentTypesToPreload()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 257
    .local v0, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    const-string v1, "video/vnd.google-glass.stream-url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method broadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_BroadcastWakeLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/glass/util/BroadcastUnderWakeLock;->sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method getBundleCover(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/util/Pair;
    .locals 2
    .parameter "context"
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->getBundleCover(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "numNotifications"

    .prologue
    .line 77
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineNotificationHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineNotificationHelper$1;-><init>(Lcom/google/glass/timeline/TimelineNotificationHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method notifyInternal(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 12
    .parameter "context"
    .parameter "item"
    .parameter "numNotifications"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 104
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 106
    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    invoke-static {v6}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    sget-object v6, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Not notifying on a deleted item."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 117
    new-instance v5, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v5, p2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 119
    .local v5, timelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    sget-object v6, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Item is in a bundle, we must make sure we notify for the bundle cover: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineNotificationHelper;->getBundleCover(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/util/Pair;

    move-result-object v2

    .line 124
    .local v2, cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 125
    sget-object v6, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Not able to find bundle cover for: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 132
    .local v4, mainTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 133
    move-object v1, p2

    .line 145
    .end local v2           #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/Integer;>;"
    .end local v5           #timelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    .local v1, bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_1
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/app/GlassApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v0

    .line 146
    .local v0, bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;
    invoke-virtual {p0, v0, v4}, Lcom/google/glass/timeline/TimelineNotificationHelper;->preloadAttachments(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 147
    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/timeline/TimelineNotificationHelper;->preloadAttachments(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 152
    :cond_2
    sget-object v6, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Notifying user of main timeline item: %s"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 154
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "item"

    invoke-static {v4}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 155
    const-string v6, "item_id"

    new-instance v7, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v7, v4}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    if-eqz v1, :cond_3

    .line 157
    sget-object v6, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "... and bundle timeline item: %s"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const-string v6, "bundle_item"

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 159
    const-string v6, "bundle_item_id"

    new-instance v7, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v7, v1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 161
    :cond_3
    const-string v6, "numNotifications"

    invoke-virtual {v3, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, p1, v3}, Lcom/google/glass/timeline/TimelineNotificationHelper;->broadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 135
    .end local v0           #bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;
    .end local v1           #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/Integer;>;"
    .restart local v5       #timelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    goto :goto_1

    .line 140
    .end local v1           #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/Integer;>;"
    .end local v4           #mainTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v5           #timelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    :cond_5
    move-object v4, p2

    .line 141
    .restart local v4       #mainTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v1, 0x0

    .restart local v1       #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    goto :goto_1
.end method

.method preloadAttachments(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 13
    .parameter "bitmapFactory"
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 184
    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    .line 185
    .local v3, html:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 186
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 188
    .local v6, renderer:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/HtmlRenderer;>;"
    :try_start_0
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 191
    .local v7, resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Lcom/google/glass/timeline/TimelineNotificationHelper$2;

    invoke-direct {v9, p0, v7, v6, p2}, Lcom/google/glass/timeline/TimelineNotificationHelper$2;-><init>(Lcom/google/glass/timeline/TimelineNotificationHelper;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    const-wide/16 v8, 0x1e

    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 224
    sget-object v8, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Timed out while loading HTML resources."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Lcom/google/glass/timeline/TimelineNotificationHelper$3;

    invoke-direct {v9, p0, v6}, Lcom/google/glass/timeline/TimelineNotificationHelper$3;-><init>(Lcom/google/glass/timeline/TimelineNotificationHelper;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 253
    .end local v6           #renderer:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/HtmlRenderer;>;"
    .end local v7           #resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;
    :cond_1
    :goto_1
    return-void

    .line 226
    .restart local v6       #renderer:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/HtmlRenderer;>;"
    .restart local v7       #resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v2

    .line 227
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v8, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Interrupted while waiting for HTML resources."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v2, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 230
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v7           #resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v8

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v10, Lcom/google/glass/timeline/TimelineNotificationHelper$3;

    invoke-direct {v10, p0, v6}, Lcom/google/glass/timeline/TimelineNotificationHelper$3;-><init>(Lcom/google/glass/timeline/TimelineNotificationHelper;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    throw v8

    .line 243
    .end local v6           #renderer:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/HtmlRenderer;>;"
    :cond_2
    iget-object v8, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v8}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 244
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 245
    .local v1, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iget-object v8, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType:Ljava/lang/String;

    sget-object v9, Lcom/google/glass/timeline/TimelineNotificationHelper;->ATTACHMENT_TYPES_TO_PRELOAD:[Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/glass/timeline/TimelineHelper;->isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 246
    sget-object v8, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Preloading image attachment %s for notification."

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    const/4 v8, 0x0

    invoke-virtual {p1, v1, v12, v8}, Lcom/google/glass/util/CachedBitmapFactory;->decodeAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 244
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
