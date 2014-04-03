.class Lcom/google/glass/timeline/SpeakableText;
.super Ljava/lang/Object;
.source "SpeakableText.java"


# static fields
.field private static final GET_GLASSWARE_NAME_BLOCK_MS:J = 0x3e8L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/SpeakableText;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/timeline/SpeakableText;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static formatExtraContentDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "description"
    .parameter "text"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->speakable_text_with_extra_context_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method static formatGlasswareNameDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "glasswareName"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, ""

    .line 147
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->speakable_text_glassware_name_description:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSpeakableTextWithContext(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "item"

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/google/glass/timeline/SpeakableText;->getText(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, itemText:Ljava/lang/String;
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 73
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    invoke-static {p1, v4, v1}, Lcom/google/glass/timeline/SpeakableText;->formatExtraContentDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    :cond_0
    :goto_0
    return-object v3

    .line 77
    :cond_1
    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/SpeakableText;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Lcom/google/glass/timeline/SpeakableText;->formatExtraContentDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 87
    :cond_3
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 89
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "style"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/glass/timeline/SpeakableText;->stripTags(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, strippedHtmlString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, htmlString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 94
    const-string v4, "[^a-zA-Z0-9\\s\\n]"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 97
    .end local v0           #htmlString:Ljava/lang/String;
    .end local v2           #strippedHtmlString:Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/SpeakableText;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/glass/timeline/SpeakableText;->formatGlasswareNameDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getSpeakableTextWithoutContext(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 4
    .parameter "item"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/SpeakableText;->getText(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, itemText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    move-object v1, v0

    .line 128
    .local v1, text:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 121
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType:Ljava/lang/String;

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0

    .line 126
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/timeline/SpeakableText;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/timeline/SpeakableText;->context:Landroid/content/Context;

    invoke-virtual {p0, v3, p1}, Lcom/google/glass/timeline/SpeakableText;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/timeline/SpeakableText;->formatGlasswareNameDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method private stripTags(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter "htmlString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, p1

    .line 107
    .local v2, strippedString:Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, tag:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(?i)<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[^+]*>[^+]*</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, regex:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    goto :goto_0

    .line 112
    .end local v1           #regex:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    :cond_0
    return-object v2
.end method


# virtual methods
.method getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 156
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {p1, p2, v1, v2}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    :goto_0
    return-object v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/timeline/SpeakableText;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted waiting for glassware name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 161
    const-string v1, ""

    goto :goto_0
.end method

.method public getSpeakableText(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Ljava/lang/String;
    .locals 2
    .parameter "item"
    .parameter "speakExtraContext"

    .prologue
    .line 54
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 57
    if-eqz p2, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/glass/timeline/SpeakableText;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/google/glass/timeline/SpeakableText;->getSpeakableTextWithContext(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, text:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 60
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/SpeakableText;->getSpeakableTextWithoutContext(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method getText(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 37
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText:Ljava/lang/String;

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
