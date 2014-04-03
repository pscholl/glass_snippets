.class public Lcom/google/glass/util/PreloadCachedBitmapFactory;
.super Lcom/google/glass/util/CachedBitmapFactory;
.source "PreloadCachedBitmapFactory.java"


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;II)V

    .line 21
    invoke-static {}, Lcom/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PreloadCachedBitmapFactory;->cache:Ljava/util/Map;

    .line 22
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/util/PreloadCachedBitmapFactory;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/util/PreloadCachedBitmapFactory;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 36
    return-void
.end method

.method public decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"
    .parameter "lookupOnly"
    .parameter "isCancelled"

    .prologue
    .line 40
    if-nez p1, :cond_1

    .line 41
    const/4 v0, 0x0

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/google/glass/util/PreloadCachedBitmapFactory;->cache:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/google/glass/util/PreloadCachedBitmapFactory;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 45
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 50
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
