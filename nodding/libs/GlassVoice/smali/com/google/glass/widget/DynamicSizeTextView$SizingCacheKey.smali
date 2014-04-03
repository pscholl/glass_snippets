.class final Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
.super Ljava/lang/Object;
.source "DynamicSizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/DynamicSizeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizingCacheKey"
.end annotation


# instance fields
.field final height:I

.field final isForcedToSmallestSize:Z

.field final text:Ljava/lang/String;

.field final width:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;IIZ)V
    .locals 1
    .parameter "text"
    .parameter "width"
    .parameter "height"
    .parameter "isForcedToSmallestSize"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->text:Ljava/lang/String;

    .line 171
    iput p2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->width:I

    .line 172
    iput p3, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->height:I

    .line 173
    iput-boolean p4, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->isForcedToSmallestSize:Z

    .line 174
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 187
    instance-of v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 188
    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    .line 189
    .local v0, ck:Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    iget-object v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->text:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->width:I

    iget v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->height:I

    iget v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->height:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->isForcedToSmallestSize:Z

    iget-boolean v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->isForcedToSmallestSize:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 194
    .end local v0           #ck:Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 179
    .local v0, h:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->width:I

    xor-int v0, v1, v2

    .line 180
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->height:I

    xor-int v0, v1, v2

    .line 181
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->isForcedToSmallestSize:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    xor-int v0, v2, v1

    .line 182
    return v0

    .line 181
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
