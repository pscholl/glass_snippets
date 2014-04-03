.class Lcom/google/glass/util/ImageProxyBitmapLoadingTask$1;
.super Lcom/google/glass/util/ImageProxyDownloadTask;
.source "ImageProxyBitmapLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;


# direct methods
.method constructor <init>(Lcom/google/glass/util/ImageProxyBitmapLoadingTask;Landroid/content/Context;Ljava/lang/String;III)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$1;->this$0:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/ImageProxyDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask$1;->bindContent(Ljava/lang/String;)V

    return-void
.end method

.method protected bindContent(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 39
    return-void
.end method

.method protected prepareContent()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
