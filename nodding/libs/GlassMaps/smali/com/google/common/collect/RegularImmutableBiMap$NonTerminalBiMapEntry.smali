.class Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;
.super Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;


# instance fields
.field private final nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

.field private final nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    iput-object p4, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-void
.end method


# virtual methods
.method getNextInKToVBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method

.method getNextInVToKBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method
