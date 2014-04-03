.class public final Lcom/google/glass/widget/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/glass/widget/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/widget/p;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/glass/widget/p;->b()V

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p2}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/sound/SoundManager;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->b(Lcom/google/glass/widget/r;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private b(Ljava/lang/CharSequence;)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->b(Lcom/google/glass/widget/r;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/google/glass/widget/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/widget/r;-><init>(Lcom/google/glass/widget/o;)V

    iput-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, v2}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;Z)Z

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/widget/r;->b(Lcom/google/glass/widget/r;Z)Z

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, v2}, Lcom/google/glass/widget/r;->c(Lcom/google/glass/widget/r;Z)Z

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, v2}, Lcom/google/glass/widget/r;->d(Lcom/google/glass/widget/r;Z)Z

    return-void
.end method

.method private c(Ljava/lang/CharSequence;)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->c(Lcom/google/glass/widget/r;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/glass/widget/n;
    .locals 4

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-direct {p0}, Lcom/google/glass/widget/p;->b()V

    new-instance v1, Lcom/google/glass/widget/n;

    iget-object v2, p0, Lcom/google/glass/widget/p;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/glass/widget/n;-><init>(Landroid/content/Context;Lcom/google/glass/widget/r;Lcom/google/glass/widget/o;)V

    return-object v1
.end method

.method public final a(I)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/p;->a(Ljava/lang/CharSequence;)Lcom/google/glass/widget/p;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/sound/SoundManager$SoundId;

    return-object p0
.end method

.method public final a(Lcom/google/glass/widget/q;)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;Lcom/google/glass/widget/q;)Lcom/google/glass/widget/q;

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a(Z)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->a(Lcom/google/glass/widget/r;Z)Z

    return-object p0
.end method

.method public final b(I)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/p;->b(Ljava/lang/CharSequence;)Lcom/google/glass/widget/p;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->b(Lcom/google/glass/widget/r;Z)Z

    return-object p0
.end method

.method public final c(I)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/p;->a(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/p;

    move-result-object v0

    return-object v0
.end method

.method public final c(Z)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->e(Lcom/google/glass/widget/r;Z)Z

    return-object p0
.end method

.method public final d(I)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/p;->c(Ljava/lang/CharSequence;)Lcom/google/glass/widget/p;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->b:Lcom/google/glass/widget/r;

    invoke-static {v0, p1}, Lcom/google/glass/widget/r;->f(Lcom/google/glass/widget/r;Z)Z

    return-object p0
.end method

.method public final e(I)Lcom/google/glass/widget/p;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/p;->b(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/p;

    move-result-object v0

    return-object v0
.end method
