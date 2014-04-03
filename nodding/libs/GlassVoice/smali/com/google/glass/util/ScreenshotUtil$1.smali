.class final Lcom/google/glass/util/ScreenshotUtil$1;
.super Ljava/lang/Object;
.source "ScreenshotUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/ScreenshotUtil;->captureAndSaveScreenshot(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field final synthetic val$realFileName:Ljava/lang/String;

.field final synthetic val$screenshot:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/glass/util/CachedFilesManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/util/ScreenshotUtil$1;->val$cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    iput-object p2, p0, Lcom/google/glass/util/ScreenshotUtil$1;->val$realFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/util/ScreenshotUtil$1;->val$screenshot:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/util/ScreenshotUtil$1;->val$cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->SCREENSHOT:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/ScreenshotUtil$1;->val$realFileName:Ljava/lang/String;

    new-instance v3, Lcom/google/glass/util/ScreenshotUtil$1$1;

    invoke-direct {v3, p0}, Lcom/google/glass/util/ScreenshotUtil$1$1;-><init>(Lcom/google/glass/util/ScreenshotUtil$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 81
    return-void
.end method
