.class final Lcom/google/common/collect/Sets$CartesianSet;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Ljava/util/List",
        "<TE;>;>;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final transient delegate:Lcom/google/common/collect/CartesianList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CartesianList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/CartesianList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;>;",
            "Lcom/google/common/collect/CartesianList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1098
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TE;>;"
    .local p1, axes:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/ImmutableSet<TE;>;>;"
    .local p2, delegate:Lcom/google/common/collect/CartesianList;,"Lcom/google/common/collect/CartesianList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 1099
    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    .line 1100
    iput-object p2, p0, Lcom/google/common/collect/Sets$CartesianSet;->delegate:Lcom/google/common/collect/CartesianList;

    .line 1101
    return-void
.end method

.method static create(Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Set",
            "<+TE;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, sets:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Set<+TE;>;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 1072
    .local v1, axesBuilder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/ImmutableSet<TE;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 1073
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<+TE;>;"
    invoke-static {v5}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 1074
    .local v2, copy:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1075
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    .line 1095
    .end local v2           #copy:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<+TE;>;"
    :goto_1
    return-object v6

    .line 1077
    .restart local v2       #copy:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    .restart local v5       #set:Ljava/util/Set;,"Ljava/util/Set<+TE;>;"
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 1079
    .end local v2           #copy:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<+TE;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1080
    .local v0, axes:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/ImmutableSet<TE;>;>;"
    new-instance v4, Lcom/google/common/collect/Sets$CartesianSet$1;

    invoke-direct {v4, v0}, Lcom/google/common/collect/Sets$CartesianSet$1;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 1095
    .local v4, listAxes:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Ljava/util/List<TE;>;>;"
    new-instance v6, Lcom/google/common/collect/Sets$CartesianSet;

    new-instance v7, Lcom/google/common/collect/CartesianList;

    invoke-direct {v7, v4}, Lcom/google/common/collect/CartesianList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-direct {v6, v0, v7}, Lcom/google/common/collect/Sets$CartesianSet;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/CartesianList;)V

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1064
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->delegate:Lcom/google/common/collect/CartesianList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1112
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TE;>;"
    instance-of v1, p1, Lcom/google/common/collect/Sets$CartesianSet;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1113
    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet;

    .line 1114
    .local v0, that:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1116
    .end local v0           #that:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<*>;"
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 1125
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 1126
    .local v0, adjust:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 1127
    mul-int/lit8 v0, v0, 0x1f

    .line 1128
    xor-int/lit8 v5, v0, -0x1

    xor-int/lit8 v0, v5, -0x1

    .line 1126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1131
    :cond_0
    const/4 v2, 0x1

    .line 1132
    .local v2, hash:I
    iget-object v5, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableSet;

    .line 1133
    .local v1, axis:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    mul-int/lit8 v5, v2, 0x1f

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->size()I

    move-result v6

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    div-int/2addr v6, v7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    mul-int/2addr v6, v7

    add-int v2, v5, v6

    .line 1135
    xor-int/lit8 v5, v2, -0x1

    xor-int/lit8 v2, v5, -0x1

    goto :goto_1

    .line 1137
    .end local v1           #axis:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    :cond_1
    add-int/2addr v2, v0

    .line 1138
    xor-int/lit8 v5, v2, -0x1

    xor-int/lit8 v5, v5, -0x1

    return v5
.end method
