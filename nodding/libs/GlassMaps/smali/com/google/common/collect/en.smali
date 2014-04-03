.class final Lcom/google/common/collect/en;
.super Lcom/google/common/collect/mk;


# instance fields
.field final synthetic a:Lcom/google/common/base/v;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/v;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/en;->a:Lcom/google/common/base/v;

    invoke-direct {p0, p1}, Lcom/google/common/collect/mk;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/en;->a:Lcom/google/common/base/v;

    invoke-interface {v0, p1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
