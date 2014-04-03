.class public abstract Lcom/google/glass/util/au;
.super Lcom/google/glass/util/z;


# instance fields
.field private final c:Lcom/google/glass/util/g;

.field private final d:Lcom/google/glass/util/aw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/glass/util/z;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->f()Lcom/google/glass/util/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/au;->c:Lcom/google/glass/util/g;

    new-instance v0, Lcom/google/glass/util/av;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/av;-><init>(Lcom/google/glass/util/au;Landroid/content/Context;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/google/glass/util/au;->d:Lcom/google/glass/util/aw;

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/glass/util/u;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/glass/util/au;->b(Lcom/google/glass/util/u;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/au;->d:Lcom/google/glass/util/aw;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/aw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/glass/util/u;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/google/glass/util/au;->d:Lcom/google/glass/util/aw;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/aw;->b(Lcom/google/glass/util/u;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/au;->c:Lcom/google/glass/util/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/google/glass/util/g;->a(Ljava/lang/String;ZLcom/google/glass/util/u;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "ipb"

    return-object v0
.end method

.method public final j()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/util/au;->d:Lcom/google/glass/util/aw;

    invoke-virtual {v1}, Lcom/google/glass/util/aw;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/au;->c:Lcom/google/glass/util/g;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/glass/util/g;->a(Ljava/lang/String;ZLcom/google/glass/util/u;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/au;->d:Lcom/google/glass/util/aw;

    invoke-virtual {v0}, Lcom/google/glass/util/aw;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/util/au;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
