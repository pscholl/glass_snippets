.class public final Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSET_EXPECTED_SIZE:I = -0x1


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TB;>;"
        }
    .end annotation
.end field

.field private expectedSize:I

.field private maximumSize:I


# direct methods
.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Builder;,"Lcom/google/common/collect/MinMaxPriorityQueue$Builder<TB;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->expectedSize:I

    .line 161
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize:I

    .line 164
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->comparator:Ljava/util/Comparator;

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Builder;,"Lcom/google/common/collect/MinMaxPriorityQueue$Builder<TB;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;)Lcom/google/common/collect/Ordering;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->ordering()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize:I

    return v0
.end method

.method private ordering()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Builder;,"Lcom/google/common/collect/MinMaxPriorityQueue$Builder<TB;>;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create()Lcom/google/common/collect/MinMaxPriorityQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>()",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Builder;,"Lcom/google/common/collect/MinMaxPriorityQueue$Builder<TB;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Builder;,"Lcom/google/common/collect/MinMaxPriorityQueue$Builder<TB;>;"
    .local p1, initialContents:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    new-instance v2, Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->expectedSize:I

    iget v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize:I

    invoke-static {v3, v4, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->initialQueueSize(IILjava/lang/Iterable;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;ILcom/google/common/collect/MinMaxPriorityQueue$1;)V

    .line 204
    .local v2, queue:Lcom/google/common/collect/MinMaxPriorityQueue;,"Lcom/google/common/collect/MinMaxPriorityQueue<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, element:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    .end local v0           #element:Ljava/lang/Object;,"TT;"
    :cond_0
    return-object v2
.end method

.method public expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 1
    .parameter "expectedSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Builder;,"Lcom/google/common/collect/MinMaxPriorityQueue$Builder<TB;>;"
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 173
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->expectedSize:I

    .line 174
    return-object p0

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 1
    .parameter "maximumSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Lcom/google/common/collect/MinMaxPriorityQueue$Builder;,"Lcom/google/common/collect/MinMaxPriorityQueue$Builder<TB;>;"
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 185
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize:I

    .line 186
    return-object p0

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
