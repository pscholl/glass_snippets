.class Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;
.super Ljava/lang/Object;
.source "TimelineProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$newVersion:I

.field final synthetic val$oldVersion:I


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput p3, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$oldVersion:I

    iput p4, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$newVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private migrate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "db"
    .parameter "tempTimelineTable"
    .parameter "selection"
    .parameter "orderBy"

    .prologue
    .line 519
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Migrating selection: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    const/4 v9, 0x0

    .line 522
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 523
    if-nez v9, :cond_1

    .line 524
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Migration query returned null cursor."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    if-eqz v9, :cond_0

    .line 551
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    :try_start_1
    new-instance v11, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v11}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    .line 528
    .local v11, timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v10, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    const/4 v8, 0x0

    .line 533
    .local v8, count:I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 534
    .local v12, total:I
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 535
    invoke-static {v9}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v8, v8, 0x1

    .line 538
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 539
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {v11, v0, v10}, Lcom/google/glass/timeline/TimelineHelper;->bulkInsertTimelineItem(Landroid/content/Context;Ljava/util/List;)I

    .line 540
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 542
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Have migrated %s of %s items."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 550
    .end local v8           #count:I
    .end local v10           #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .end local v11           #timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    .end local v12           #total:I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 551
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 545
    .restart local v8       #count:I
    .restart local v10       #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .restart local v11       #timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    .restart local v12       #total:I
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {v11, v0, v10}, Lcom/google/glass/timeline/TimelineHelper;->bulkInsertTimelineItem(Landroid/content/Context;Ljava/util/List;)I

    .line 546
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 548
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Have migrated all items."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    if-eqz v9, :cond_0

    .line 551
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x1a

    const/16 v4, 0x19

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "temp_timeline"

    const-string v2, "sync_status!=1"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->migrate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "temp_timeline"

    const-string v2, "sync_status=1"

    const-string v3, "display_time DESC LIMIT 100"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->migrate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$oldVersion:I

    if-ge v0, v4, :cond_0

    iget v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$newVersion:I

    if-ne v0, v4, :cond_0

    .line 504
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/CachedFilesManager;->clearCache(Lcom/google/glass/util/CachedFilesManager$Type;)V

    .line 506
    :cond_0
    iget v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$oldVersion:I

    if-ge v0, v5, :cond_1

    iget v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$newVersion:I

    if-ne v0, v5, :cond_1

    .line 510
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/CachedFilesManager;->trimToWithoutTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS temp_timeline"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 515
    return-void

    .line 513
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS temp_timeline"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v0
.end method
