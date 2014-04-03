.class public Lcom/google/glass/util/BitmapDecodingTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "BitmapDecodingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final defaultImageResource:I

.field private final height:I

.field private final imageData:[B

.field private final pictureView:Landroid/widget/ImageView;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BitmapDecodingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BLandroid/widget/ImageView;III)V
    .locals 0
    .parameter "context"
    .parameter "imageData"
    .parameter "pictureView"
    .parameter "defaultImageResource"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/google/glass/util/BitmapDecodingTask;->imageData:[B

    .line 43
    iput-object p3, p0, Lcom/google/glass/util/BitmapDecodingTask;->pictureView:Landroid/widget/ImageView;

    .line 44
    iput p4, p0, Lcom/google/glass/util/BitmapDecodingTask;->defaultImageResource:I

    .line 46
    iput p5, p0, Lcom/google/glass/util/BitmapDecodingTask;->width:I

    .line 47
    iput p6, p0, Lcom/google/glass/util/BitmapDecodingTask;->height:I

    .line 48
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/BitmapDecodingTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    iget-object v0, p0, Lcom/google/glass/util/BitmapDecodingTask;->pictureView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/util/BitmapDecodingTask;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BitmapDecodingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "ei"

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "isCancelled"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/glass/util/BitmapDecodingTask;->imageData:[B

    if-nez v1, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    .line 68
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    iget v1, p0, Lcom/google/glass/util/BitmapDecodingTask;->width:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 70
    iget v1, p0, Lcom/google/glass/util/BitmapDecodingTask;->height:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 72
    iget-object v1, p0, Lcom/google/glass/util/BitmapDecodingTask;->imageData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/util/BitmapDecodingTask;->imageData:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BitmapDecodingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/util/BitmapDecodingTask;->pictureView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/glass/util/BitmapDecodingTask;->defaultImageResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/util/BitmapDecodingTask;->pictureView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/util/BitmapDecodingTask;->showView(Landroid/view/View;Z)V

    .line 59
    return-void
.end method
