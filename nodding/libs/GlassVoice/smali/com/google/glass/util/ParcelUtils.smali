.class public Lcom/google/glass/util/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBitmapFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "p"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/glass/util/ParcelUtils;->readByteArrayFromParcel(Landroid/os/Parcel;)[B

    move-result-object v0

    .line 58
    .local v0, bytes:[B
    if-nez v0, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 62
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static readByteArrayFromParcel(Landroid/os/Parcel;)[B
    .locals 2
    .parameter "p"

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 41
    .local v1, length:I
    if-lez v1, :cond_0

    .line 42
    new-array v0, v1, [B

    .line 43
    .local v0, ba:[B
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 46
    .end local v0           #ba:[B
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 2
    .parameter "p"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeBitmapToParcel(Landroid/os/Parcel;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "p"
    .parameter "b"

    .prologue
    .line 51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .local v0, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/glass/util/ParcelUtils;->writeByteArrayToParcel(Landroid/os/Parcel;[B)V

    .line 54
    return-void
.end method

.method public static writeByteArrayToParcel(Landroid/os/Parcel;[B)V
    .locals 2
    .parameter "p"
    .parameter "ba"

    .prologue
    const/4 v1, 0x0

    .line 31
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 32
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    goto :goto_0
.end method

.method public static writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 1
    .parameter "p"
    .parameter "parcelable"
    .parameter "flags"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method

.method public static writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1
    .parameter "p"
    .parameter "s"

    .prologue
    .line 15
    if-nez p1, :cond_0

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    :goto_0
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
