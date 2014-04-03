.class final Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
.super Ljava/lang/Object;
.source "DynamicSizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/DynamicSizeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutCacheKey"
.end annotation


# instance fields
.field final alignment:Landroid/text/Layout$Alignment;

.field final textSizePx:F

.field final textViewIncludeFontPadding:Z

.field final textViewLineSpacingExtra:F

.field final textViewLineSpacingMultiplier:F

.field final width:I


# direct methods
.method constructor <init>(IFLandroid/text/Layout$Alignment;FFZ)V
    .locals 0
    .parameter "width"
    .parameter "textSizePx"
    .parameter "alignment"
    .parameter "textViewLineSpacingMultiplier"
    .parameter "textViewLineSpacingExtra"
    .parameter "textViewIncludeFontPadding"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    .line 114
    iput p2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    .line 115
    iput-object p3, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    .line 116
    iput p4, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingMultiplier:F

    .line 117
    iput p5, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    .line 118
    iput-boolean p6, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewIncludeFontPadding:Z

    .line 119
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 134
    instance-of v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 135
    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    .line 136
    .local v0, lk:Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    iget v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    iget v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    iget-object v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingMultiplier:F

    iget v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingMultiplier:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    iget v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewIncludeFontPadding:Z

    iget-boolean v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewIncludeFontPadding:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 143
    .end local v0           #lk:Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 123
    iget v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    .line 124
    .local v0, h:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int v0, v1, v2

    .line 125
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->hashCode()I

    move-result v2

    xor-int v0, v1, v2

    .line 126
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int v0, v1, v2

    .line 127
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int v0, v1, v2

    .line 128
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewIncludeFontPadding:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    xor-int v0, v2, v1

    .line 129
    return v0

    .line 128
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
