.class public Lcom/google/glass/entity/EntityCache;
.super Ljava/lang/Object;
.source "EntityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityCache$EntityData;
    }
.end annotation


# static fields
.field public static final ACTION_ENTITY_CACHE_CHANGED:Ljava/lang/String; = "com.google.glass.action.ENTITY_CACHE_CHANGED"

.field private static final DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end field

.field public static final HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_PLUS_ENTITY:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SEND_MENU_TARGET:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SHARE_MENU_GROUP_TARGET:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SHARE_TARGET:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SPEAKABLE:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SPEAKABLE_COMMUNICATION_TARGETS:I = 0xa

.field public static final MAX_SPEAKABLE_MIRROR_SHARE_TARGETS_PER_SOURCE:I = 0x3

.field public static final MAX_SPEAKABLE_PLUS_SHARE_TARGETS:I = 0xf

.field public static final RECENT_ENTITIES_MAX_NUMBER:I = 0x4

.field public static final SHARE_COUNT_MAX_NUMBER:I = 0x4

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static packageNameForTest:Ljava/lang/String;

.field private static sharedInstance:Lcom/google/glass/entity/EntityCache;


# instance fields
.field private final clock:Lcom/google/glass/util/Clock;

.field private final context:Landroid/content/Context;

.field private final entityChangeObserver:Landroid/database/ContentObserver;

