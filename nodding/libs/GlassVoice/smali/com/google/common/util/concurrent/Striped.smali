.class public abstract Lcom/google/common/util/concurrent/Striped;
.super Ljava/lang/Object;
.source "Striped.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Striped$PaddedSemaphore;,
        Lcom/google/common/util/concurrent/Striped$PaddedLock;,
        Lcom/google/common/util/concurrent/Striped$LazyStriped;,
        Lcom/google/common/util/concurrent/Striped$CompactStriped;,
        Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ALL_SET:I = -0x1

.field private static final READ_WRITE_LOCK_SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/google/common/util/concurrent/Striped$5;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$5;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Striped;->READ_WRITE_LOCK_SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    .local p0, this:Lcom/google/common/util/concurrent/Striped;,"Lcom/google/common/util/concurrent/Striped<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/Striped$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    .local p0, this:Lcom/google/common/util/concurrent/Striped;,"Lcom/google/common/util/concurrent/Striped<TL;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Striped;-><init>()V

    return-void
.end method

.method static synthetic access$200(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/common/util/concurrent/Striped;->ceilToPowerOfTwo(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/common/util/concurrent/Striped;->smear(I)I

    move-result v0

    return v0
.end method

.method private static ceilToPowerOfTwo(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 343
    const/4 v0, 0x1

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method

.method public static lazyWeakLock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .parameter "stripes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/google/common/util/concurrent/Striped$LazyStriped;

    new-instance v1, Lcom/google/common/util/concurrent/Striped$2;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/Striped$2;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/Striped$LazyStriped;-><init>(ILcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static lazyWeakReadWriteLock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .parameter "stripes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/google/common/util/concurrent/Striped$LazyStriped;

    sget-object v1, Lcom/google/common/util/concurrent/Striped;->READ_WRITE_LOCK_SUPPLIER:Lcom/google/common/base/Supplier;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/Striped$LazyStriped;-><init>(ILcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static lazyWeakSemaphore(II)Lcom/google/common/util/concurrent/Striped;
    .locals 2
    .parameter "stripes"
    .parameter "permits"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/google/common/util/concurrent/Striped$LazyStriped;

    new-instance v1, Lcom/google/common/util/concurrent/Striped$4;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/Striped$4;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/Striped$LazyStriped;-><init>(ILcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static lock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 3
    .parameter "stripes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/google/common/util/concurrent/Striped$CompactStriped;

    new-instance v1, Lcom/google/common/util/concurrent/Striped$1;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/Striped$1;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/util/concurrent/Striped$CompactStriped;-><init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/Striped$1;)V

    return-object v0
.end method

.method public static readWriteLock(I)Lcom/google/common/util/concurrent/Striped;
    .locals 3
    .parameter "stripes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/google/common/util/concurrent/Striped$CompactStriped;

    sget-object v1, Lcom/google/common/util/concurrent/Striped;->READ_WRITE_LOCK_SUPPLIER:Lcom/google/common/base/Supplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/util/concurrent/Striped$CompactStriped;-><init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/Striped$1;)V

    return-object v0
.end method

.method public static semaphore(II)Lcom/google/common/util/concurrent/Striped;
    .locals 3
    .parameter "stripes"
    .parameter "permits"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/Striped",
            "<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/google/common/util/concurrent/Striped$CompactStriped;

    new-instance v1, Lcom/google/common/util/concurrent/Striped$3;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/Striped$3;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/util/concurrent/Striped$CompactStriped;-><init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/Striped$1;)V

    return-object v0
.end method

.method private static smear(I)I
    .locals 2
    .parameter "hashCode"

    .prologue
    .line 356
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 357
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public bulkGet(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/Iterable",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Lcom/google/common/util/concurrent/Striped;,"Lcom/google/common/util/concurrent/Striped<TL;>;"
    .local p1, keys:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    const-class v4, Ljava/lang/Object;

    invoke-static {p1, v4}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, array:[Ljava/lang/Object;
    array-length v4, v0

    new-array v3, v4, [I

    .line 135
    .local v3, stripes:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 136
    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/Striped;->indexFor(Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v2

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 139
    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 140
    aget v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/Striped;->getAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, asList:Ljava/util/List;,"Ljava/util/List<TL;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public abstract getAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation
.end method

.method abstract indexFor(Ljava/lang/Object;)I
.end method

.method public abstract size()I
.end method
