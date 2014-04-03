.class final Lcom/google/glass/widget/ImageLoaderUtils$1;
.super Ljava/lang/Object;
.source "ImageLoaderUtils.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/ImageLoaderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 27
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/ImageLoaderUtils$1;->apply(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    return v0
.end method
