.class Lcom/google/common/hash/BloomFilter$SerialForm;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[J

.field final funnel:Lcom/google/common/hash/Funnel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/Funnel",
            "<TT;>;"
        }
    .end annotation
.end field

.field final numHashFunctions:I

.field final strategy:Lcom/google/common/hash/BloomFilter$Strategy;


# direct methods
.method constructor <init>(Lcom/google/common/hash/BloomFilter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, this:Lcom/google/common/hash/BloomFilter$SerialForm;,"Lcom/google/common/hash/BloomFilter$SerialForm<TT;>;"
    .local p1, bf:Lcom/google/common/hash/BloomFilter;,"Lcom/google/common/hash/BloomFilter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    #getter for: Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$000(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->data:[J

    .line 317
    #getter for: Lcom/google/common/hash/BloomFilter;->numHashFunctions:I
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$100(Lcom/google/common/hash/BloomFilter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->numHashFunctions:I

    .line 318
    #getter for: Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$200(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/Funnel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->funnel:Lcom/google/common/hash/Funnel;

    .line 319
    #getter for: Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$300(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilter$Strategy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 320
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 323
    .local p0, this:Lcom/google/common/hash/BloomFilter$SerialForm;,"Lcom/google/common/hash/BloomFilter$SerialForm<TT;>;"
    new-instance v0, Lcom/google/common/hash/BloomFilter;

    new-instance v1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v2, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->data:[J

    invoke-direct {v1, v2}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    iget v2, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->numHashFunctions:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v4, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;Lcom/google/common/hash/BloomFilter$1;)V

    return-object v0
.end method
