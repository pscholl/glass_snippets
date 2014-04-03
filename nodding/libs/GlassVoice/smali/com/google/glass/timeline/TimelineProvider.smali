.class public Lcom/google/glass/timeline/TimelineProvider;
.super Landroid/content/ContentProvider;
.source "TimelineProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;,
        Lcom/google/glass/timeline/TimelineProvider$PendingActionColumns;,
        Lcom/google/glass/timeline/TimelineProvider$EntityColumns;,
        Lcom/google/glass/timeline/TimelineProvider$TimelineColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.timeline"

.field private static final BASE_URI:Landroid/net/Uri; = null

.field public static final BUNDLE_COVER_EXPLICIT:I = 0x1

.field public static final BUNDLE_COVER_NONE:I = 0x0

.field public static final BUNDLE_COVER_SINGLE:I = 0x3

.field public static final BUNDLE_COVER_STANDIN:I = 0x2

.field private static final DATABASE_NAME:Ljava/lang/String; = "timeline.db"

.field private static final DATABASE_UPGRADE_BATCH_SIZE:I = 0x64

.field private static final DATABASE_VERSION:I = 0x1a

.field static final DEFAULT_PIN_SCORE:I = 0x7fffffff

.field private static final ENTITY_ENTITYID_INDEX:Ljava/lang/String; = "ix_entity_entityid"

.field static final ENTITY_TABLE:Ljava/lang/String; = "entity"

.field public static final ENTITY_URI:Landroid/net/Uri; = null

.field private static final MATCH_ENTITY:I = 0x4

.field private static final MATCH_PENDING_ACTIONS_BY_TIMELINE_ID:I = 0x3

.field private static final MATCH_TIMELINE:I = 0x1

.field private static final MATCH_TIMELINE_BY_ID:I = 0x2

.field private static final MATCH_TIMELINE_WITH_EXPIRED:I = 0x5

.field private static final MAX_SYNCED_ITEM_MIGRATION:I = 0x64

.field private static final PENDING_ACTION_DELETE_TIMELINE_ID_TRIGGER:Ljava/lang/String; = "t_pending_actions_delete_timeline_id"

.field private static final PENDING_ACTION_TABLE:Ljava/lang/String; = "pending_actions"

.field private static final PENDING_ACTION_TIMELINE_ID_INDEX:Ljava/lang/String; = "ix_pending_actions_timeline_id"

.field private static final PENDING_ACTION_TYPE:Ljava/lang/String; = "vnd.com.google.glass.timeline.pending_action"

.field private static final TIMELINE_BUNDLE_COVER_STATUS_INDEX:Ljava/lang/String; = "ix_timeline_bundle_cover_status"

.field private static final TIMELINE_BUNDLE_ID_INDEX:Ljava/lang/String; = "ix_timeline_bundle_id"

.field private static final TIMELINE_CLOUD_SYNC_STATUS_SYNC_PROTOCOL_INDEX:Ljava/lang/String; = "ix_timeline_sync_status_sync_protocol"

.field private static final TIMELINE_DELIVERY_TIME_INDEX:Ljava/lang/String; = "ix_timeline_delivery_time"

.field private static final TIMELINE_DISPLAY_TIME_INDEX:Ljava/lang/String; = "ix_timeline_display_time"

.field private static final TIMELINE_EXPIRATION_TIME_INDEX:Ljava/lang/String; = "ix_timeline_expiration_time"

.field private static final TIMELINE_IS_DELETED_INDEX:Ljava/lang/String; = "ix_timeline_is_deleted"

.field private static final TIMELINE_PIN_SCORE_INDEX:Ljava/lang/String; = "ix_timeline_pin_score"

.field private static final TIMELINE_PIN_TIME_INDEX:Ljava/lang/String; = "ix_timeline_pin_time"

.field private static final TIMELINE_SOURCE_INDEX:Ljava/lang/String; = "ix_timeline_source"

.field private static final TIMELINE_TABLE:Ljava/lang/String; = "timeline"

.field private static final TIMELINE_TYPE:Ljava/lang/String; = "vnd.com.google.glass.timeline"

