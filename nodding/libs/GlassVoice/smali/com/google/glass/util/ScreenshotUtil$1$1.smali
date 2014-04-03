.class Lcom/google/glass/util/ScreenshotUtil$1$1;
.super Ljava/lang/Object;
.source "ScreenshotUtil.java"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/ScreenshotUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/ScreenshotUtil$1;


# direct methods
.method constructor <init>(Lcom/google/glass/util/ScreenshotUtil$1;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/glass/util/ScreenshotUtil$1$1;->this$0:Lcom/google/glass/util/ScreenshotUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/util/ScreenshotUtil$1$1;->this$0:Lcom/google/glass/util/ScreenshotUtil$1;

    iget-object v0, v0, Lcom/google/glass/util/ScreenshotUtil$1;->val$screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "os"

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/google/glass/util/ScreenshotUtil$1$1;->this$0:Lcom/google/glass/util/ScreenshotUtil$1;

    iget-object v0, v0, Lcom/google/glass/util/ScreenshotUtil$1;->val$screenshot:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/google/glass/util/ScreenshotUtil;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to compress screenshot."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method
