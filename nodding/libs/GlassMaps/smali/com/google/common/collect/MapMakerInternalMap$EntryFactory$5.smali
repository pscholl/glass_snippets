.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$5;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/collect/gg;)V

    return-void
.end method


# virtual methods
.method final newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/gu;)Lcom/google/common/collect/gu;
    .locals 2

    new-instance v0, Lcom/google/common/collect/he;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/he;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gu;)V

    return-object v0
.end method
