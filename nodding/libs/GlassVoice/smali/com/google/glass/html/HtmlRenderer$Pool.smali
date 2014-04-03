.class Lcom/google/glass/html/HtmlRenderer$Pool;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/html/HtmlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pool"
.end annotation


# instance fields
.field private final availableRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/html/HtmlRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;

.field private final renderCache:Lcom/google/glass/html/HtmlRenderCache;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V
    .locals 1
    .parameter "context"
    .parameter "bitmapFactory"
    .parameter "renderCache"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    .line 126
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->context:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 128
    iput-object p3, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->renderCache:Lcom/google/glass/html/HtmlRenderCache;

    .line 129
    return-void
.end method


# virtual methods
.method declared-synchronized obtainRenderer()Lcom/google/glass/html/HtmlRenderer;
    .locals 5

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/HtmlRenderer;

    .line 138
    .local v0, renderer:Lcom/google/glass/html/HtmlRenderer;
    :goto_0
    const/4 v1, 0x1

    #calls: Lcom/google/glass/html/HtmlRenderer;->setIsAllocated(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/html/HtmlRenderer;->access$100(Lcom/google/glass/html/HtmlRenderer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-object v0

    .line 136
    .end local v0           #renderer:Lcom/google/glass/html/HtmlRenderer;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/glass/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->renderCache:Lcom/google/glass/html/HtmlRenderCache;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;Lcom/google/glass/html/HtmlRenderer$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #renderer:Lcom/google/glass/html/HtmlRenderer;
    goto :goto_0

    .line 133
    .end local v0           #renderer:Lcom/google/glass/html/HtmlRenderer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized releaseRenderer(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    #calls: Lcom/google/glass/html/HtmlRenderer;->setIsAllocated(Z)V
    invoke-static {p1, v0}, Lcom/google/glass/html/HtmlRenderer;->access$100(Lcom/google/glass/html/HtmlRenderer;Z)V

    .line 144
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$Pool;->availableRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :cond_0
    :try_start_1
    #calls: Lcom/google/glass/html/HtmlRenderer;->destroy()V
    invoke-static {p1}, Lcom/google/glass/html/HtmlRenderer;->access$200(Lcom/google/glass/html/HtmlRenderer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
