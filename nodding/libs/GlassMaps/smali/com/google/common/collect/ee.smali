.class final Lcom/google/common/collect/ee;
.super Lcom/google/common/collect/bz;


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/google/common/base/v;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ee;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/ee;->b:Lcom/google/common/base/v;

    invoke-direct {p0}, Lcom/google/common/collect/bz;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ee;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ee;->b:Lcom/google/common/base/v;

    invoke-static {v0, v1}, Lcom/google/common/collect/ef;->a(Ljava/util/Iterator;Lcom/google/common/base/v;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
