.class public Lcom/google/glass/widget/FillBar;
.super Landroid/widget/FrameLayout;
.source "FillBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/FillBar$Listener;
    }
.end annotation


# instance fields
.field private fill:Landroid/view/View;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/FillBar$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private offset:F

.field private value:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/FillBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/FillBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/FillBar;->listeners:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$color;->background_dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/FillBar;->setBackgroundColor(I)V

    .line 62
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/FillBar;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method private onValueChanged()V
    .locals 5

    .prologue
    .line 153
    iget v3, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v4, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v3, v4}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v0

    .line 154
    .local v0, clamped:F
    invoke-direct {p0, v0}, Lcom/google/glass/widget/FillBar;->updateScale(F)V

    .line 155
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/google/glass/widget/FillBar;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 156
    iget-object v3, p0, Lcom/google/glass/widget/FillBar;->listeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/FillBar$Listener;

    invoke-interface {v3, v0}, Lcom/google/glass/widget/FillBar$Listener;->onFillValueChanged(F)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method private updateScale(F)V
    .locals 2
    .parameter "clamped"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->fill:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 162
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/widget/FillBar$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 71
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method clamp(FF)F
    .locals 3
    .parameter "value"
    .parameter "offset"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    add-float v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public commitFillOffset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    iget v0, p0, Lcom/google/glass/widget/FillBar;->offset:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 136
    iget v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    .line 137
    iput v2, p0, Lcom/google/glass/widget/FillBar;->offset:F

    .line 138
    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->onValueChanged()V

    .line 140
    :cond_0
    return-void
.end method

.method public getFillOffset()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/glass/widget/FillBar;->offset:F

    return v0
.end method

.method public getOverScrollPixels()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->isAtMin()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/google/glass/widget/FillBar;->offset:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v1, v2

    .line 145
    .local v1, isUnderMin:Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->isAtMax()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/google/glass/widget/FillBar;->offset:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    move v0, v2

    .line 146
    .local v0, isOverMax:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    iget v2, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v3, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v2

    iget v3, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v4, p0, Lcom/google/glass/widget/FillBar;->offset:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/glass/widget/FillBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v3, v2

    .line 149
    :cond_1
    return v3

    .end local v0           #isOverMax:Z
    .end local v1           #isUnderMin:Z
    :cond_2
    move v1, v3

    .line 144
    goto :goto_0

    .restart local v1       #isUnderMin:Z
    :cond_3
    move v0, v3

    .line 145
    goto :goto_1
.end method

.method public isAtMax()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtMin()Z
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 86
    iget v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    iget v1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/FillBar;->clamp(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/FillBar;->updateScale(F)V

    .line 87
    return-void
.end method

.method public removeListener(Lcom/google/glass/widget/FillBar$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 77
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/google/glass/widget/FillBar;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public setFillOffset(F)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 129
    iput p1, p0, Lcom/google/glass/widget/FillBar;->offset:F

    .line 130
    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->onValueChanged()V

    .line 131
    return-void
.end method

.method public setFillValue(F)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 115
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 116
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 117
    iput p1, p0, Lcom/google/glass/widget/FillBar;->value:F

    .line 118
    iput v3, p0, Lcom/google/glass/widget/FillBar;->offset:F

    .line 119
    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->onValueChanged()V

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    :cond_1
    move v1, v2

    .line 116
    goto :goto_1
.end method

.method public setToMax()V
    .locals 1

    .prologue
    .line 108
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/FillBar;->offset:F

    .line 110
    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->onValueChanged()V

    .line 111
    return-void
.end method

.method public setToMin()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/google/glass/widget/FillBar;->value:F

    .line 102
    iput v0, p0, Lcom/google/glass/widget/FillBar;->offset:F

    .line 103
    invoke-direct {p0}, Lcom/google/glass/widget/FillBar;->onValueChanged()V

    .line 104
    return-void
.end method
