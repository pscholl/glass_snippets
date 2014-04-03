.class public final Lcom/google/common/collect/dk;
.super Lcom/google/common/collect/dp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/dp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/dp;->b()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dk;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/dp;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dp;

    return-object p0
.end method

.method public final synthetic b()Lcom/google/common/collect/ImmutableMultimap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/dk;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dp;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/dk;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dk;

    move-result-object v0

    return-object v0
.end method
