.class public Lcom/google/glass/widget/TypophileTextView;
.super Landroid/widget/TextView;
.source "TypophileTextView.java"


# static fields
.field private static final MASK_CONDENSED:I = 0x100

.field private static final MASK_ITALIC:I = 0x10

.field private static final MASK_WEIGHT:I = 0xf


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    sget-object v7, Lcom/google/glass/common/R$styleable;->TypophileTextView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, attributes:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 91
    .local v2, fontWeight:I
    and-int/lit8 v5, v2, 0xf

    .line 92
    .local v5, weight:I
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_1

    move v3, v1

    .line 93
    .local v3, italic:Z
    :goto_0
    and-int/lit16 v7, v2, 0x100

    if-eqz v7, :cond_2

    .line 95
    .local v1, condensed:Z
    :goto_1
    invoke-static {p1, v5, v3, v1}, Lcom/google/glass/widget/RobotoTypefaces;->getTypeface(Landroid/content/Context;IZZ)Landroid/graphics/Typeface;

    move-result-object v4

    .line 96
    .local v4, typeface:Landroid/graphics/Typeface;
    if-eqz v4, :cond_0

    .line 97
    invoke-virtual {p0, v4}, Lcom/google/glass/widget/TypophileTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    .end local v1           #condensed:Z
    .end local v2           #fontWeight:I
    .end local v3           #italic:Z
    .end local v4           #typeface:Landroid/graphics/Typeface;
    .end local v5           #weight:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return-void

    .restart local v2       #fontWeight:I
    .restart local v5       #weight:I
    :cond_1
    move v3, v6

    .line 92
    goto :goto_0

    .restart local v3       #italic:Z
    :cond_2
    move v1, v6

    .line 93
    goto :goto_1
.end method
