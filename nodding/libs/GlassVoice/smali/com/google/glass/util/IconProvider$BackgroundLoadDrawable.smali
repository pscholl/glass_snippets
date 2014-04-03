.class Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/IconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundLoadDrawable"
.end annotation


# instance fields
.field alpha:I

.field colorFilter:Landroid/graphics/ColorFilter;

.field final height:I

.field volatile icon:Landroid/graphics/drawable/Drawable;

.field final width:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->alpha:I

    .line 49
    iput p1, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->width:I

    .line 50
    iput p2, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->height:I

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 57
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->width:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 63
    iput p1, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->alpha:I

    .line 64
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "colorFilter"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 72
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 75
    :cond_0
    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 94
    if-eqz p1, :cond_2

    .line 95
    iput-object p1, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->icon:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 99
    :cond_0
    iget v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->alpha:I

    if-ltz v0, :cond_1

    .line 100
    iget v0, p0, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->alpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->invalidateSelf()V

    .line 104
    :cond_2
    return-void
.end method
