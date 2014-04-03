.class final Lcom/google/common/reflect/q;
.super Lcom/google/common/reflect/s;


# instance fields
.field final synthetic c:Lcom/google/common/reflect/n;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/n;Lcom/google/common/reflect/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/reflect/q;->c:Lcom/google/common/reflect/n;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/s;-><init>(Lcom/google/common/reflect/n;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .locals 4

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/di;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/q;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/di;->b(Ljava/lang/Object;)Lcom/google/common/collect/di;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/di;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/common/reflect/s;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method final c(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
