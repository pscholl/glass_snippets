.class public Lcom/google/glass/voice/StreamingTextView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final f:I

.field private static final g:I


# instance fields
.field private c:Lcom/google/glass/voice/w;

.field private d:Landroid/widget/TextView;

.field private e:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xff

    const/16 v1, 0xa4

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StreamingTextView;->a:Lcom/google/glass/logging/i;

    const-string v0, "\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StreamingTextView;->b:Ljava/util/regex/Pattern;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/glass/voice/StreamingTextView;->f:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/glass/voice/StreamingTextView;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/voice/StreamingTextView;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/google/glass/voice/StreamingTextView;->f:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/google/glass/voice/StreamingTextView;->g:I

    return v0
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->c:Lcom/google/glass/voice/w;

    invoke-virtual {v0}, Lcom/google/glass/voice/w;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lcom/google/glass/voice/StreamingTextView;->a:Lcom/google/glass/logging/i;

    const-string v1, "#reset"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->d:Landroid/widget/TextView;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->c:Lcom/google/glass/voice/w;

    invoke-virtual {v0}, Lcom/google/glass/voice/w;->b()V

    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView;->e:F

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->c:Lcom/google/glass/voice/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/w;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/glass/voice/StreamingTextView;->e()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/google/glass/g/d;->streaming_text_main:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/StreamingTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/google/glass/voice/w;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/w;-><init>(Lcom/google/glass/voice/StreamingTextView;)V

    iput-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->c:Lcom/google/glass/voice/w;

    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView;->e:F

    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView;->a()V

    return-void
.end method

.method public setFinalRecognizedText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView;->c:Lcom/google/glass/voice/w;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/w;->a(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/glass/voice/StreamingTextView;->e()V

    return-void
.end method
