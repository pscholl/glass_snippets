.class Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;
.super Landroid/os/AsyncTask;
.source "UserFeedbackReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublishBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private height:I

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter "imageView"

    .prologue
    const/4 v0, 0x0

    .line 458
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 455
    iput v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->height:I

    .line 456
    iput v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->width:I

    .line 459
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 460
    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->height:I

    .line 461
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->width:I

    .line 462
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "params"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v1, v1, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->imageBytes:[B

    iget v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->width:I

    iget v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->height:I

    #calls: Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->decodeSampledBitmap([BII)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->access$000(Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;[BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 453
    check-cast p1, [Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->doInBackground([Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 474
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 478
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 453
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
