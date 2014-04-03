.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field static MAX_TABLE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/high16 v0, 0x4000

    sput v0, Lcom/google/common/collect/Hashing;->MAX_TABLE_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closedTableSize(ID)I
    .locals 5
    .parameter "expectedEntries"
    .parameter "loadFactor"

    .prologue
    .line 53
    const/4 v1, 0x2

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 56
    .local v0, tableSize:I
    int-to-double v1, p0

    int-to-double v3, v0

    div-double/2addr v1, v3

    cmpl-double v1, v1, p1

    if-lez v1, :cond_1

    .line 57
    shl-int/lit8 v0, v0, 0x1

    .line 58
    if-lez v0, :cond_0

    move v1, v0

    .line 60
    :goto_0
    return v1

    .line 58
    :cond_0
    sget v1, Lcom/google/common/collect/Hashing;->MAX_TABLE_SIZE:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 60
    goto :goto_0
.end method

.method static needsResizing(IID)Z
    .locals 4
    .parameter "size"
    .parameter "tableSize"
    .parameter "loadFactor"

    .prologue
    .line 64
    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr v2, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    sget v0, Lcom/google/common/collect/Hashing;->MAX_TABLE_SIZE:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static smear(I)I
    .locals 3
    .parameter "hashCode"

    .prologue
    .line 45
    const v0, 0x1b873593

    const v1, -0x3361d2af

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
