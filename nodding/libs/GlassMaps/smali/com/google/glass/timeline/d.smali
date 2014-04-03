.class public final Lcom/google/glass/timeline/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field private static final d:Lcom/google/glass/logging/i;

.field private static final e:Ljava/lang/Object;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/text/SimpleDateFormat;

.field private static final i:Ljava/lang/Object;

.field private static j:Lcom/google/glass/location/f;


# instance fields
.field private final h:Lcom/google/glass/util/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/d;->e:Ljava/lang/Object;

    const-string v0, "$DISPLAY_TIME"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/d;->f:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/timeline/d;->g:Ljava/text/SimpleDateFormat;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/d;->a:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video/mp4"

    aput-object v1, v0, v2

    const-string v1, "video/vnd.google-glass.stream-url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/d;->b:[Ljava/lang/String;

    invoke-static {}, Lcom/google/glass/timeline/d;->c()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/d;->c:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/d;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/util/q;->a()Lcom/google/glass/util/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/timeline/d;-><init>(Lcom/google/glass/util/o;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/glass/util/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/timeline/d;->h:Lcom/google/glass/util/o;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)I
    .locals 10

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Landroid/content/ContentValues;

    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v0}, Lcom/google/glass/timeline/d;->h(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    sget-object v6, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v7, "Preparing to insert timeline item with ID %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/glass/timeline/d;->c(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v0}, Lcom/google/glass/timeline/d;->e(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/google/glass/timeline/d;->g(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v0, "com.google.glass.timeline"

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineProvider;

    invoke-static {v0}, Lcom/google/glass/timeline/d;->a(Lcom/google/glass/timeline/TimelineProvider;)V

    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->a:Landroid/net/Uri;

    invoke-virtual {v6, v1, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->b:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    invoke-virtual {v6, v4, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v6, v1, v4}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/glass/timeline/d;->b(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v1

    :cond_4
    invoke-static {v0}, Lcom/google/glass/timeline/d;->b(Lcom/google/glass/timeline/TimelineProvider;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;)I
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v1, -0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Long;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Long;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static a(Lcom/google/googlex/glass/common/proto/am;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "action_type"

    iget v2, p0, Lcom/google/googlex/glass/common/proto/am;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "timeline_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/am;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "payload"

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/am;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->a:Landroid/net/Uri;

    const-string v3, "pin_time<>-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/f/a;->b(Z)V

    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/google/glass/timeline/d;->a(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/glass/util/by;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "device:"

    invoke-static {p0, v0, v1, p1}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/glass/util/by;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/glass/util/by;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6

    invoke-static {}, Lcom/google/glass/timeline/d;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/glass/util/by;Ljava/lang/String;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/glass/util/by;Ljava/lang/String;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "android_id"

    invoke-virtual {p3, v0}, Lcom/google/glass/util/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    if-eqz p5, :cond_0

    invoke-static {p0, v0, v3}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    :cond_0
    iput-object p4, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    iput v4, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    const/4 v0, 0x2

    iput v0, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    iput v4, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    iput v4, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    return-object v3
.end method

.method public static a(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    invoke-static {p0}, Lcom/google/glass/timeline/d;->b(Landroid/database/Cursor;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/d;->a([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v2, "Error deserializing protobuf"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 5

    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->b:Landroid/net/Uri;

    const-string v1, "timelineId=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/glass/timeline/d;->e(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/glass/timeline/d;->d(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/glass/timeline/d;->c(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "bundle_cover_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->a:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    goto :goto_0
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 13
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v1, "Cannot bundle items with empty bundle ID."

    new-array v2, v9, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v1, "Updating bundle: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v10, Lcom/google/glass/timeline/d;->e:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+is_deleted==0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bundle_id==?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v5, "display_time DESC"

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, -0x1

    :try_start_1
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    sget-object v0, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v2, "Found no items in bundle: %s; cannot update."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_3
    :try_start_4
    const-string v0, "bundle_cover_status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move-wide v5, v7

    move v4, v9

    :cond_4
    invoke-static {v1}, Lcom/google/glass/timeline/d;->a(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_5

    iget-object v3, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v3

    or-int/2addr v4, v3

    invoke-static {v2}, Lcom/google/glass/timeline/d;->d(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_6

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-static {v11}, Lcom/google/glass/timeline/d;->a(Ljava/util/List;)I

    move-result v3

    move-object v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-static/range {v0 .. v6}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;IZJ)V

    monitor-exit v10

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;IZJ)V
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-nez v2, :cond_5

    :cond_3
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_a

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x3

    move-object v1, p0

    move-object v2, v0

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    move v7, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_a

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v7, p3, :cond_8

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, v0

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    :cond_6
    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_7
    const/4 v2, 0x2

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x2

    move-object v1, p0

    move-object v2, v0

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, v0

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v0

    move v4, p4

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    goto :goto_4

    :cond_a
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/ab;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/ab;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "image/jpeg"

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "_data"

    aput-object v0, v2, v4

    const-string v3, "_data=?"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p1, Lcom/google/googlex/glass/common/proto/ab;->f:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    const-string v0, "video/mp4"

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lcom/google/glass/timeline/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v1, "Not populating location on Companion"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/google/glass/timeline/d;->b(Landroid/content/Context;)Lcom/google/glass/location/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/location/f;->a()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/glass/location/e;->a(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ag;

    move-result-object v0

    iput-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/ag;

    goto :goto_0
.end method

.method private static a(Lcom/google/glass/timeline/TimelineProvider;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->a()V

    :cond_0
    return-void
.end method

.method public static a(Lcom/google/glass/timeline/g;)V
    .locals 2

    sget-object v1, Lcom/google/glass/timeline/d;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/timeline/g;->b()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 1

    new-instance v0, Lcom/google/googlex/glass/common/proto/ah;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ah;-><init>()V

    iput p1, v0, Lcom/google/googlex/glass/common/proto/ah;->c:I

    invoke-static {p0, v0}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/ah;)V

    return-void
.end method

.method public static a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/ab;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ab;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/ab;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/ab;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/ab;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/ab;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/ab;

    goto :goto_0
.end method

.method public static a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/ac;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/ac;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ac;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/ac;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/ac;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/ac;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/ac;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/ac;

    goto :goto_0
.end method

.method public static a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/ah;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/ah;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ah;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/ah;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/ah;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/ah;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/ah;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/ah;

    goto :goto_0
.end method

.method private static a(Lcom/google/googlex/glass/common/proto/ac;ILandroid/content/ContentValues;Ljava/util/List;)V
    .locals 7

    invoke-static {p0}, Lcom/google/glass/entity/p;->g(Lcom/google/googlex/glass/common/proto/ac;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/glass/entity/p;->g(Lcom/google/googlex/glass/common/proto/ac;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string v5, "entityType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "entityId"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a([Lcom/google/googlex/glass/common/proto/ac;ILandroid/content/ContentValues;Ljava/util/List;)V
    .locals 3

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2, p1, p2, p3}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/ac;ILandroid/content/ContentValues;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/google/glass/timeline/d;->d(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/google/glass/location/f;
    .locals 4

    sget-object v1, Lcom/google/glass/timeline/d;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/timeline/d;->j:Lcom/google/glass/location/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/timeline/d;->j:Lcom/google/glass/location/f;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v2, Lcom/google/glass/location/f;

    invoke-static {}, Lcom/google/glass/util/q;->a()Lcom/google/glass/util/o;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/glass/location/f;-><init>(Landroid/location/LocationManager;Lcom/google/glass/util/o;)V

    sput-object v2, Lcom/google/glass/timeline/d;->j:Lcom/google/glass/location/f;

    sget-object v0, Lcom/google/glass/timeline/d;->j:Lcom/google/glass/location/f;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v2, "Couldn\'t clone timeline item"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t clone timeline item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/google/glass/timeline/TimelineProvider;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->b()V

    :cond_0
    return-void
.end method

.method private static b(Landroid/database/Cursor;)[B
    .locals 1

    const-string v0, "protobuf_blob"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "_id"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "creation_time"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "modified_time"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "display_time"

    invoke-static {p0}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "delivery_time"

    invoke-static {p0}, Lcom/google/glass/timeline/d;->f(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "expiration_time"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime:Ljava/lang/Long;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "pin_time"

    invoke-static {p0}, Lcom/google/glass/timeline/d;->d(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "pin_score"

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "is_deleted"

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "sync_status"

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "sync_protocol"

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "bundle_id"

    invoke-static {p0}, Lcom/google/glass/timeline/d;->g(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bundle_cover_status"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover:Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "source"

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "protobuf_blob"

    invoke-static {p0}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object v3

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.glass.companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static c()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/glass/timeline/d;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/google/glass/timeline/d;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static d(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J
    .locals 2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Long;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static e(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "timelineId"

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/ac;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/ac;

    const/4 v3, 0x1

    invoke-static {v2, v3, v1, v0}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/ac;ILandroid/content/ContentValues;Ljava/util/List;)V

    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/ac;

    const/4 v3, 0x2

    invoke-static {v2, v3, v1, v0}, Lcom/google/glass/timeline/d;->a([Lcom/google/googlex/glass/common/proto/ac;ILandroid/content/ContentValues;Ljava/util/List;)V

    return-object v0
.end method

.method private static f(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J
    .locals 2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/ak;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/ak;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/ak;->c:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Long;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static g(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/f/a;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/am;)Landroid/net/Uri;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-static {p2}, Lcom/google/glass/timeline/d;->h(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "com.google.glass.timeline"

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineProvider;

    invoke-static {v0}, Lcom/google/glass/timeline/d;->a(Lcom/google/glass/timeline/TimelineProvider;)V

    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->a:Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/glass/timeline/d;->c(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v6, "Inserted timeline item [id=%s, action=%s, itemType=%s]."

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v8, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    aput-object v8, v7, v1

    const/4 v8, 0x1

    if-nez p4, :cond_3

    const/4 v1, 0x0

    :goto_0
    aput-object v1, v7, v8

    const/4 v1, 0x2

    aput-object p3, v7, v1

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-static {p4, v5}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/am;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    invoke-static {v2, p2}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {p2}, Lcom/google/glass/timeline/d;->g(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v1, v5}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v0}, Lcom/google/glass/timeline/d;->b(Lcom/google/glass/timeline/TimelineProvider;)V

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    iget v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    if-eq v0, v10, :cond_2

    iget v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    if-eq v0, v9, :cond_2

    const-string v0, "com.google.glass.timeline"

    sget-object v1, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {p1, v0, v1}, Lcom/google/glass/sync/SyncHelper;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    :cond_2
    new-instance v0, Lcom/google/glass/userevent/a;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-object v4

    :cond_3
    :try_start_1
    iget v1, p4, Lcom/google/googlex/glass/common/proto/am;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/glass/timeline/d;->b(Lcom/google/glass/timeline/TimelineProvider;)V

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
.end method

.method public final a(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/am;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 9

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/ab;

    invoke-static {v3}, Lcom/google/glass/util/a;->b([Ljava/lang/Object;)I

    move-result v3

    sget-object v4, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v5, "updateTimelineItem %s with markAsSynced = %s, with number of attachments = %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    sget-object v3, Lcom/google/glass/timeline/d;->e:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update without holding the UPDATE_LOCK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lcom/google/glass/timeline/d;->h(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    invoke-static {v5}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    invoke-static {v5}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v3, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v4, "Cannot un-delete item: %s; update has been canceled."

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    aput-object v5, v0, v1

    invoke-interface {v3, v4, v0}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p2, v2

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Lcom/google/glass/timeline/d;->g(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p4, :cond_7

    :goto_1
    iput v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    if-nez p4, :cond_4

    iget-object v0, p0, Lcom/google/glass/timeline/d;->h:Lcom/google/glass/util/o;

    invoke-interface {v0}, Lcom/google/glass/util/o;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    :cond_4
    const-string v0, "com.google.glass.timeline"

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineProvider;

    invoke-static {v0}, Lcom/google/glass/timeline/d;->a(Lcom/google/glass/timeline/TimelineProvider;)V

    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->a:Landroid/net/Uri;

    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p2}, Lcom/google/glass/timeline/d;->c(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p3, :cond_5

    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-static {p3, v4}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/am;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_5
    invoke-static {v3, p2}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {p2}, Lcom/google/glass/timeline/d;->g(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1, p5}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/glass/timeline/d;->b(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v1

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    invoke-static {v0}, Lcom/google/glass/timeline/d;->b(Lcom/google/glass/timeline/TimelineProvider;)V

    if-nez p4, :cond_1

    iget v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    if-eq v0, v8, :cond_1

    const-string v0, "com.google.glass.timeline"

    sget-object v1, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {p1, v0, v1}, Lcom/google/glass/sync/SyncHelper;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v2, "Item %s is already deleted."

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v2, "Deleting item: %s"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted:Ljava/lang/Boolean;

    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    iget v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    iput v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    invoke-static {v2}, Lcom/google/glass/util/bk;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime:Ljava/lang/Long;

    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    invoke-static {v2}, Lcom/google/glass/util/bk;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime:Ljava/lang/Long;

    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    invoke-static {v2}, Lcom/google/glass/util/bk;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    iput v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    iput v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus:I

    iput v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    new-instance v2, Lcom/google/glass/timeline/e;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/timeline/e;-><init>(Lcom/google/glass/timeline/d;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {v2}, Lcom/google/glass/timeline/d;->a(Lcom/google/glass/timeline/g;)V

    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/ab;

    invoke-static {v0}, Lcom/google/glass/util/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/ab;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-static {p2, v4}, Lcom/google/glass/timeline/a;->a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/ab;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/ab;->f:Ljava/lang/String;

    sget-object v6, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v7, "Deleting attached file: %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v5, v8, v1

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v4, Lcom/google/glass/timeline/d;->d:Lcom/google/glass/logging/i;

    const-string v6, "Failed to delete file: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1, v4}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/ab;)V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/glass/timeline/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/f;-><init>(Lcom/google/glass/timeline/d;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
