.class public Lcom/google/glass/entity/EntityHelper;
.super Ljava/lang/Object;
.source "EntityHelper.java"


# static fields
.field private static final CONTACT_GAIA_DELIMITER:Ljava/lang/String; = "_"

.field private static final CONTACT_GAIA_SPLITTER:Lcom/google/common/base/Splitter; = null

.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern; = null

.field static final ENTITY_GUID_PREFIX:Ljava/lang/String; = "entity_guid:"

.field static final ENTITY_GUID_SEPARATOR:Ljava/lang/String; = "/"

.field public static final FOCUS_GLASSWARE_SOURCE:Ljava/lang/String; = "api:823483604716"

.field private static final GMAIL_DOMAINS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String; = "api:736585499008"

.field private static final ID_WHERE:Ljava/lang/String; = "(_id=? AND source=?)"

.field public static final PHONE_NUMBER_SEPARATOR:Ljava/lang/String; = ","

.field public static final PLUS_GLASSWARE_SOURCE:Ljava/lang/String; = "api:442840586513"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final sanitizedEmailCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sanitizedStrippedEmailCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sharedInstance:Lcom/google/glass/entity/EntityHelper;


# instance fields
.field private entityDbObserver:Landroid/database/ContentObserver;

.field private selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 67
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 85
    const-string v0, "^([^+]+)(\\+[^@]+)?(@[^.]+)(\\..+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    .line 93
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@gmail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@googlemail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@google.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v0, "_"

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->CONTACT_GAIA_SPLITTER:Lcom/google/common/base/Splitter;

    .line 114
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    .line 121
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedEmailCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 4
    .parameter "original"

    .prologue
    .line 786
    if-eqz p0, :cond_0

    .line 788
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 796
    :goto_0
    return-object v1

    .line 789
    :catch_0
    move-exception v0

    .line 792
    .local v0, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v1, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Couldn\'t clone entity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t clone entity"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 796
    .end local v0           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static convertToDBType(I)I
    .locals 3
    .parameter "type"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 322
    packed-switch p0, :pswitch_data_0

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :pswitch_0
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createIdToEntityMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    .line 147
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 148
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    return-object v2
.end method

.method public static doEntitiesMatch(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 6
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 472
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v3

    .line 477
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v3, v4

    .line 478
    goto :goto_0

    .line 481
    :cond_3
    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, secondId:Ljava/lang/String;
    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, secondEmail:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, compare:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 486
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 490
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 492
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    .line 497
    goto :goto_0
.end method

.method private static varargs executeQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 7
    .parameter "resolver"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 766
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 767
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 768
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 770
    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "protobuf_blob"

    aput-object v0, v2, v3

    .line 772
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 775
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    invoke-static {v6}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 779
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 781
    :goto_1
    return-object v5

    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    move v0, v3

    .line 768
    goto :goto_0

    .line 779
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 554
    const-string v0, "protobuf_blob"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method public static fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 5
    .parameter "data"

    .prologue
    .line 565
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 571
    :goto_0
    return-object v1

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error deserializing protobuf"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getContactGaiaParts(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "entityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->CONTACT_GAIA_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 5
    .parameter "entity"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 584
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Showing entity %s as displayName"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    .line 597
    :goto_0
    return-object v0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Showing entity without displayName as email %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    goto :goto_0

    .line 596
    :cond_1
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Entity has nothing to display."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEntityGuid(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entity_guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 546
    new-instance v1, Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v1, p0}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 547
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    :cond_0
    const/4 v1, 0x0

    .line 550
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    const/4 v0, 0x0

    .line 381
    if-nez p0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getFirstName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 4
    .parameter "entity"

    .prologue
    const/4 v2, 0x0

    .line 622
    if-nez p0, :cond_1

    move-object v0, v2

    .line 635
    :cond_0
    :goto_0
    return-object v0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName:Ljava/lang/String;

    .line 627
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 628
    goto :goto_0

    .line 631
    :cond_2
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 632
    .local v1, spaceIndex:I
    if-lez v1, :cond_0

    .line 635
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 7
    .parameter "intent"
    .parameter "key"

    .prologue
    .line 801
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 804
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 805
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 812
    .end local v0           #bytes:[B
    :goto_0
    return-object v2

    .line 807
    :catch_0
    move-exception v1

    .line 808
    .local v1, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to parse entity from intent %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    .end local v1           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;
    .locals 6
    .parameter "entity"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 504
    if-nez p0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-object v2

    .line 508
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, id:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 510
    const/4 v1, 0x0

    .line 512
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 514
    const/4 v0, 0x0

    .line 516
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 517
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    aput-object v0, v2, v4

    goto :goto_0

    .line 518
    :cond_4
    if-eqz v1, :cond_5

    .line 519
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v5

    goto :goto_0

    .line 520
    :cond_5
    if-eqz v0, :cond_0

    .line 521
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    goto :goto_0
.end method

