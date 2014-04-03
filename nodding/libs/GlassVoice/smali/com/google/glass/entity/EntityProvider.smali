.class public Lcom/google/glass/entity/EntityProvider;
.super Landroid/content/ContentProvider;
.source "EntityProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityProvider$DatabaseHelper;,
        Lcom/google/glass/entity/EntityProvider$Columns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.entity"

.field private static final BASE_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "entity.db"

.field private static final DATABASE_VERSION:I = 0xc

.field private static final ENTITY_EMAIL_INDEX:Ljava/lang/String; = "ix_entity_email"

.field private static final ENTITY_IS_COMMUNICATION_TARGET_INDEX:Ljava/lang/String; = "ix_entity_is_communication_target"

.field private static final ENTITY_IS_SHARE_TARGET_INDEX:Ljava/lang/String; = "ix_entity_is_share_target"

.field private static final ENTITY_PHONE_NUMBER_INDEX:Ljava/lang/String; = "ix_entity_phone_number"

.field private static final ENTITY_SHOULD_SYNC_INDEX:Ljava/lang/String; = "ix_entity_should_sync"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENTITY_SOURCE_INDEX:Ljava/lang/String; = "ix_entity_source"

.field private static final ENTITY_TABLE:Ljava/lang/String; = "entity"

.field private static final ENTITY_TYPE:Ljava/lang/String; = "vnd.com.google.glass.entity"

.field private static final INCREMENT_SHARE_COUNT:I = 0x3

.field private static final INCREMENT_SHARE_COUNT_PATH:Ljava/lang/String; = "incrementShare"

.field private static final LOG_QUERY:Z = false

.field private static final MATCH_ENTITY:I = 0x1

.field private static final MATCH_ENTITY_BY_ID:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J = 0x0L

.field public static final TYPE_GROUP:I = 0x0

.field public static final TYPE_INDIVIDUAL:I = 0x1

.field public static final URI:Landroid/net/Uri; = null

.field public static final URI_PARAM_GROUP_BY:Ljava/lang/String; = "groupBy"

.field public static final URI_PARAM_LIMIT:Ljava/lang/String; = "limit"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private clock:Lcom/google/glass/util/Clock;

.field private dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

.field private settingsHelper:Lcom/google/glass/util/SettingsHelper;

