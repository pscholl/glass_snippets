.class final Lcom/google/android/maps/driveabout/store/bc;
.super Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/store/bb;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/bb;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bc;->a:Lcom/google/android/maps/driveabout/store/bb;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/maps/driveabout/store/bc;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/store/bc;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/bc;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/bc;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/bc;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