.method public static getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 5
    .parameter "entity"

    .prologue
    .line 366
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    if-nez v4, :cond_1

    .line 367
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 368
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 369
    .local v3, persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    iget-object v4, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 376
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :goto_1
    return-object v3

    .line 368
    .restart local v0       #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getObfuscatedGaiaIdFromContactEntity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "entityId"

    .prologue
    .line 646
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getContactGaiaParts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 647
    .local v0, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProjectId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    .line 528
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    .line 531
    .local v0, source:Ljava/lang/String;
    const-string v1, "api:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    const-string v1, ""

    .line 535
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "api:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/google/glass/entity/EntityHelper;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    return-object v0
.end method

.method public static getSpeakableName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 1
    .parameter "entity"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName:Ljava/lang/String;

    .line 611
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 344
    const-string v0, "api:823483604716"

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHangoutEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 348
    const-string v0, "api:736585499008"

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 333
    const-string v0, "api:442840586513"

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPlusIndividualEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    const/4 v0, 0x1

    .line 340
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSendTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Z
    .locals 7
    .parameter "entity"
    .parameter "allowSms"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    invoke-static {v5}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_2

    move v2, v3

    .line 168
    .local v2, smsEnabled:Z
    :goto_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    .line 169
    .local v0, emailEnabled:Z
    :goto_1
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v5

    if-eqz v5, :cond_4

    move v1, v3

    .line 170
    .local v1, personaEnabled:Z
    :goto_2
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v4, v3

    .line 174
    .end local v0           #emailEnabled:Z
    .end local v1           #personaEnabled:Z
    .end local v2           #smsEnabled:Z
    :cond_1
    :goto_3
    return v4

    :cond_2
    move v2, v4

    .line 166
    goto :goto_0

    .restart local v2       #smsEnabled:Z
    :cond_3
    move v0, v4

    .line 168
    goto :goto_1

    .restart local v0       #emailEnabled:Z
    :cond_4
    move v1, v4

    .line 169
    goto :goto_2

    .line 172
    .end local v0           #emailEnabled:Z
    .end local v2           #smsEnabled:Z
    :cond_5
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->isHangoutEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    if-nez v5, :cond_6

    :goto_4
    move v4, v3

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_4
.end method

.method static isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static queryByEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 4
    .parameter "resolver"
    .parameter "email"

    .prologue
    const/4 v3, 0x1

    .line 731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    const/4 v0, 0x0

    .line 735
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "email=?"

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/glass/entity/EntityHelper;->executeQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    goto :goto_0
.end method

.method public static queryByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 3
    .parameter "resolver"
    .parameter "phone"

    .prologue
    .line 743
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, 0x0

    .line 748
    :goto_0
    return-object v0

    .line 747
    :cond_0
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 748
    const-string v0, "phone_number=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/glass/entity/EntityHelper;->executeQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    goto :goto_0
.end method

