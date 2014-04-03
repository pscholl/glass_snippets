.class final Lcom/google/userfeedback/android/api/ad;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/userfeedback/android/api/ac;

.field private final b:Ljava/lang/ref/WeakReference;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/ac;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/ad;->a:Lcom/google/userfeedback/android/api/ac;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v0, p0, Lcom/google/userfeedback/android/api/ad;->c:I

    iput v0, p0, Lcom/google/userfeedback/android/api/ad;->d:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ad;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/userfeedback/android/api/ad;->c:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/userfeedback/android/api/ad;->d:I

    return-void
.end method

.method private varargs a([Lcom/google/userfeedback/android/api/ae;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ad;->a:Lcom/google/userfeedback/android/api/ac;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v1, v1, Lcom/google/userfeedback/android/api/ae;->f:[B

    iget v2, p0, Lcom/google/userfeedback/android/api/ad;->d:I

    iget v3, p0, Lcom/google/userfeedback/android/api/ad;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/ac;->a(Lcom/google/userfeedback/android/api/ac;[BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ad;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ad;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/google/userfeedback/android/api/ae;

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/ad;->a([Lcom/google/userfeedback/android/api/ae;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/ad;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
