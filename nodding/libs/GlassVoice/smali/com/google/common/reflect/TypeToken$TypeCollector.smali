.class abstract Lcom/google/common/reflect/TypeToken$TypeCollector;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TypeCollector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeToken$TypeCollector$ForwardingTypeCollector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final FOR_GENERIC_TYPE:Lcom/google/common/reflect/TypeToken$TypeCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/TypeToken$TypeCollector",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final FOR_RAW_TYPE:Lcom/google/common/reflect/TypeToken$TypeCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/TypeToken$TypeCollector",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1055
    new-instance v0, Lcom/google/common/reflect/TypeToken$TypeCollector$1;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeToken$TypeCollector$1;-><init>()V

    sput-object v0, Lcom/google/common/reflect/TypeToken$TypeCollector;->FOR_GENERIC_TYPE:Lcom/google/common/reflect/TypeToken$TypeCollector;

    .line 1073
    new-instance v0, Lcom/google/common/reflect/TypeToken$TypeCollector$2;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeToken$TypeCollector$2;-><init>()V

    sput-object v0, Lcom/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lcom/google/common/reflect/TypeToken$TypeCollector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1053
    .local p0, this:Lcom/google/common/reflect/TypeToken$TypeCollector;,"Lcom/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeToken$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1053
    .local p0, this:Lcom/google/common/reflect/TypeToken$TypeCollector;,"Lcom/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken$TypeCollector;-><init>()V

    return-void
.end method

.method private collectTypes(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Map",
            "<-TK;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1132
    .local p0, this:Lcom/google/common/reflect/TypeToken$TypeCollector;,"Lcom/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    .local p1, type:Ljava/lang/Object;,"TK;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<-TK;Ljava/lang/Integer;>;"
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1133
    .local v1, existing:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 1135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1152
    :goto_0
    return v5

    .line 1137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->getRawType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 1139
    .local v0, aboveMe:I
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1140
    .local v3, interfaceType:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v3, p2}, Lcom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 1137
    .end local v0           #aboveMe:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #interfaceType:Ljava/lang/Object;,"TK;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1142
    .restart local v0       #aboveMe:I
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1143
    .local v4, superclass:Ljava/lang/Object;,"TK;"
    if-eqz v4, :cond_3

    .line 1144
    invoke-direct {p0, v4, p2}, Lcom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1151
    :cond_3
    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    add-int/lit8 v5, v0, 0x1

    goto :goto_0
.end method

.method private static sortKeysByValue(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1157
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p1, valueComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TV;>;"
    new-instance v0, Lcom/google/common/reflect/TypeToken$TypeCollector$4;

    invoke-direct {v0, p1, p0}, Lcom/google/common/reflect/TypeToken$TypeCollector$4;-><init>(Ljava/util/Comparator;Ljava/util/Map;)V

    .line 1163
    .local v0, keyOrdering:Lcom/google/common/collect/Ordering;,"Lcom/google/common/collect/Ordering<TK;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method final classesOnly()Lcom/google/common/reflect/TypeToken$TypeCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken$TypeCollector",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1098
    .local p0, this:Lcom/google/common/reflect/TypeToken$TypeCollector;,"Lcom/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    new-instance v0, Lcom/google/common/reflect/TypeToken$TypeCollector$3;

    invoke-direct {v0, p0, p0}, Lcom/google/common/reflect/TypeToken$TypeCollector$3;-><init>(Lcom/google/common/reflect/TypeToken$TypeCollector;Lcom/google/common/reflect/TypeToken$TypeCollector;)V

    return-object v0
.end method

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
    .line 1123
    .local p0, this:Lcom/google/common/reflect/TypeToken$TypeCollector;,"Lcom/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    .local p1, types:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TK;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 1124
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1125
    .local v2, type:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, v2, v1}, Lcom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;Ljava/util/Map;)I

    goto :goto_0

    .line 1127
    .end local v2           #type:Ljava/lang/Object;,"TK;"
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/reflect/TypeToken$TypeCollector;->sortKeysByValue(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method final collectTypes(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1118
    .local p0, this:Lcom/google/common/reflect/TypeToken$TypeCollector;,"Lcom/google/common/reflect/TypeToken$TypeCollector<TK;>;"
    .local p1, type:Ljava/lang/Object;,"TK;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method abstract getInterfaces(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable",
            "<+TK;>;"
        }
    .end annotation
.end method

.method abstract getRawType(Ljava/lang/Object;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method abstract getSuperclass(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