.field private final entityDataCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PUBLIC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DASHER_DOMAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "YOUR_CIRCLES"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityCache;->HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;

    .line 115
    new-instance v0, Lcom/google/glass/entity/EntityCache$1;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$1;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    .line 124
    new-instance v0, Lcom/google/glass/entity/EntityCache$2;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$2;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    .line 137
    new-instance v0, Lcom/google/glass/entity/EntityCache$3;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$3;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate;

    .line 148
    new-instance v0, Lcom/google/glass/entity/EntityCache$4;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$4;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;

    .line 159
    new-instance v0, Lcom/google/glass/entity/EntityCache$5;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$5;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;

    .line 170
    new-instance v0, Lcom/google/glass/entity/EntityCache$6;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$6;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    .line 182
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    .line 189
    new-instance v0, Lcom/google/glass/entity/EntityCache$7;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$7;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    .line 199
    new-instance v0, Lcom/google/glass/entity/EntityCache$8;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$8;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SEND_MENU_TARGET:Lcom/google/common/base/Predicate;

    .line 209
    new-instance v0, Lcom/google/glass/entity/EntityCache$9;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$9;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SHARE_MENU_GROUP_TARGET:Lcom/google/common/base/Predicate;

    .line 220
    new-instance v0, Lcom/google/glass/entity/EntityCache$10;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$10;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 267
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityCache;-><init>(Landroid/content/Context;Lcom/google/glass/util/Clock;)V

    .line 268
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/Clock;)V
    .locals 3
    .parameter "context"
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    if-nez p1, :cond_0

    .line 273
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/util/Clock;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    .line 279
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 280
    new-instance v0, Lcom/google/glass/entity/EntityCache$11;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/EntityCache$11;-><init>(Lcom/google/glass/entity/EntityCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityChangeObserver:Landroid/database/ContentObserver;

    .line 301
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/glass/entity/EntityCache;->DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/google/glass/entity/EntityCache;->matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    return v0
.end method

.method private extractRecentShareTargets(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, shareTargetsData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    const/4 v12, 0x4

    .line 652
    iget-object v8, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v8}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/google/glass/entity/EntityProvider;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    sub-long v2, v8, v10

    .line 656
    .local v2, recentBoostCutoffMillis:J
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 657
    .local v5, recentShares:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 658
    .local v7, shareTargetData:Lcom/google/glass/entity/EntityCache$EntityData;
    iget-wide v8, v7, Lcom/google/glass/entity/EntityCache$EntityData;->lastShareMillis:J

    cmp-long v8, v8, v2

    if-gtz v8, :cond_1

    iget-object v8, v7, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v8, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime:Ljava/lang/Long;

    invoke-static {v8}, Lcom/google/glass/util/PrimitiveUtils;->safeLong(Ljava/lang/Long;)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_0

    .line 661
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    .end local v7           #shareTargetData:Lcom/google/glass/entity/EntityCache$EntityData;
    :cond_2
    new-instance v8, Lcom/google/glass/entity/EntityCache$12;

    invoke-direct {v8, p0}, Lcom/google/glass/entity/EntityCache$12;-><init>(Lcom/google/glass/entity/EntityCache;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 699
    invoke-static {v12}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 700
    .local v6, retVal:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 701
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 702
    .local v4, recentEntityData:Lcom/google/glass/entity/EntityCache$EntityData;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    .end local v4           #recentEntityData:Lcom/google/glass/entity/EntityCache$EntityData;
    :cond_3
    return-object v6
.end method

.method static fromCursorToEntityData(Landroid/database/Cursor;)Lcom/google/glass/entity/EntityCache$EntityData;
    .locals 14
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 881
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 884
    .local v1, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 885
    .local v2, phoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "phone_number"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 886
    .local v11, primaryPhone:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 887
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    :cond_0
    const-string v0, "secondary_phone_numbers"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 891
    .local v13, secondaryPhoneListStr:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 892
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, arr$:[Ljava/lang/String;
    array-length v10, v8

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v12, v8, v9

    .line 894
    .local v12, secondaryPhone:Ljava/lang/String;
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 899
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #secondaryPhone:Ljava/lang/String;
    :cond_1
    const-string v0, "email"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 901
    .local v3, sanitizedEmail:Ljava/lang/String;
    const-string v0, "share_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 902
    .local v4, lastShareMillis:J
    const-string v0, "share_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 903
    .local v6, shareCount:I
    const-string v0, "share_priority"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 904
    .local v7, priority:I
    new-instance v0, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/entity/EntityCache$EntityData;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/List;Ljava/lang/String;JII)V

    return-object v0
.end method

.method private static getEntities(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, input:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v0, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    invoke-static {p0, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private varargs getFilteredCachedEntities([Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, predicates:[Lcom/google/common/base/Predicate;,"[Lcom/google/common/base/Predicate<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->and([Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private varargs getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, predicates:[Lcom/google/common/base/Predicate;,"[Lcom/google/common/base/Predicate<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntities([Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;
    .locals 1
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Lcom/google/glass/entity/EntityCache$13;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/entity/EntityCache$13;-><init>(Lcom/google/glass/entity/EntityCache;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-object v0
.end method

.method public static getSharedInstance()Lcom/google/glass/entity/EntityCache;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/google/glass/entity/EntityCache;->sharedInstance:Lcom/google/glass/entity/EntityCache;

    return-object v0
.end method

.method private getSortedShareTargets(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    invoke-static {p1}, Lcom/google/glass/entity/EntityCache;->getSourceRestrict(Ljava/lang/String;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 626
    .local v0, shareTargetsData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortByShareInfo(Ljava/util/List;)V

    .line 627
    return-object v0
.end method

.method private static getSourceRestrict(Ljava/lang/String;)Lcom/google/common/base/Predicate;
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1018
    if-nez p0, :cond_0

    .line 1019
    invoke-static {}, Lcom/google/common/base/Predicates;->alwaysTrue()Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 1023
    :goto_0
    return-object v0

    .line 1020
    :cond_0
    const-string v0, "api:442840586513"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;

    goto :goto_0

    .line 1022
    :cond_1
    const-string v0, "api:823483604716"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;

    goto :goto_0

    .line 1025
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 6
    .parameter "matcher"
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 803
    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "text/plain"

    invoke-virtual {p0, v5}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 820
    :cond_0
    :goto_0
    return v4

    .line 806
    :cond_1
    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "text/html"

    invoke-virtual {p0, v5}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 809
    :cond_2
    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "application/url"

    invoke-virtual {p0, v5}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 813
    :cond_3
    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 814
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 815
    .local v1, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iget-object v5, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 820
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static setPackageNameForTest(Ljava/lang/String;)V
    .locals 0
    .parameter "packageNameForTest"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 328
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 329
    sput-object p0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public static declared-synchronized setSharedInstance(Lcom/google/glass/entity/EntityCache;)V
    .locals 3
    .parameter "instance"

    .prologue
    .line 316
    const-class v1, Lcom/google/glass/entity/EntityCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/entity/EntityCache;->sharedInstance:Lcom/google/glass/entity/EntityCache;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Shared instance should only be set once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 319
    :cond_0
    :try_start_1
    sput-object p0, Lcom/google/glass/entity/EntityCache;->sharedInstance:Lcom/google/glass/entity/EntityCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    monitor-exit v1

    return-void
.end method

.method private static subList(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1034
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static trimShareTargets(Ljava/util/List;II)Ljava/util/List;
    .locals 10
    .parameter
    .parameter "totalMax"
    .parameter "maxPerSource"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const v9, 0x7fffffff

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 514
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    if-lez p1, :cond_0

    move v6, v7

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 516
    if-lez p2, :cond_1

    :goto_1
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 518
    if-ne p1, v9, :cond_2

    if-ne p2, v9, :cond_2

    .line 548
    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :goto_2
    return-object p0

    .restart local p0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_0
    move v6, v8

    .line 515
    goto :goto_0

    :cond_1
    move v7, v8

    .line 516
    goto :goto_1

    .line 522
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 523
    .local v0, countsBySource:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 524
    .local v5, trimmed:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 525
    .local v1, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, p1, :cond_5

    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    move-object p0, v5

    .line 548
    goto :goto_2

    .line 529
    .restart local v1       #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_5
    iget-object v6, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, source:Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 531
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_6
    invoke-static {v1}, Lcom/google/glass/entity/EntityHelper;->isPlusIndividualEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 537
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 538
    .local v3, newCountForSource:I
    if-gt v3, p2, :cond_3

    .line 542
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .end local v3           #newCountForSource:I
    :cond_7
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method public getAllEntities(I)Ljava/util/List;
    .locals 4
    .parameter "max"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v3, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 306
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    iget-object v3, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 307
    .local v0, data:Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v3, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 312
    .end local v0           #data:Lcom/google/glass/entity/EntityCache$EntityData;
    :cond_1
    return-object v2
.end method

.method public declared-synchronized getAllShareTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getSortedShareTargets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEntityByGuid(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 13
    .parameter "entityGuid"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 988
    const/4 v5, 0x0

    .line 989
    .local v5, source:Ljava/lang/String;
    const/4 v1, 0x0

    .line 990
    .local v1, entityId:Ljava/lang/String;
    const-string v7, "entity_guid:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 991
    const-string v7, "entity_guid:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 992
    .local v6, sourceIdx:I
    const-string v7, "/"

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 994
    .local v4, separatorIdx:I
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 995
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 998
    .end local v4           #separatorIdx:I
    .end local v6           #sourceIdx:I
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 999
    :cond_1
    sget-object v7, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Unrecognized entity GUID format [entityGuid=%s]."

    new-array v10, v12, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-interface {v7, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    .line 1012
    :cond_2
    :goto_0
    return-object v0

    .line 1003
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v7, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 1004
    iget-object v7, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/entity/EntityCache$EntityData;

    iget-object v0, v7, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1005
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v7, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1003
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1010
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_5
    sget-object v7, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "No entity found for GUID [entityGuid=%s, source=%s, entityId=%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    aput-object v5, v10, v12

    const/4 v11, 0x2

    aput-object v1, v10, v11

    invoke-interface {v7, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    .line 1012
    goto :goto_0
.end method

.method public declared-synchronized getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2
    .parameter "email"

    .prologue
    .line 827
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/entity/EntityCache;->getFirstEntityForEmail(Ljava/lang/String;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFirstEntityForEmail(Ljava/lang/String;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 6
    .parameter "email"
    .parameter "shareTargetsOnly"
    .parameter "plusShareTargetsOnly"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 843
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 844
    const/4 v0, 0x0

    .line 876
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 847
    :cond_1
    const/4 v0, 0x0

    .line 848
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const/4 v5, 0x1

    :try_start_1
    invoke-static {p1, v5}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, formattedEmail:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v5, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, n:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 850
    iget-object v5, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 851
    .local v1, entityData:Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v5, v1, Lcom/google/glass/entity/EntityCache$EntityData;->sanitizedEmail:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 853
    if-eqz p3, :cond_2

    .line 854
    iget-object v5, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 855
    iget-object v0, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_0

    .line 862
    :cond_2
    if-eqz p2, :cond_4

    iget-object v5, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 849
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 868
    :cond_4
    iget-object v5, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 869
    iget-object v0, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_0

    .line 870
    :cond_5
    iget-object v5, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v0, :cond_3

    .line 871
    :cond_6
    iget-object v0, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 843
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v1           #entityData:Lcom/google/glass/entity/EntityCache$EntityData;
    .end local v2           #formattedEmail:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #n:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 9
    .parameter "phoneNumber"

    .prologue
    const/4 v7, 0x0

    .line 966
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 980
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    .line 970
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 971
    .local v1, formattedPhoneNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v8, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .local v5, n:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 972
    iget-object v8, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 973
    .local v0, entityData:Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v2, v0, Lcom/google/glass/entity/EntityCache$EntityData;->formattedPhoneNumbers:Ljava/util/List;

    .line 974
    .local v2, formattedPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, ii:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .local v6, nn:I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 975
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 976
    iget-object v7, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 974
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 971
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 966
    .end local v0           #entityData:Lcom/google/glass/entity/EntityCache$EntityData;
    .end local v1           #formattedPhoneNumber:Ljava/lang/String;
    .end local v2           #formattedPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v4           #ii:I
    .end local v5           #n:I
    .end local v6           #nn:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ListMultimap;
    .locals 12
    .parameter "maxTotal"
    .parameter "maxPerSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v7

    .line 481
    .local v7, mm:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getAllShareTargets()Ljava/util/List;

    move-result-object v1

    .line 482
    .local v1, allShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    if-eqz v1, :cond_1

    .line 483
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 484
    .local v8, shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v11, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-static {v11}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 485
    iget-object v2, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .local v2, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v2, v5

    .line 486
    .local v0, acceptedCommand:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    iget v11, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11, v8}, Lcom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 492
    .end local v0           #acceptedCommand:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v2           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    invoke-interface {v7}, Lcom/google/common/collect/ListMultimap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 497
    .local v3, availableCommand:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v10

    .line 498
    .local v10, untrimmed:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {v10, p1, p2}, Lcom/google/glass/entity/EntityCache;->trimShareTargets(Ljava/util/List;II)Ljava/util/List;

    move-result-object v9

    .line 500
    .local v9, trimmed:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11, v9}, Lcom/google/common/collect/ListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    goto :goto_1

    .line 503
    .end local v3           #availableCommand:I
    .end local v9           #trimmed:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .end local v10           #untrimmed:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_2
    return-object v7
.end method

.method public declared-synchronized getMatchingSendTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;
    .locals 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    monitor-enter p0

    if-nez p1, :cond_0

    .line 784
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SEND_MENU_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 789
    .local v0, matchingShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortByShareInfo(Ljava/util/List;)V

    .line 790
    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 786
    .end local v0           #matchingShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :cond_0
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SEND_MENU_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0       #matchingShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    goto :goto_0

    .line 783
    .end local v0           #matchingShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMatchingShareMenuGroupTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;
    .locals 2
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityCache;->IS_SHARE_MENU_GROUP_TARGET:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;
    .locals 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 725
    .local v0, matchingShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortByShareInfo(Ljava/util/List;)V

    .line 726
    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 723
    .end local v0           #matchingShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMirrorCommandEntities()Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    const v0, 0x7fffffff

    .line 467
    invoke-virtual {p0, v0, v0}, Lcom/google/glass/entity/EntityCache;->getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPictureUrlViaEmail(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    .line 932
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    const/4 v1, 0x0

    .line 947
    :goto_0
    monitor-exit p0

    return-object v1

    .line 937
    :cond_0
    const/4 v0, 0x0

    .line 939
    .local v0, entityByEmail:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_start_1
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 940
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 943
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 944
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 947
    :cond_2
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 932
    .end local v0           #entityByEmail:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPictureUrlViaPhoneNumber(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    .line 916
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    const/4 v1, 0x0

    .line 922
    :goto_0
    monitor-exit p0

    return-object v1

    .line 921
    :cond_0
    :try_start_1
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 922
    .local v0, entityByPhoneNumber:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 916
    .end local v0           #entityByPhoneNumber:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPlusEntityForUser(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 4
    .parameter "context"

    .prologue
    .line 954
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v1, p1}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 955
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 956
    :cond_0
    const/4 v1, 0x0

    .line 958
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/glass/entity/EntityCache;->getFirstEntityForEmail(Ljava/lang/String;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 954
    .end local v0           #account:Landroid/accounts/Account;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPlusShareTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->getPlusShareTargets(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlusShareTargets(I)Ljava/util/List;
    .locals 4
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 570
    .local v0, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortByShareInfo(Ljava/util/List;)V

    .line 571
    if-lez p1, :cond_0

    .line 572
    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityCache;->subList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 574
    :cond_0
    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getSendTargets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->getMatchingSendTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpeakableCommunicationTargets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 403
    .local v0, communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortByShareInfo(Ljava/util/List;)V

    .line 404
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityCache;->subList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 401
    .end local v0           #communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSpeakableMirrorCommandEntities()Lcom/google/common/collect/ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    const/16 v0, 0xf

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/entity/EntityCache;->getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSpeakablePlusShareTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->getPlusShareTargets(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpeakableShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/Map;
    .locals 7
    .parameter "timelineItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v4

    const/16 v5, 0xf

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lcom/google/glass/entity/EntityCache;->trimShareTargets(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 453
    .local v0, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 454
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 455
    .local v1, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v4, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 449
    .end local v0           #entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 458
    .restart local v0       #entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_0
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getSpeakableShareTargets(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 437
    .local v1, fakeItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 438
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iput-object p1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType:Ljava/lang/String;

    .line 439
    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineHelper;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 441
    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityCache;->getSpeakableShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 436
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #fakeItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized loadEntityDataCache()V
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->loadEntityDataCache(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized loadEntityDataCache(Z)V
    .locals 12
    .parameter "skipWhenTest"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 338
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not loading entity cache for test"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 342
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 344
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 346
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "loadEntityDataCache started"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 349
    .local v8, startTime:J
    const/4 v7, 0x0

    .line 351
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_2
    const-string v5, "share_time DESC,_id ASC"

    .line 352
    .local v5, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 353
    if-nez v7, :cond_2

    .line 355
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null cursor returned for share target query"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    if-eqz v7, :cond_0

    .line 364
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 338
    .end local v5           #orderBy:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #startTime:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 359
    .restart local v5       #orderBy:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #startTime:J
    :cond_2
    :goto_1
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-static {v7}, Lcom/google/glass/entity/EntityCache;->fromCursorToEntityData(Landroid/database/Cursor;)Lcom/google/glass/entity/EntityCache$EntityData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 363
    .end local v5           #orderBy:Ljava/lang/String;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_3

    .line 364
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 363
    .restart local v5       #orderBy:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    .line 364
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_5
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "loadEntityDataCache finished: %sms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v6, broadcast:Landroid/content/Intent;
    sget-object v0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 378
    :cond_6
    sget-object v0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public registerSyncChanged()V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/entity/EntityCache;->entityChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 393
    return-void
.end method

.method public declared-synchronized setEntityDataCacheForTest(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, testData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    .line 385
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 386
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sortByShareInfo(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->extractRecentShareTargets(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 640
    .local v0, recentEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v1, Lcom/google/glass/entity/EntityCache;->DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 641
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 642
    return-void
.end method
