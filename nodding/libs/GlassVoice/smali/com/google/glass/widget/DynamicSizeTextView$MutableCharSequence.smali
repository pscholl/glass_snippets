.class final Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;
.super Ljava/lang/Object;
.source "DynamicSizeTextView.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/DynamicSizeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MutableCharSequence"
.end annotation


# instance fields
.field end:I

.field start:I

.field str:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->changeText(Ljava/lang/CharSequence;II)V

    .line 72
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->changeText(Ljava/lang/CharSequence;II)V

    .line 76
    return-void
.end method


# virtual methods
.method changeText(Ljava/lang/CharSequence;II)V
    .locals 0
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->str:Ljava/lang/CharSequence;

    .line 80
    iput p2, p0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->start:I

    .line 81
    iput p3, p0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->end:I

    .line 82
    return-void
.end method

.method public charAt(I)C
    .locals 2
    .parameter "index"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->str:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->start:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->end:I

    iget v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 96
    new-instance v0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;

    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->str:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/widget/DynamicSizeTextView$MutableCharSequence;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method
