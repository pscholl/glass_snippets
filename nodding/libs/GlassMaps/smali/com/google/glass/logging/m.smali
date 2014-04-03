.class final Lcom/google/glass/logging/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/logging/i;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "null tag"

    invoke-static {p1, v1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    move v1, v6

    :goto_0
    const-string v2, "tagProperty is too long: [%s]"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-static {v1, v2, v3}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    const-string v1, "FormattingLoggers"

    const-string v2, "FormattingLoggers"

    const/4 v3, 0x0

    const-string v4, "System property for logging tag [%s]: [log.tag.%s]"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    move v1, v7

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/logging/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/m;->b:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/j;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
