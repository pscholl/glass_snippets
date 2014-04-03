.class public final Lcom/google/glass/maps/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/maps/c/g;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/c/g;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/c/g;->c:I

    :goto_0
    iget v0, p0, Lcom/google/glass/maps/c/g;->c:I

    iget v1, p0, Lcom/google/glass/maps/c/g;->b:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/glass/maps/c/g;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/glass/maps/c/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/c/g;->c:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/c/g;->c:I

    iget v1, p0, Lcom/google/glass/maps/c/g;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/c/g;->a:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/maps/c/g;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/glass/maps/c/g;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/google/glass/maps/c/g;->c:I

    iget v2, p0, Lcom/google/glass/maps/c/g;->b:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/c/g;->a:Ljava/util/List;

    iget v2, p0, Lcom/google/glass/maps/c/g;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/glass/maps/c/g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/maps/c/g;->c:I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
