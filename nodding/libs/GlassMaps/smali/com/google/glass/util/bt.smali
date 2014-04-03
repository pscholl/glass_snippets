.class final Lcom/google/glass/util/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/util/CachedFilesManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/glass/util/CachedFilesManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/bt;->a:Lcom/google/glass/util/CachedFilesManager;

    iput-object p2, p0, Lcom/google/glass/util/bt;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/util/bt;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/util/bt;->a:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->SCREENSHOT:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/bt;->b:Ljava/lang/String;

    new-instance v3, Lcom/google/glass/util/bu;

    invoke-direct {v3, p0}, Lcom/google/glass/util/bu;-><init>(Lcom/google/glass/util/bt;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/aj;)Z

    return-void
.end method
