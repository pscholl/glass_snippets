.class public final Lcom/google/glass/util/ad;
.super Lcom/google/glass/util/PersonImageDownloadTask;


# instance fields
.field private final c:Lcom/google/googlex/glass/common/proto/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/ac;Landroid/widget/ImageView;Landroid/widget/TextView;II)V
    .locals 7

    invoke-static {p2}, Lcom/google/glass/entity/p;->f(Lcom/google/googlex/glass/common/proto/ac;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/PersonImageDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    return-void
.end method

.method private varargs a(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v2, v2, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {p1, v3}, Lcom/google/glass/entity/p;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/entity/p;->f(Lcom/google/googlex/glass/common/proto/ac;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/glass/util/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .locals 1

    const-string v0, "ei"

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()V
    .locals 4

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-virtual {p0}, Lcom/google/glass/util/ad;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/util/ad;->l()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/entity/p;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/p;->f(Lcom/google/googlex/glass/common/proto/ac;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/util/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/glass/util/ad;->l()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/entity/p;->c(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/p;->f(Lcom/google/googlex/glass/common/proto/ac;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/util/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/ad;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/ad;->a(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/ad;->c:Lcom/google/googlex/glass/common/proto/ac;

    invoke-static {v0}, Lcom/google/glass/entity/p;->h(Lcom/google/googlex/glass/common/proto/ac;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
