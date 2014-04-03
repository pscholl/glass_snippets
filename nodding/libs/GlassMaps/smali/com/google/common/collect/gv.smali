.class final Lcom/google/common/collect/gv;
.super Ljava/lang/ref/SoftReference;

# interfaces
.implements Lcom/google/common/collect/hc;


# instance fields
.field final a:Lcom/google/common/collect/gu;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/gu;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/google/common/collect/gv;->a:Lcom/google/common/collect/gu;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gv;->a:Lcom/google/common/collect/gu;

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/gu;)Lcom/google/common/collect/hc;
    .locals 1

    new-instance v0, Lcom/google/common/collect/gv;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/gv;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/gu;)V

    return-object v0
.end method

.method public final a(Lcom/google/common/collect/hc;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/gv;->clear()V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/gv;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
