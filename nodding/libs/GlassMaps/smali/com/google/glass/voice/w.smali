.class final Lcom/google/glass/voice/w;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/StreamingTextView;

.field private b:I

.field private c:Landroid/text/SpannableStringBuilder;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/StreamingTextView;)V
    .locals 1

    iput-object p1, p0, Lcom/google/glass/voice/w;->a:Lcom/google/glass/voice/StreamingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/w;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/glass/voice/w;->b()V

    return-void
.end method

.method private a(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/voice/w;->c:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/glass/voice/w;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/voice/StreamingTextView;->c()I

    move-result v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v0, p0, Lcom/google/glass/voice/w;->c:Landroid/text/SpannableStringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p1

    const/16 v3, 0x21

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/glass/voice/StreamingTextView;->d()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/w;->c:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method final a(Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/glass/voice/StreamingTextView;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "setFinalText(%s,%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/voice/w;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/glass/voice/w;->b:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/glass/voice/w;->a(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/google/glass/voice/w;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/w;->b:I

    return-void
.end method

.method final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/glass/voice/StreamingTextView;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "updateText(%s,%s,%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/voice/w;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/glass/voice/w;->b:I

    if-eqz p1, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/glass/voice/w;->a(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/glass/voice/w;->a(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/voice/w;->b:I

    iget-object v0, p0, Lcom/google/glass/voice/w;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    return-void
.end method