.method public static queryBySecondaryPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2
    .parameter "resolver"
    .parameter "phone"

    .prologue
    .line 755
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    const/4 v0, 0x0

    .line 760
    :goto_0
    return-object v0

    .line 759
    :cond_0
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "secondary_phone_numbers LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/glass/entity/EntityHelper;->executeQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    goto :goto_0
.end method

.method public static sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .parameter "email"
    .parameter "stripGmailPlus"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    .line 411
    if-nez p0, :cond_1

    .line 412
    const/4 v1, 0x0

    .line 458
    :cond_0
    :goto_0
    return-object v1

    .line 417
    :cond_1
    if-eqz p1, :cond_2

    .line 418
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    .line 424
    .local v0, cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 425
    .local v1, cached:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 429
    sget-object v7, Lcom/google/glass/entity/EntityHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 432
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_3

    .line 435
    invoke-virtual {v0, p0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    .line 436
    goto :goto_0

    .line 420
    .end local v0           #cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #cached:Ljava/lang/String;
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    :cond_2
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedEmailCache:Landroid/util/LruCache;

    .restart local v0       #cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 439
    .restart local v1       #cached:Ljava/lang/String;
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v3, emailBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, domain:Ljava/lang/String;
    if-eqz p1, :cond_5

    sget-object v7, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 446
    .local v5, removePlus:Z
    :goto_2
    if-nez v5, :cond_4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 447
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_4
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v0, p0, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    .line 458
    goto/16 :goto_0

    .line 444
    .end local v5           #removePlus:Z
    .end local v6           #result:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static santizeEmails(Ljava/util/Collection;Z)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "stripGmailPlus"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, emails:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 395
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    .local v0, email:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    .end local v0           #email:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 134
    sput-object p0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    .line 135
    return-void
.end method

.method public static startSendMessageToPersonActivity(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 12
    .parameter "context"
    .parameter "remoteCompanionProxy"
    .parameter "entity"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 665
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v5

    .line 666
    .local v5, soundManager:Lcom/google/glass/sound/SoundManager;
    iget-object v9, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move v2, v7

    .line 667
    .local v2, hasEmail:Z
    :goto_0
    iget-object v9, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    move v3, v7

    .line 668
    .local v3, hasPhoneNumber:Z
    :goto_1
    invoke-virtual {p1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v0

    .line 672
    .local v0, companionConnected:Z
    sget-object v9, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v9}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 674
    iget v9, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    if-nez v9, :cond_2

    .line 675
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getEntityGuid(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v6

    .line 676
    .local v6, toId:Ljava/lang/String;
    const/4 v4, 0x3

    .line 677
    .local v4, messageType:I
    sget-object v9, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Initiating glassware message to entity [entityGuid=%s]."

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v6, v11, v8

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    :goto_2
    sget-object v8, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v5, v8}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 721
    const/16 v8, 0xc

    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v4, v6, v9}, Lcom/google/glass/voice/VoiceMessageHelper;->createSendMessageIntent(IILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    move v8, v7

    .line 724
    .end local v4           #messageType:I
    .end local v6           #toId:Ljava/lang/String;
    :goto_3
    return v8

    .end local v0           #companionConnected:Z
    .end local v2           #hasEmail:Z
    .end local v3           #hasPhoneNumber:Z
    :cond_0
    move v2, v8

    .line 666
    goto :goto_0

    .restart local v2       #hasEmail:Z
    :cond_1
    move v3, v8

    .line 667
    goto :goto_1

    .line 678
    .restart local v0       #companionConnected:Z
    .restart local v3       #hasPhoneNumber:Z
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    const/4 v9, 0x2

    iget v10, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption:I

    if-ne v9, v10, :cond_3

    .line 680
    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    .line 681
    .restart local v6       #toId:Ljava/lang/String;
    const/4 v4, 0x2

    .line 682
    .restart local v4       #messageType:I
    sget-object v9, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Initiating SMS message to entity [toId=%s]."

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v6, v11, v8

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 683
    .end local v4           #messageType:I
    .end local v6           #toId:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 684
    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    .line 685
    .restart local v6       #toId:Ljava/lang/String;
    const/4 v4, 0x1

    .line 686
    .restart local v4       #messageType:I
    sget-object v9, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Initiating email message to entity [toId=%s]."

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v6, v11, v8

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 688
    .end local v4           #messageType:I
    .end local v6           #toId:Ljava/lang/String;
    :cond_4
    new-instance v9, Lcom/google/glass/app/GlassError;

    invoke-direct {v9}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v10, Lcom/google/glass/common/R$string;->error_edit_contacts:I

    invoke-virtual {v9, v10}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    .line 691
    .local v1, error:Lcom/google/glass/app/GlassError;
    sget v9, Lcom/google/glass/common/R$string;->error_no_email:I

    invoke-virtual {v1, v9}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 692
    sget-object v9, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Unable to fallback to email for entity [entityId=%s]."

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v11, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    aput-object v11, v7, v8

    invoke-interface {v9, v10, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 698
    .end local v1           #error:Lcom/google/glass/app/GlassError;
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 699
    sget-object v9, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Initiating message via SMS"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v9, v10, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    .line 701
    .restart local v6       #toId:Ljava/lang/String;
    const/4 v4, 0x2

    .restart local v4       #messageType:I
    goto :goto_2

    .line 702
    .end local v4           #messageType:I
    .end local v6           #toId:Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_7

    .line 703
    sget-object v9, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Initiating message via email"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v9, v10, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    .line 705
    .restart local v6       #toId:Ljava/lang/String;
    const/4 v4, 0x1

    .restart local v4       #messageType:I
    goto/16 :goto_2

    .line 707
    .end local v4           #messageType:I
    .end local v6           #toId:Ljava/lang/String;
    :cond_7
    new-instance v9, Lcom/google/glass/app/GlassError;

    invoke-direct {v9}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v10, Lcom/google/glass/common/R$string;->error_edit_contacts:I

    invoke-virtual {v9, v10}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    .line 710
    .restart local v1       #error:Lcom/google/glass/app/GlassError;
    if-eqz v0, :cond_8

    .line 711
    sget v7, Lcom/google/glass/common/R$string;->error_no_phone_or_email:I

    invoke-virtual {v1, v7}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 715
    :goto_4
    invoke-virtual {v1, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    goto/16 :goto_3

    .line 713
    :cond_8
    sget v7, Lcom/google/glass/common/R$string;->error_no_email:I

    invoke-virtual {v1, v7}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    goto :goto_4
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentValues;
    .locals 12
    .parameter "entity"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 259
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_id"

    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {v7, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v8, "source"

    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-virtual {v7, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v11, "is_communication_target"

    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget:Ljava/lang/Boolean;

    invoke-static {v8}, Lcom/google/glass/util/PrimitiveUtils;->safeBoolean(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v9

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v8, "phone_number"

    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v8, "email"

    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v11, v10}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    .line 268
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 269
    const-string v8, "display_name"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    const-string v8, "image_url"

    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v8, "protobuf_blob"

    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 273
    iget v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    const/high16 v11, -0x8000

    if-eq v8, v11, :cond_1

    .line 274
    const-string v8, "type"

    iget v11, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type:I

    invoke-static {v11}, Lcom/google/glass/entity/EntityHelper;->convertToDBType(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    :cond_1
    const/4 v5, 0x0

    .line 277
    .local v5, obfuscatedGaiaId:Ljava/lang/String;
    const-string v8, "api:442840586513"

    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 278
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    .line 282
    :goto_1
    if-eqz v5, :cond_2

    .line 283
    const-string v8, "obfuscated_gaia_id"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_2
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-static {v8, v10}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v8

    if-eqz v8, :cond_8

    move v3, v9

    .line 288
    .local v3, isInMyContacts:Z
    :goto_2
    const-string v11, "is_in_my_contacts"

    if-eqz v3, :cond_9

    move v8, v9

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-eqz v8, :cond_3

    .line 295
    const-string v8, "share_priority"

    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    iget-object v11, v11, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    invoke-static {v11}, Lcom/google/glass/util/PrimitiveUtils;->safeInt(Ljava/lang/Integer;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    :cond_3
    const-string v8, "is_share_target"

    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v11

    if-eqz v11, :cond_a

    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v8}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v4

    .line 302
    .local v4, numSecondaryPhoneNumbers:I
    if-lez v4, :cond_c

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v0, allSecondaryNumbers:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v4, :cond_b

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 306
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_4
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v8}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, phone:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 311
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v0           #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #isInMyContacts:Z
    .end local v4           #numSecondaryPhoneNumbers:I
    .end local v5           #obfuscatedGaiaId:Ljava/lang/String;
    .end local v6           #phone:Ljava/lang/String;
    :cond_6
    move v8, v10

    .line 262
    goto/16 :goto_0

    .line 280
    .restart local v1       #displayName:Ljava/lang/String;
    .restart local v5       #obfuscatedGaiaId:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/glass/entity/EntityHelper;->getObfuscatedGaiaIdFromContactEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_8
    move v3, v10

    .line 286
    goto :goto_2

    .restart local v3       #isInMyContacts:Z
    :cond_9
    move v8, v10

    .line 288
    goto :goto_3

    :cond_a
    move v9, v10

    .line 298
    goto :goto_4

    .line 314
    .restart local v0       #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .restart local v2       #i:I
    .restart local v4       #numSecondaryPhoneNumbers:I
    :cond_b
    const-string v8, "secondary_phone_numbers"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v0           #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    :cond_c
    return-object v7
.end method


# virtual methods
.method public getSelfEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public loadSelfEntity(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 182
    sget-object v1, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "loading self entity"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, email:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "protobuf_blob"

    aput-object v3, v2, v10

    const-string v3, "email=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 194
    .local v9, foundEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v6, :cond_2

    .line 196
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-static {v6}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v8

    .line 198
    .local v8, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v8}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 199
    move-object v9, v8

    .line 200
    invoke-static {v8}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v8           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_2
    iput-object v9, p0, Lcom/google/glass/entity/EntityHelper;->selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 218
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #foundEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    iget-object v1, p0, Lcom/google/glass/entity/EntityHelper;->selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v1, :cond_8

    .line 219
    sget-object v1, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not load self entity"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v1, p0, Lcom/google/glass/entity/EntityHelper;->entityDbObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_4

    .line 221
    sget-object v1, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Registering observer for entity updates"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    new-instance v1, Lcom/google/glass/entity/EntityHelper$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2, p1}, Lcom/google/glass/entity/EntityHelper$1;-><init>(Lcom/google/glass/entity/EntityHelper;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/entity/EntityHelper;->entityDbObserver:Landroid/database/ContentObserver;

    .line 234
    :cond_4
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/glass/entity/EntityHelper;->entityDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    :cond_5
    :goto_1
    return-void

    .line 203
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .restart local v9       #foundEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_6
    :try_start_1
    invoke-static {v8}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 204
    move-object v9, v8

    .line 206
    :cond_7
    invoke-static {v8}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    move-object v9, v8

    goto :goto_0

    .line 211
    .end local v8           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 237
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #foundEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_8
    sget-object v1, Lcom/google/glass/entity/EntityHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Self entity loaded"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/google/glass/entity/EntityHelper;->entityDbObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_5

    .line 239
    iget-object v1, p0, Lcom/google/glass/entity/EntityHelper;->entityDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 240
    iput-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDbObserver:Landroid/database/ContentObserver;

    goto :goto_1
.end method

.method public setSelfEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0
    .parameter "selfEntity"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 252
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper;->selfEntity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 253
    return-void
.end method
