.class Lcom/x/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;
.super Lcom/x/google/common/graphics/android/AndroidImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/graphics/android/AndroidAshmemImageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidAshmemImage"
.end annotation


# static fields
.field private static final options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/x/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/x/google/common/graphics/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getNumBytesUsed()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
