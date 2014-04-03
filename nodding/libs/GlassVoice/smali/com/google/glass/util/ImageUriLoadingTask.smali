.class public Lcom/google/glass/util/ImageUriLoadingTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "ImageUriLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private imageUri:Landroid/net/Uri;

.field private imageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ImageUriLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "context"
    .parameter "imageUri"
    .parameter "imageView"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/google/glass/util/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    .line 33
    iput-object p3, p0, Lcom/google/glass/util/ImageUriLoadingTask;->imageView:Landroid/widget/ImageView;

    .line 34
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/glass/util/ImageUriLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/ImageUriLoadingTask;->bindContent(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "iuri"

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "isCancelled"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1}, Lcom/google/glass/util/Condition;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    sget-object v3, Lcom/google/glass/util/ImageUriLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Uri load for %s cancelled"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/util/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-object v2

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/google/glass/util/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/util/ImageUriLoadingTask;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/util/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/glass/util/ImageUriLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unable to open image uri: %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/util/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    sget-object v3, Lcom/google/glass/util/ImageUriLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unsupported uri scheme: %s from imageUri: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    iget-object v6, p0, Lcom/google/glass/util/ImageUriLoadingTask;->imageUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/glass/util/ImageUriLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
