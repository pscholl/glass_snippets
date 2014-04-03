.class final Lcom/google/common/collect/Count;
.super Ljava/lang/Object;
.source "Count.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private value:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 34
    return-void
.end method


# virtual methods
.method public addAndGet(I)I
    .locals 1
    .parameter "delta"

    .prologue
    .line 47
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 67
    instance-of v0, p1, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Count;

    .end local p1
    iget v0, p1, Lcom/google/common/collect/Count;->value:I

    iget v1, p0, Lcom/google/common/collect/Count;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public getAndAdd(I)I
    .locals 2
    .parameter "delta"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    .line 42
    .local v0, result:I
    add-int v1, v0, p1

    iput v1, p0, Lcom/google/common/collect/Count;->value:I

    .line 43
    return v0
.end method

.method public getAndSet(I)I
    .locals 1
    .parameter "newValue"

    .prologue
    .line 55
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    .line 56
    .local v0, result:I
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 57
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public set(I)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 51
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
