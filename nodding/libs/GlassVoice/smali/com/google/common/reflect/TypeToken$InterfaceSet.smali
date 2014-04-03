.class final Lcom/google/common/reflect/TypeToken$InterfaceSet;
.super Lcom/google/common/reflect/TypeToken$TypeSet;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InterfaceSet"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient allTypes:Lcom/google/common/reflect/TypeToken$TypeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>.TypeSet;"
        }
    .end annotation
.end field

.field private transient interfaces:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$TypeSet;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>.TypeSet;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet;,"Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    .local p2, allTypes:Lcom/google/common/reflect/TypeToken$TypeSet;,"Lcom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    .line 579
    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->allTypes:Lcom/google/common/reflect/TypeToken$TypeSet;

    .line 580
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 617
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet;,"Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeSet;->interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>.TypeSet;"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet;,"Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "interfaces().classes() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet;,"Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$InterfaceSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 573
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet;,"Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$InterfaceSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet;,"Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->interfaces:Lcom/google/common/collect/ImmutableSet;

    .line 585
    .local v0, result:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    if-nez v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->allTypes:Lcom/google/common/reflect/TypeToken$TypeSet;

    invoke-static {v1}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v1

    sget-object v2, Lcom/google/common/reflect/TypeToken$TypeFilter;->INTERFACE_ONLY:Lcom/google/common/reflect/TypeToken$TypeFilter;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .end local v0           #result:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    iput-object v0, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->interfaces:Lcom/google/common/collect/ImmutableSet;

    .line 589
    :cond_0
    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>.TypeSet;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet;,"Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    return-object p0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet;,"Lcom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    sget-object v1, Lcom/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lcom/google/common/reflect/TypeToken$TypeCollector;

    iget-object v2, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lcom/google/common/reflect/TypeToken;

    #calls: Lcom/google/common/reflect/TypeToken;->getImmediateRawTypes()Lcom/google/common/collect/ImmutableSet;
    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->access$200(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 604
    .local v0, collectedTypes:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Ljava/lang/Class<-TT;>;>;"
    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v1

    new-instance v2, Lcom/google/common/reflect/TypeToken$InterfaceSet$1;

    invoke-direct {v2, p0}, Lcom/google/common/reflect/TypeToken$InterfaceSet$1;-><init>(Lcom/google/common/reflect/TypeToken$InterfaceSet;)V

    invoke-virtual {v1, v2}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method
