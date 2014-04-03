.class final Lcom/google/glass/maps/o;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/google/common/util/concurrent/s;

.field final synthetic c:Lcom/google/glass/maps/n;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/n;[BLcom/google/common/util/concurrent/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/o;->c:Lcom/google/glass/maps/n;

    iput-object p2, p0, Lcom/google/glass/maps/o;->a:[B

    iput-object p3, p0, Lcom/google/glass/maps/o;->b:Lcom/google/common/util/concurrent/s;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/o;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/o;->a:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/o;->b:Lcom/google/common/util/concurrent/s;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/s;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/o;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/o;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
