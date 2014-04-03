.class abstract Lcom/google/common/cache/CacheBuilderSpec$DurationParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DurationParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "spec"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 396
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    const-string v8, "value of key %s omitted"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-static {v7, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 398
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 400
    .local v3, lastChar:C
    const-wide/16 v4, 0x1

    .line 401
    .local v4, multiplier:J
    sparse-switch v3, :sswitch_data_0

    .line 412
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "key %s invalid format.  was %s, must end with one of [dDhHmMsS]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v3           #lastChar:C
    .end local v4           #multiplier:J
    :catch_0
    move-exception v2

    .line 419
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "key %s value set to %s, must be integer"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 396
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 403
    .restart local v3       #lastChar:C
    .restart local v4       #multiplier:J
    :sswitch_0
    const-wide/16 v7, 0x18

    mul-long/2addr v4, v7

    .line 405
    :sswitch_1
    const-wide/16 v7, 0x3c

    mul-long/2addr v4, v7

    .line 407
    :sswitch_2
    const-wide/16 v7, 0x3c

    mul-long/2addr v4, v7

    .line 409
    :sswitch_3
    :try_start_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 416
    .local v6, timeUnit:Ljava/util/concurrent/TimeUnit;
    const/4 v7, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 417
    .local v0, duration:J
    mul-long v7, v0, v4

    invoke-virtual {p0, p1, v7, v8, v6}, Lcom/google/common/cache/CacheBuilderSpec$DurationParser;->parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    return-void

    .line 401
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x68 -> :sswitch_1
        0x6d -> :sswitch_2
        0x73 -> :sswitch_3
    .end sparse-switch
.end method

.method protected abstract parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
.end method
