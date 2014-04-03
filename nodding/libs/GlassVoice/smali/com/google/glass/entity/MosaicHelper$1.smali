.class Lcom/google/glass/entity/MosaicHelper$1;
.super Landroid/util/LruCache;
.source "MosaicHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/MosaicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/MosaicHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/MosaicHelper;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/entity/MosaicHelper$1;->this$0:Lcom/google/glass/entity/MosaicHelper;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, [B

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/MosaicHelper$1;->sizeOf(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;[B)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 61
    array-length v0, p2

    return v0
.end method
