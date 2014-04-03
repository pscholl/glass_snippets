.class public Lcom/google/glass/html/HtmlRenderCache;
.super Landroid/util/LruCache;
.source "HtmlRenderCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private multipageItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/html/HtmlRenderCache;->multipageItems:Ljava/util/Set;

    .line 17
    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 10
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3
    check-cast p4, Landroid/graphics/Bitmap;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/html/HtmlRenderCache;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "evicted"
    .parameter "key"
    .parameter "oldBitmap"
    .parameter "newBitmap"

    .prologue
    .line 29
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 30
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderCache;->multipageItems:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public isMultipageItem(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderCache;->multipageItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMultipageItem(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "isMultipage"

    .prologue
    .line 55
    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderCache;->multipageItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderCache;->multipageItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/html/HtmlRenderCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
