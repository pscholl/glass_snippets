.class Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;
.super Landroid/util/LruCache;
.source "MemoryCachedBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/MemoryCachedBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapCache"
.end annotation

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
.field final synthetic this$0:Lcom/google/glass/util/MemoryCachedBitmapFactory;


# direct methods
.method public constructor <init>(Lcom/google/glass/util/MemoryCachedBitmapFactory;I)V
    .locals 0
    .parameter
    .parameter "maxCacheSizeKb"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;->this$0:Lcom/google/glass/util/MemoryCachedBitmapFactory;

    .line 28
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 29
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
    .line 26
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3
    check-cast p4, Landroid/graphics/Bitmap;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "evicted"
    .parameter "path"
    .parameter "oldBitmap"
    .parameter "newBitmap"

    .prologue
    .line 39
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 40
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
