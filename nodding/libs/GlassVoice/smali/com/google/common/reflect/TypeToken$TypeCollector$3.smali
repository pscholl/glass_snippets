.class Lcom/google/common/reflect/TypeToken$TypeCollector$3;
.super Lcom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken$TypeCollector;->classesOnly()Lcom/google/common/reflect/TypeToken$TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/reflect/TypeToken$TypeCollector;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken$TypeCollector;Lcom/google/common/reflect/TypeToken$TypeCollector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1098
    .local p0, this:Lcom/google/common/reflect/TypeToken$TypeCollector$3;,"Lcom/google/common/reflect/TypeToken$TypeCollector.3;"
    .local p2, x0:Lcom/google/common/reflect/TypeToken$TypeCollector;,"Lcom/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$TypeCollector$3;->this$0:Lcom/google/common/reflect/TypeToken$TypeCollector;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;-><init>(Lcom/google/common/reflect/TypeToken$TypeCollector;)V

    return-void
.end method


# virtual methods
.method collectTypes(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1106
    .local p0, this:Lcom/google/common/reflect/TypeToken$TypeCollector$3;,"Lcom/google/common/reflect/TypeToken$TypeCollector.3;"
    .local p1, types:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TK;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 1107
    .local v0, builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<TK;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1108
    .local v2, type:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeToken$TypeCollector$3;->getRawType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1109
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 1112
    .end local v2           #type:Ljava/lang/Object;,"TK;"
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;->collectTypes(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable",
            "<+TK;>;"
        }
    .end annotation

    .prologue
    .line 1101
    .local p0, this:Lcom/google/common/reflect/TypeToken$TypeCollector$3;,"Lcom/google/common/reflect/TypeToken$TypeCollector.3;"
    .local p1, type:Ljava/lang/Object;,"TK;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
