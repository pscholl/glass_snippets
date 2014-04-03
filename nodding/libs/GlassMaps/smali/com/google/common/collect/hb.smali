.class final Lcom/google/common/collect/hb;
.super Lcom/google/common/collect/gr;


# instance fields
.field final synthetic a:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/gr;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/hb;->a()Lcom/google/common/collect/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/hj;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
