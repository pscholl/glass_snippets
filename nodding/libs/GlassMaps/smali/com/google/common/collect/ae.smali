.class final Lcom/google/common/collect/ae;
.super Lcom/google/common/collect/hv;


# instance fields
.field final synthetic a:Lcom/google/common/collect/ab;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ae;->a:Lcom/google/common/collect/ab;

    invoke-direct {p0}, Lcom/google/common/collect/hv;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ae;->a:Lcom/google/common/collect/ab;

    invoke-virtual {v0}, Lcom/google/common/collect/ab;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
