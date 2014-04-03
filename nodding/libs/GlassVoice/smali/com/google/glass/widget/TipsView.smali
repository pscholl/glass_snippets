.class public Lcom/google/glass/widget/TipsView;
.super Lcom/google/glass/widget/TypophileTextView;
.source "TipsView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private tip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/TipsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/TipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/TipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget-object v2, Lcom/google/glass/common/R$styleable;->TipsView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, attributes:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 33
    .local v1, tipReference:I
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/TipsView;->setTip(I)V

    .line 37
    .end local v1           #tipReference:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    return-void
.end method


# virtual methods
.method public getTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/widget/TipsView;->tip:Ljava/lang/String;

    return-object v0
.end method

.method protected getTipTextSize()F
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/widget/TipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->small_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected getTipTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/glass/widget/TipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/glass/widget/RobotoTypefaces;->getTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public setTip(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/glass/widget/TipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/TipsView;->setTip(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/widget/TipsView;->tip:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/TipsView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
