.class public final Lcom/google/common/hash/HashCodes;
.super Ljava/lang/Object;
.source "HashCodes.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/HashCodes$BytesHashCode;,
        Lcom/google/common/hash/HashCodes$LongHashCode;,
        Lcom/google/common/hash/HashCodes$IntHashCode;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBytes([B)Lcom/google/common/hash/HashCode;
    .locals 2
    .parameter "bytes"

    .prologue
    const/4 v0, 0x1

    .line 130
    array-length v1, p0

    if-lt v1, v0, :cond_0

    :goto_0
    const-string v1, "A HashCode must contain at least 1 byte."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/common/hash/HashCodes;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 139
    new-instance v0, Lcom/google/common/hash/HashCodes$BytesHashCode;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCodes$BytesHashCode;-><init>([B)V

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/common/hash/HashCode;
    .locals 1
    .parameter "hash"

    .prologue
    .line 42
    new-instance v0, Lcom/google/common/hash/HashCodes$IntHashCode;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCodes$IntHashCode;-><init>(I)V

    return-object v0
.end method

.method public static fromLong(J)Lcom/google/common/hash/HashCode;
    .locals 1
    .parameter "hash"

    .prologue
    .line 85
    new-instance v0, Lcom/google/common/hash/HashCodes$LongHashCode;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/HashCodes$LongHashCode;-><init>(J)V

    return-object v0
.end method
