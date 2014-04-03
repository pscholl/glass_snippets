.class final Lcom/google/common/collect/Sets$PowerSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PowerSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final inputList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field final inputSet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field final powerSetSize:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1184
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    .local p1, input:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1185
    iput-object p1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    .line 1186
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Sets$PowerSet;->inputList:Lcom/google/common/collect/ImmutableList;

    .line 1187
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/Sets$PowerSet;->powerSetSize:I

    .line 1188
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1247
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1248
    check-cast v0, Ljava/util/Set;

    .line 1249
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    .line 1251
    .end local v0           #set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1256
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    instance-of v1, p1, Lcom/google/common/collect/Sets$PowerSet;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1257
    check-cast v0, Lcom/google/common/collect/Sets$PowerSet;

    .line 1258
    .local v0, that:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    iget-object v2, v0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1260
    .end local v0           #that:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<*>;"
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1270
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1197
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Set",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1202
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/Sets$PowerSet$1;

    iget v1, p0, Lcom/google/common/collect/Sets$PowerSet;->powerSetSize:I

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Sets$PowerSet$1;-><init>(Lcom/google/common/collect/Sets$PowerSet;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1192
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$PowerSet;->powerSetSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1275
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet;,"Lcom/google/common/collect/Sets$PowerSet<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "powerSet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
