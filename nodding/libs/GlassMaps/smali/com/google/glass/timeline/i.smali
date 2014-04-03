.class final Lcom/google/glass/timeline/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/glass/timeline/h;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/h;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/timeline/i;->d:Lcom/google/glass/timeline/h;

    iput-object p2, p0, Lcom/google/glass/timeline/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput p3, p0, Lcom/google/glass/timeline/i;->b:I

    iput p4, p0, Lcom/google/glass/timeline/i;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->c()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Migrating selection: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v9

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v7, p4

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->c()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v2, "Migration query returned null cursor."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/glass/timeline/d;

    invoke-direct {v0}, Lcom/google/glass/timeline/d;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v9

    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/google/glass/timeline/d;->a(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/google/glass/timeline/i;->d:Lcom/google/glass/timeline/h;

    iget-object v4, v4, Lcom/google/glass/timeline/h;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Ljava/util/List;)I

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->c()Lcom/google/glass/logging/i;

    move-result-object v4

    const-string v5, "Have migrated %s of %s items."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/google/glass/timeline/i;->d:Lcom/google/glass/timeline/h;

    iget-object v0, v0, Lcom/google/glass/timeline/h;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Ljava/util/List;)I

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->c()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v2, "Have migrated all items."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v5, 0x1a

    const/16 v4, 0x19

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "temp_timeline"

    const-string v2, "sync_status!=1"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/glass/timeline/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/timeline/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "temp_timeline"

    const-string v2, "sync_status=1"

    const-string v3, "display_time DESC LIMIT 100"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/glass/timeline/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/google/glass/timeline/i;->b:I

    if-ge v0, v4, :cond_0

    iget v0, p0, Lcom/google/glass/timeline/i;->c:I

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->a()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;)V

    :cond_0
    iget v0, p0, Lcom/google/glass/timeline/i;->b:I

    if-ge v0, v5, :cond_1

    iget v0, p0, Lcom/google/glass/timeline/i;->c:I

    if-ne v0, v5, :cond_1

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->a()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/CachedFilesManager;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS temp_timeline"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/timeline/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS temp_timeline"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v0
.end method
