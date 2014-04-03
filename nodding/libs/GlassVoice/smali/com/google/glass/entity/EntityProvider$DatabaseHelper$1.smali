.class Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;
.super Ljava/lang/Object;
.source "EntityProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private migrate()V
    .locals 17

    .prologue
    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "temp_entity"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 311
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 312
    invoke-static {}, Lcom/google/glass/entity/EntityProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Entity table migration query returned null cursor."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v12, 0x0

    .line 317
    .local v12, index:I
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v9, v1, [Landroid/content/ContentValues;

    .line 318
    .local v9, allContentValues:[Landroid/content/ContentValues;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    array-length v1, v9

    if-ge v12, v1, :cond_3

    .line 319
    :cond_2
    invoke-static {v10}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v11

    .line 320
    .local v11, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v11}, Lcom/google/glass/entity/EntityHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentValues;

    move-result-object v16

    .line 323
    .local v16, values:Landroid/content/ContentValues;
    const-string v1, "share_count"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 324
    .local v13, shareCount:I
    const-string v1, "share_time"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 325
    .local v14, shareTime:J
    const-string v1, "share_count"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v1, "share_time"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    aput-object v16, v9, v12

    .line 329
    add-int/lit8 v12, v12, 0x1

    .line 330
    goto :goto_1

    .line 333
    .end local v11           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v13           #shareCount:I
    .end local v14           #shareTime:J
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    #getter for: Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->access$100(Lcom/google/glass/entity/EntityProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    if-eqz v10, :cond_0

    .line 336
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 335
    .end local v9           #allContentValues:[Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_4

    .line 336
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 303
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->migrate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    iget-object v0, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS temp_entity"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    return-void

    .line 305
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS temp_entity"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v0
.end method
