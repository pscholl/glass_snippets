.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;


# direct methods
.method public static a(B)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static a(BB)I
    .locals 2

    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static a()Ljava/util/Comparator;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method
