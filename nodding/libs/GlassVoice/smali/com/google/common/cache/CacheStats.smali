.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 2
    .parameter "hitCount"
    .parameter "missCount"
    .parameter "loadSuccessCount"
    .parameter "loadExceptionCount"
    .parameter "totalLoadTime"
    .parameter "evictionCount"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, p11, v0

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 86
    iput-wide p1, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 87
    iput-wide p3, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 88
    iput-wide p5, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 89
    iput-wide p7, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 90
    iput-wide p9, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 91
    iput-wide p11, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 92
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 82
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 83
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 84
    :cond_5
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public averageLoadPenalty()D
    .locals 6

    .prologue
    .line 198
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long v0, v2, v4

    .line 199
    .local v0, totalLoadCount:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 242
    instance-of v2, p1, Lcom/google/common/cache/CacheStats;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Lcom/google/common/cache/CacheStats;

    .line 244
    .local v0, other:Lcom/google/common/cache/CacheStats;
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 249
    .end local v0           #other:Lcom/google/common/cache/CacheStats;
    :cond_0
    return v1
.end method

.method public evictionCount()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 236
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hitCount()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    return-wide v0
.end method

.method public hitRate()D
    .locals 6

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    .line 116
    .local v0, requestCount:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public loadCount()J
    .locals 4

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public loadExceptionCount()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    return-wide v0
.end method

.method public loadExceptionRate()D
    .locals 6

    .prologue
    .line 180
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long v0, v2, v4

    .line 181
    .local v0, totalLoadCount:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public loadSuccessCount()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    return-wide v0
.end method

.method public minus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .locals 19
    .parameter "other"

    .prologue
    .line 216
    new-instance v2, Lcom/google/common/cache/CacheStats;

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    sub-long/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    sub-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    sub-long/2addr v13, v15

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-direct/range {v2 .. v14}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v2
.end method

.method public missCount()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    return-wide v0
.end method

.method public missRate()D
    .locals 6

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    .line 140
    .local v0, requestCount:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public plus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .locals 16
    .parameter "other"

    .prologue
    .line 229
    new-instance v1, Lcom/google/common/cache/CacheStats;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    add-long/2addr v12, v14

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v1
.end method

.method public requestCount()J
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 254
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalLoadTime()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    return-wide v0
.end method
