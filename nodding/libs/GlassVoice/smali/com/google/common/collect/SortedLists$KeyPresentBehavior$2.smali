.class final enum Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;
.super Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V

    return-void
.end method


# virtual methods
.method resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter "foundIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;",
            "Ljava/util/List",
            "<+TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p2, key:Ljava/lang/Object;,"TE;"
    .local p3, list:Ljava/util/List;,"Ljava/util/List<+TE;>;"
    move v1, p4

    .line 73
    .local v1, lower:I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 75
    .local v3, upper:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 76
    add-int v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v2, v4, 0x1

    .line 77
    .local v2, middle:I
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 78
    .local v0, c:I
    if-lez v0, :cond_0

    .line 79
    add-int/lit8 v3, v2, -0x1

    goto :goto_0

    .line 81
    :cond_0
    move v1, v2

    goto :goto_0

    .line 84
    .end local v0           #c:I
    .end local v2           #middle:I
    :cond_1
    return v1
.end method
