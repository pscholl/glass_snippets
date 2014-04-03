.class public abstract Lcom/google/glass/widget/BaseImageLoader;
.super Ljava/lang/Object;
.source "BaseImageLoader.java"

# interfaces
.implements Lcom/google/glass/widget/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/glass/widget/ImageLoader;"
    }
.end annotation


# instance fields
.field private final allImageSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private drawImageSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private groupCountType:Lcom/google/glass/widget/MosaicView$GroupCountType;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    .local p1, allImageSources:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-nez p1, :cond_0

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/google/glass/widget/BaseImageLoader;->allImageSources:Ljava/util/List;

    .line 28
    iput p2, p0, Lcom/google/glass/widget/BaseImageLoader;->width:I

    .line 29
    iput p3, p0, Lcom/google/glass/widget/BaseImageLoader;->height:I

    .line 30
    return-void
.end method


# virtual methods
.method public drawListSize()I
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/widget/BaseImageLoader;->drawImageSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected get(I)Ljava/lang/Object;
    .locals 1
    .parameter "elementIdx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/widget/BaseImageLoader;->drawImageSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBackoffText(I)Ljava/lang/String;
    .locals 1
    .parameter "elementIdx"

    .prologue
    .line 44
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDrawImageSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/widget/BaseImageLoader;->drawImageSources:Ljava/util/List;

    return-object v0
.end method

.method public getGroupCountType()Lcom/google/glass/widget/MosaicView$GroupCountType;
    .locals 1

    .prologue
    .line 49
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/widget/BaseImageLoader;->groupCountType:Lcom/google/glass/widget/MosaicView$GroupCountType;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    iget v0, p0, Lcom/google/glass/widget/BaseImageLoader;->height:I

    return v0
.end method

.method protected abstract getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected getImageSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/widget/BaseImageLoader;->allImageSources:Ljava/util/List;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v2, key:Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/google/glass/widget/BaseImageLoader;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v3, p0, Lcom/google/glass/widget/BaseImageLoader;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v3, p0, Lcom/google/glass/widget/BaseImageLoader;->drawImageSources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, imageSource:Ljava/lang/Object;,"TT;"
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/BaseImageLoader;->getImageSourceKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    .end local v1           #imageSource:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    iget v0, p0, Lcom/google/glass/widget/BaseImageLoader;->width:I

    return v0
.end method

.method protected setDrawImageSources(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    .local p1, drawImageSources:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/google/glass/widget/BaseImageLoader;->drawImageSources:Ljava/util/List;

    .line 66
    return-void
.end method

.method protected setGroupCountType(Lcom/google/glass/widget/MosaicView$GroupCountType;)V
    .locals 0
    .parameter "groupCountType"

    .prologue
    .line 53
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    iput-object p1, p0, Lcom/google/glass/widget/BaseImageLoader;->groupCountType:Lcom/google/glass/widget/MosaicView$GroupCountType;

    .line 54
    return-void
.end method

.method public sourceListSize()I
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/glass/widget/BaseImageLoader;,"Lcom/google/glass/widget/BaseImageLoader<TT;>;"
    iget-object v0, p0, Lcom/google/glass/widget/BaseImageLoader;->allImageSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
