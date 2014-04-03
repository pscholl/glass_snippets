.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$8;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/collect/gg;)V

    return-void
.end method


# virtual methods
.method final copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/gu;Lcom/google/common/collect/gu;)Lcom/google/common/collect/gu;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/gu;Lcom/google/common/collect/gu;)Lcom/google/common/collect/gu;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$8;->copyExpirableEntry(Lcom/google/common/collect/gu;Lcom/google/common/collect/gu;)V

    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$8;->copyEvictableEntry(Lcom/google/common/collect/gu;Lcom/google/common/collect/gu;)V

    return-object v0
.end method

.method final newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/gu;)Lcom/google/common/collect/gu;
    .locals 2

    new-instance v0, Lcom/google/common/collect/hh;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/hh;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gu;)V

    return-object v0
.end method
