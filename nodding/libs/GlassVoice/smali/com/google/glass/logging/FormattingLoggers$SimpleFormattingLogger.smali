.class final Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;
.super Ljava/lang/Object;
.source "FormattingLoggers.java"

# interfaces
.implements Lcom/google/glass/logging/FormattingLogger;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/FormattingLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SimpleFormattingLogger"
.end annotation


# instance fields
.field private final tag:Ljava/lang/String;

.field final tagProperty:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "tag"
    .parameter "tagProperty"

    .prologue
    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const-string v1, "null tag"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    .line 329
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    move v1, v6

    :goto_0
    const-string v2, "tagProperty is too long: [%s]"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iput-object p2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    .line 333
    const-string v1, "FormattingLoggers"

    const-string v2, "FormattingLoggers"

    const/4 v3, 0x0

    const-string v4, "System property for logging tag [%s]: [log.tag.%s]"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v6

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    return-void

    :cond_0
    move v1, v7

    .line 329
    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 354
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 359
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 383
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 388
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 364
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 368
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 344
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 349
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 373
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 378
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    #calls: Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    return-void
.end method
