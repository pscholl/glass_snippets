.class public final Lcom/google/common/collect/Constraints;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Constraints$ConstrainedMultiset;,
        Lcom/google/common/collect/Constraints$ConstrainedListIterator;,
        Lcom/google/common/collect/Constraints$ConstrainedRandomAccessList;,
        Lcom/google/common/collect/Constraints$ConstrainedList;,
        Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,
        Lcom/google/common/collect/Constraints$ConstrainedSet;,
        Lcom/google/common/collect/Constraints$ConstrainedCollection;,
        Lcom/google/common/collect/Constraints$NotNullConstraint;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->checkElements(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->constrainedListIterator(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method private static checkElements(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, elements:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    .local p1, constraint:Lcom/google/common/collect/Constraint;,"Lcom/google/common/collect/Constraint<-TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 423
    .local v0, copy:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 424
    .local v1, element:Ljava/lang/Object;,"TE;"
    invoke-interface {p1, v1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 426
    .end local v1           #element:Ljava/lang/Object;,"TE;"
    :cond_0
    return-object v0
.end method

.method public static constrainedCollection(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    .local p1, constraint:Lcom/google/common/collect/Constraint;,"Lcom/google/common/collect/Constraint<-TE;>;"
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedCollection;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method public static constrainedList(Ljava/util/List;Lcom/google/common/collect/Constraint;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    .local p1, constraint:Lcom/google/common/collect/Constraint;,"Lcom/google/common/collect/Constraint<-TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedRandomAccessList;-><init>(Ljava/util/List;Lcom/google/common/collect/Constraint;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedList;-><init>(Ljava/util/List;Lcom/google/common/collect/Constraint;)V

    goto :goto_0
.end method

.method private static constrainedListIterator(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)Ljava/util/ListIterator;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, listIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TE;>;"
    .local p1, constraint:Lcom/google/common/collect/Constraint;,"Lcom/google/common/collect/Constraint<-TE;>;"
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedListIterator;-><init>(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method public static constrainedMultiset(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Constraint;)Lcom/google/common/collect/Multiset;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, multiset:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, constraint:Lcom/google/common/collect/Constraint;,"Lcom/google/common/collect/Constraint<-TE;>;"
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedMultiset;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method public static constrainedSet(Ljava/util/Set;Lcom/google/common/collect/Constraint;)Ljava/util/Set;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, constraint:Lcom/google/common/collect/Constraint;,"Lcom/google/common/collect/Constraint<-TE;>;"
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedSet;-><init>(Ljava/util/Set;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method public static constrainedSortedSet(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    .local p1, constraint:Lcom/google/common/collect/Constraint;,"Lcom/google/common/collect/Constraint<-TE;>;"
    new-instance v0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)V

    return-object v0
.end method

.method static constrainedTypePreservingCollection(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    .local p1, constraint:Lcom/google/common/collect/Constraint;,"Lcom/google/common/collect/Constraint<TE;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 344
    check-cast p0, Ljava/util/SortedSet;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->constrainedSortedSet(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 345
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 346
    check-cast p0, Ljava/util/Set;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->constrainedSet(Ljava/util/Set;Lcom/google/common/collect/Constraint;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 347
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 348
    check-cast p0, Ljava/util/List;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->constrainedList(Ljava/util/List;Lcom/google/common/collect/Constraint;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 350
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_2
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->constrainedCollection(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static notNull()Lcom/google/common/collect/Constraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/Constraint",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/google/common/collect/Constraints$NotNullConstraint;->INSTANCE:Lcom/google/common/collect/Constraints$NotNullConstraint;

    return-object v0
.end method
