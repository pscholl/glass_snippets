.class Lcom/google/glass/voice/StreamingTextView$TextUpdater;
.super Ljava/lang/Object;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/StreamingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextUpdater"
.end annotation


# instance fields
.field private mPendingStart:I

.field private mText:Landroid/text/SpannableStringBuilder;

.field final synthetic this$0:Lcom/google/glass/voice/StreamingTextView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/StreamingTextView;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->this$0:Lcom/google/glass/voice/StreamingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->reset()V

    .line 140
    return-void
.end method

.method private setText(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "textStart"
    .parameter "text"
    .parameter "useSpecialFormatting"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 173
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/glass/voice/StreamingTextView;->access$100()I

    move-result v1

    :goto_0
    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 175
    .local v0, fcs:Landroid/text/style/ForegroundColorSpan;
    iget-object v1, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p1

    const/16 v3, 0x21

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 176
    return-void

    .line 173
    .end local v0           #fcs:Landroid/text/style/ForegroundColorSpan;
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/StreamingTextView;->access$200()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 149
    return-void
.end method

.method setFinalText(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "finalText"

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-static {}, Lcom/google/glass/voice/StreamingTextView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "setFinalText(%s,%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->setText(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 168
    iget-object v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    .line 169
    return-void
.end method

.method updateText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 152
    invoke-static {}, Lcom/google/glass/voice/StreamingTextView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "updateText(%s,%s,%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget v0, p0, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->mPendingStart:I

    .line 154
    .local v0, currentIndex:I
    if-eqz p1, :cond_0

    .line 155
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->setText(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 156
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_0
    if-eqz p2, :cond_1

    .line 160
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/glass/voice/StreamingTextView$TextUpdater;->setText(ILjava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 162
    :cond_1
    return-void
.end method