.field public static final TIMELINE_URI:Landroid/net/Uri; = null

.field public static final TIMELINE_WITH_EXPIRED_URI:Landroid/net/Uri; = null

.field static final UNPINNED_ITEM_PIN_TIME:J = -0x1L

.field private static final WITH_EXPIRED_PATH:Ljava/lang/String; = "withExpired"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

.field private suppressCount:I

.field private suppressedNotifyUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 164
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.timeline"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineProvider;->BASE_URI:Landroid/net/Uri;

    .line 170
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "timeline"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    .line 173
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "entity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineProvider;->ENTITY_URI:Landroid/net/Uri;

    .line 182
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "timeline"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "withExpired"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_WITH_EXPIRED_URI:Landroid/net/Uri;

    .line 200
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 203
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.timeline"

    const-string v2, "timeline"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.timeline"

    const-string v2, "timeline/withExpired"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.timeline"

    const-string v2, "timeline/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.timeline"

    const-string v2, "timeline/*/pending_actions"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.timeline"

    const-string v2, "entity"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 333
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private addItemExpirationToQuery(Lcom/google/glass/util/SelectionBuilder;)V
    .locals 4
    .parameter "sb"

    .prologue
    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .local v0, select:Ljava/lang/StringBuilder;
    const-string v1, "(+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expiration_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">=CAST(? AS INT)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v1, " OR +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expiration_time=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v1, " OR +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expiration_time IS NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method private deleteSomeOldestItems()Z
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 848
    const/4 v7, 0x0

    .line 850
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "display_time ASC"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v7

    .line 854
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 855
    .local v12, totalCount:I
    div-int/lit8 v10, v12, 0xa

    .line 857
    .local v10, lastIndexToDelete:I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 858
    const-string v0, "display_time"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 859
    .local v8, displayTime:J
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const-string v1, "display_time<=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/timeline/TimelineProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 861
    .local v11, numDeleted:I
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Deleted %s/%s from %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    if-lez v11, :cond_1

    move v0, v13

    .line 865
    :goto_0
    if-eqz v7, :cond_0

    .line 866
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 869
    .end local v8           #displayTime:J
    .end local v11           #numDeleted:I
    :cond_0
    :goto_1
    return v0

    .restart local v8       #displayTime:J
    .restart local v11       #numDeleted:I
    :cond_1
    move v0, v14

    .line 862
    goto :goto_0

    .line 865
    .end local v8           #displayTime:J
    .end local v11           #numDeleted:I
    :cond_2
    if-eqz v7, :cond_3

    .line 866
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v14

    .line 869
    goto :goto_1

    .line 865
    .end local v10           #lastIndexToDelete:I
    .end local v12           #totalCount:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 866
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "timelineItemId"

    .prologue
    .line 193
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pending_actions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private insertEntityItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 755
    const-string v0, "entity"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 756
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->ENTITY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 714
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 722
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to insert into URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->insertTimelineItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 720
    :goto_0
    return-object v0

    .line 718
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->insertPendingAction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 720
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->insertEntityItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private insertPendingAction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 894
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 895
    const-string v6, "action_type"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 896
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 897
    .local v4, timelineItemId:Ljava/lang/String;
    const-string v6, "timeline_id"

    invoke-virtual {p2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :try_start_0
    sget-object v6, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Inserting pending action %s for %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "action_type"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 901
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 902
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "pending_actions"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 903
    .local v2, rowId:J
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 906
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #rowId:J
    :goto_0
    return-object v5

    .line 904
    :catch_0
    move-exception v1

    .line 905
    .local v1, e:Landroid/database/SQLException;
    invoke-direct {p0, v1, p1, p2}, Lcom/google/glass/timeline/TimelineProvider;->logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private insertTimelineItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 741
    const/4 v3, 0x2

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/google/glass/timeline/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 742
    .local v1, rowId:J
    sget-object v3, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Inserted new timeline item %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 748
    sget-object v3, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 743
    .end local v1           #rowId:J
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->overwriteTimelineItemIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v1

    .restart local v1       #rowId:J
    goto :goto_0

    .line 750
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Row not inserted for URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J
    .locals 5
    .parameter "db"
    .parameter "uri"
    .parameter "values"
    .parameter "algorithm"

    .prologue
    .line 823
    const-wide/16 v1, 0x0

    .line 825
    .local v1, rowId:J
    :try_start_0
    const-string v3, "timeline"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v1

    :goto_0
    move-wide v3, v1

    .line 839
    :goto_1
    return-wide v3

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineProvider;->deleteSomeOldestItems()Z

    move-result v3

    if-nez v3, :cond_0

    .line 828
    invoke-direct {p0, v0, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 831
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/timeline/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v3

    goto :goto_1

    .line 832
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 835
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    throw v0

    .line 836
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_2
    move-exception v0

    .line 837
    .local v0, e:Landroid/database/SQLException;
    invoke-direct {p0, v0, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "e"
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 880
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Exception inserting:"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "URI: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Values: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    throw p1
.end method

.method private mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "isDelete"

    .prologue
    .line 923
    new-instance v4, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v4, p3, p4}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 926
    .local v4, sb:Lcom/google/glass/util/SelectionBuilder;
    sget-object v6, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 927
    .local v3, match:I
    packed-switch v3, :pswitch_data_0

    .line 945
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to update or delete URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 930
    :pswitch_0
    const-string v5, "timeline"

    .line 948
    .local v5, table:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 950
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_1

    .line 951
    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 963
    .local v0, count:I
    :goto_1
    if-lez v0, :cond_0

    .line 964
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineProvider;->notifyChange(Landroid/net/Uri;)V

    .line 966
    .end local v0           #count:I
    :cond_0
    :goto_2
    return v0

    .line 933
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #table:Ljava/lang/String;
    :pswitch_1
    const-string v5, "timeline"

    .line 934
    .restart local v5       #table:Ljava/lang/String;
    const-string v6, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 937
    .end local v5           #table:Ljava/lang/String;
    :pswitch_2
    const-string v5, "pending_actions"

    .line 938
    .restart local v5       #table:Ljava/lang/String;
    const-string v7, "timeline_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 942
    .end local v5           #table:Ljava/lang/String;
    :pswitch_3
    const-string v5, "entity"

    .line 943
    .restart local v5       #table:Ljava/lang/String;
    goto :goto_0

    .line 954
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, p2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0       #count:I
    goto :goto_1

    .line 955
    .end local v0           #count:I
    :catch_0
    move-exception v2

    .line 956
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineProvider;->deleteSomeOldestItems()Z

    move-result v6

    if-nez v6, :cond_2

    .line 957
    throw v2

    .line 960
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/timeline/TimelineProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto :goto_2

    .line 927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private overwriteTimelineItemIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 19
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 768
    const-wide/16 v17, 0x0

    .line 769
    .local v17, rowId:J
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const-string v6, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 770
    .local v5, existingUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 772
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v4, 0x2

    :try_start_0
    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "modified_time"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "is_deleted"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/glass/timeline/TimelineProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v11

    .line 774
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 775
    const-string v4, "is_deleted"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 776
    .local v14, isDeleted:I
    if-lez v14, :cond_1

    .line 777
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Insert ignored for timeline item %s because it is already deleted"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    const-wide/16 v6, 0x1

    .line 806
    if-eqz v11, :cond_0

    .line 807
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 810
    .end local v14           #isDeleted:I
    :cond_0
    :goto_0
    return-wide v6

    .line 782
    .restart local v14       #isDeleted:I
    :cond_1
    :try_start_1
    const-string v4, "is_deleted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 783
    .local v15, isDeletion:Ljava/lang/Integer;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    .line 784
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/timeline/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v17

    .line 785
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Overwrote timeline item %s because it is now deleted"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    if-eqz v11, :cond_2

    .line 807
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide/from16 v6, v17

    goto :goto_0

    .line 790
    :cond_3
    :try_start_2
    const-string v4, "modified_time"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 792
    .local v12, existingModifiedTime:J
    const-string v4, "modified_time"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    .line 793
    .local v16, modifiedTime:Ljava/lang/Long;
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v12

    if-lez v4, :cond_6

    .line 794
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/timeline/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v17

    .line 795
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Overwrote timeline item %s because existing modified time (%s) < new modified time (%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v16, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 806
    .end local v12           #existingModifiedTime:J
    .end local v14           #isDeleted:I
    .end local v15           #isDeletion:Ljava/lang/Integer;
    .end local v16           #modifiedTime:Ljava/lang/Long;
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 807
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide/from16 v6, v17

    .line 810
    goto/16 :goto_0

    .line 799
    .restart local v12       #existingModifiedTime:J
    .restart local v14       #isDeleted:I
    .restart local v15       #isDeletion:Ljava/lang/Integer;
    .restart local v16       #modifiedTime:Ljava/lang/Long;
    :cond_6
    :try_start_3
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Insert ignored for timeline item %s because existing modified time (%s) >= new modified time (%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v16, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 802
    const-wide/16 v17, 0x1

    goto :goto_1

    .line 806
    .end local v12           #existingModifiedTime:J
    .end local v14           #isDeleted:I
    .end local v15           #isDeletion:Ljava/lang/Integer;
    .end local v16           #modifiedTime:Ljava/lang/Long;
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_7

    .line 807
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4
.end method

.method private queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "unexpiredOnly"

    .prologue
    .line 619
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 620
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v10, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v10, p3, p4}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 622
    .local v10, sb:Lcom/google/glass/util/SelectionBuilder;
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 623
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 643
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to query URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 625
    :pswitch_1
    const-string v2, "timeline"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 626
    if-eqz p6, :cond_0

    .line 627
    invoke-direct {p0, v10}, Lcom/google/glass/timeline/TimelineProvider;->addItemExpirationToQuery(Lcom/google/glass/util/SelectionBuilder;)V

    .line 646
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 648
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v10}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 650
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 651
    return-object v8

    .line 631
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :pswitch_2
    const-string v2, "timeline"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :pswitch_3
    const-string v2, "timeline"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 635
    const-string v2, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :pswitch_4
    const-string v2, "pending_actions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 639
    const-string v3, "timeline_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 689
    const/4 v3, 0x0

    .line 691
    .local v3, numInserts:I
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 692
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 694
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    array-length v4, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v4, :cond_0

    .line 696
    :try_start_1
    aget-object v4, p2, v2

    invoke-direct {p0, v0, p1, v4}, Lcom/google/glass/timeline/TimelineProvider;->insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 697
    add-int/lit8 v3, v3, 0x1

    .line 694
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    :catch_0
    move-exception v1

    .line 699
    .local v1, e:Landroid/database/SQLException;
    :try_start_2
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to insert item %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, p2, v2

    const-string v9, "_id"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 704
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 702
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 704
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 708
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineProvider;->notifyChange(Landroid/net/Uri;)V

    .line 710
    return v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 912
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 602
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 603
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 611
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 605
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.glass.timeline"

    goto :goto_0

    .line 607
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.com.google.glass.timeline"

    goto :goto_0

    .line 609
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.glass.timeline.pending_action"

    goto :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 677
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 678
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0, p1, p2}, Lcom/google/glass/timeline/TimelineProvider;->insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 679
    .local v1, resultUri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineProvider;->notifyChange(Landroid/net/Uri;)V

    .line 680
    return-object v1
.end method

.method notifyChange(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 976
    iget v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    if-lez v0, :cond_2

    .line 979
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 980
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    goto :goto_0

    .line 986
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineProvider;->notifyChangeInternal(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method notifyChangeInternal(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 994
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 995
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.google.glass.timeline"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 996
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 596
    new-instance v0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    .line 597
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 671
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public startSuppressNotifyChange()V
    .locals 1

    .prologue
    .line 1000
    iget v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    .line 1001
    return-void
.end method

.method public stopSuppressNotifyChange()V
    .locals 2

    .prologue
    .line 1008
    iget v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    .line 1009
    iget v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 1010
    iget v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    .line 1012
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    .line 1013
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineProvider;->notifyChangeInternal(Landroid/net/Uri;)V

    .line 1015
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 1009
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 917
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