.field private suppressUpdates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 87
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.entity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->BASE_URI:Landroid/net/Uri;

    .line 93
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "entity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    .line 99
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 101
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.entity"

    const-string v2, "entity"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.entity"

    const-string v2, "entity/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.entity"

    const-string v2, "incrementShare"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/entity/EntityProvider;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 230
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static getAllEntitiesUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 558
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 564
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "groupBy"

    const-string v2, "ifnull(obfuscated_gaia_id, \"FGID\" || _id)"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 566
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static incrementShareCount(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 8
    .parameter "resolver"
    .parameter "entity"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    .line 109
    .local v0, id:Ljava/lang/String;
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    .line 111
    .local v1, source:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 115
    sget-object v5, Lcom/google/glass/entity/EntityProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "incrementShare"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 117
    .local v2, updatePath:Landroid/net/Uri;
    const/4 v5, 0x0

    const-string v6, "_id=? AND source=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v4

    aput-object v1, v7, v3

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 15
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "isDelete"

    .prologue
    .line 466
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 467
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v13, Lcom/google/glass/util/SelectionBuilder;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v13, v0, v1}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 470
    .local v13, sb:Lcom/google/glass/util/SelectionBuilder;
    sget-object v4, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 471
    .local v12, match:I
    packed-switch v12, :pswitch_data_0

    .line 503
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to update URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    :pswitch_0
    const-string v3, "entity"

    .line 507
    .local v3, table:Ljava/lang/String;
    :goto_0
    if-eqz p5, :cond_4

    .line 508
    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 513
    .local v11, count:I
    :goto_1
    if-lez v11, :cond_0

    .line 514
    invoke-direct/range {p0 .. p1}, Lcom/google/glass/entity/EntityProvider;->notifyChange(Landroid/net/Uri;)V

    .line 517
    .end local v11           #count:I
    :cond_0
    :goto_2
    return v11

    .line 476
    .end local v3           #table:Ljava/lang/String;
    :pswitch_1
    const-string v3, "entity"

    .line 477
    .restart local v3       #table:Ljava/lang/String;
    const-string v4, "_id=?"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    .end local v3           #table:Ljava/lang/String;
    :pswitch_2
    if-eqz p5, :cond_1

    .line 481
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete not supported on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 483
    :cond_1
    const-string v3, "entity"

    .line 484
    .restart local v3       #table:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "share_count"

    aput-object v6, v4, v5

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 486
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_2

    .line 487
    sget-object v4, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Could not find row to increment: %s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    const/4 v11, 0x0

    goto :goto_2

    .line 492
    :cond_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 493
    const/4 v11, 0x0

    .line 499
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 495
    :cond_3
    :try_start_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    .end local p2
    .local v14, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v4, "share_count"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v4, "share_time"

    iget-object v5, p0, Lcom/google/glass/entity/EntityProvider;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v5}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 499
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object/from16 p2, v14

    .line 501
    .end local v14           #values:Landroid/content/ContentValues;
    .restart local p2
    goto/16 :goto_0

    .line 499
    :catchall_0
    move-exception v4

    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    .line 510
    .end local v10           #c:Landroid/database/Cursor;
    :cond_4
    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .restart local v11       #count:I
    goto/16 :goto_1

    .line 499
    .end local v11           #count:I
    .end local p2
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v14       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v4

    move-object/from16 p2, v14

    .end local v14           #values:Landroid/content/ContentValues;
    .restart local p2
    goto :goto_3

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 570
    iget-boolean v0, p0, Lcom/google/glass/entity/EntityProvider;->suppressUpdates:Z

    if-eqz v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 577
    :cond_0
    if-eqz p1, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 527
    const/4 v1, 0x0

    .line 528
    .local v1, exception:Landroid/content/OperationApplicationException;
    const/4 v3, 0x0

    .line 529
    .local v3, numExceptions:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 530
    .local v4, numOperations:I
    new-array v5, v4, [Landroid/content/ContentProviderResult;

    .line 531
    .local v5, results:[Landroid/content/ContentProviderResult;
    iput-boolean v11, p0, Lcom/google/glass/entity/EntityProvider;->suppressUpdates:Z

    .line 532
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 534
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    invoke-virtual {v6, p0, v5, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v6

    aput-object v6, v5, v2
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Landroid/content/OperationApplicationException;
    add-int/lit8 v3, v3, 0x1

    .line 539
    if-nez v1, :cond_0

    .line 540
    move-object v1, v0

    goto :goto_1

    .line 544
    .end local v0           #e:Landroid/content/OperationApplicationException;
    :cond_1
    iput-boolean v10, p0, Lcom/google/glass/entity/EntityProvider;->suppressUpdates:Z

    .line 545
    if-eqz v1, :cond_2

    .line 546
    sget-object v6, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "applyBatch() failed on %s out of %s total operations."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    throw v1

    .line 550
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/glass/entity/EntityProvider;->notifyChange(Landroid/net/Uri;)V

    .line 551
    return-object v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 455
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/entity/EntityProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 383
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 384
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 390
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 386
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.glass.entity"

    goto :goto_0

    .line 388
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.com.google.glass.entity"

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 425
    sget-object v6, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 426
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 430
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to insert into URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 437
    :pswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 438
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "entity"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v6, v7, p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 445
    .local v3, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityProvider;->notifyChange(Landroid/net/Uri;)V

    .line 447
    sget-object v5, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v5, "_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #rowId:J
    :goto_0
    return-object v5

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, e:Landroid/database/SQLException;
    sget-object v6, Lcom/google/glass/entity/EntityProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Exception inserting into entity DB"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 449
    .end local v1           #e:Landroid/database/SQLException;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #rowId:J
    :cond_0
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Row not inserted for URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    .line 370
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/EntityProvider;->clock:Lcom/google/glass/util/Clock;

    .line 371
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityProvider;->settingsHelper:Lcom/google/glass/util/SettingsHelper;

    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 396
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 397
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v13, Lcom/google/glass/util/SelectionBuilder;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v13, v0, v1}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 399
    .local v13, sb:Lcom/google/glass/util/SelectionBuilder;
    sget-object v4, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 400
    .local v12, match:I
    packed-switch v12, :pswitch_data_0

    .line 409
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to query URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 402
    :pswitch_0
    const-string v4, "entity"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 412
    :goto_0
    const-string v4, "limit"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, limit:Ljava/lang/String;
    const-string v4, "groupBy"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, groupBy:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 416
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 418
    .local v11, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v11, v4, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 420
    return-object v11

    .line 405
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #groupBy:Ljava/lang/String;
    .end local v10           #limit:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :pswitch_1
    const-string v4, "entity"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 406
    const-string v4, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setClock(Lcom/google/glass/util/Clock;)V
    .locals 0
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/glass/entity/EntityProvider;->clock:Lcom/google/glass/util/Clock;

    .line 379
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->close()V

    .line 586
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 460
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/entity/EntityProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
