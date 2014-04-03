.class public Lcom/google/glass/util/GlasswareIconLoadingTask;
.super Lcom/google/glass/util/al;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private final g:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/util/GlasswareIconLoadingTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/h;Landroid/util/LruCache;Lcom/google/glass/util/o;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V
    .locals 10
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    #getter for: Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->resourceType:I
    invoke-static/range {p8 .. p8}, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->access$000(Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;)I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/util/al;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/h;Landroid/util/LruCache;Lcom/google/glass/util/o;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->g:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V
    .locals 10

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->a()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->b()Lcom/google/glass/net/h;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/GlasswareIconLoadingTask;->e:Landroid/util/LruCache;

    new-instance v5, Lcom/google/glass/util/p;

    invoke-direct {v5}, Lcom/google/glass/util/p;-><init>()V

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/util/GlasswareIconLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/h;Landroid/util/LruCache;Lcom/google/glass/util/o;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->g:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/util/GlasswareIconLoadingTask;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/google/glass/util/GlasswareIconLoadingTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    const-string v0, "gi"

    return-object v0
.end method

.method protected final f()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->g:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask;->a(Landroid/view/View;Z)V

    invoke-virtual {p0, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask;->a(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method protected final g()Lcom/google/glass/util/ap;
    .locals 1

    new-instance v0, Lcom/google/glass/util/ak;

    invoke-direct {v0}, Lcom/google/glass/util/ak;-><init>()V

    return-object v0
.end method
