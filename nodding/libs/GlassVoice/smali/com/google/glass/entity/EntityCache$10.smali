.class final Lcom/google/glass/entity/EntityCache$10;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/entity/EntityCache$EntityData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I
    .locals 3
    .parameter "entity1"
    .parameter "entity2"

    .prologue
    .line 226
    iget v1, p2, Lcom/google/glass/entity/EntityCache$EntityData;->shareCount:I

    iget v2, p1, Lcom/google/glass/entity/EntityCache$EntityData;->shareCount:I

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    .line 230
    .local v0, result:I
    if-nez v0, :cond_0

    .line 231
    iget v1, p2, Lcom/google/glass/entity/EntityCache$EntityData;->priority:I

    iget v2, p1, Lcom/google/glass/entity/EntityCache$EntityData;->priority:I

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    .line 233
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    .end local p1
    check-cast p2, Lcom/google/glass/entity/EntityCache$EntityData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityCache$10;->compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I

    move-result v0

    return v0
.end method
