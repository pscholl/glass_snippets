.class final Lcom/google/common/collect/hf;
.super Lcom/google/common/collect/he;

# interfaces
.implements Lcom/google/common/collect/gu;


# instance fields
.field d:Lcom/google/common/collect/gu;

.field e:Lcom/google/common/collect/gu;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gu;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/he;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gu;)V

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hf;->d:Lcom/google/common/collect/gu;

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hf;->e:Lcom/google/common/collect/gu;

    return-void
.end method


# virtual methods
.method public final getNextEvictable()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/hf;->d:Lcom/google/common/collect/gu;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/hf;->e:Lcom/google/common/collect/gu;

    return-object v0
.end method

.method public final setNextEvictable(Lcom/google/common/collect/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/hf;->d:Lcom/google/common/collect/gu;

    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/hf;->e:Lcom/google/common/collect/gu;

    return-void
.end method
