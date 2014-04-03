.class final Lcom/google/glass/util/ak;
.super Lcom/google/glass/util/ap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/util/ap;-><init>()V

    return-void
.end method

.method private static b([B)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final synthetic a([B)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/glass/util/ak;->b([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
