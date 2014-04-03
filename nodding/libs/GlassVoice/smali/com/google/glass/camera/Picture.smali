.class public Lcom/google/glass/camera/Picture;
.super Ljava/lang/Object;
.source "Picture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/camera/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_FALSE:I = 0x0

.field private static final PARCEL_TRUE:I = 0x1


# instance fields
.field protected captureTimeMillis:J

.field protected filePath:Ljava/lang/String;

.field protected isFinalPictureSaved:Z

.field protected isGcam:Z

.field protected isGcamHqFallback:Z

.field protected jpegTimeMillis:J

.field protected location:Landroid/location/Location;

.field protected prepareCameraSavingsMillis:J

.field protected requestTimeMillis:J

.field protected shutterTimeMillis:J

.field protected thumbnail:Landroid/graphics/Bitmap;

.field protected thumbnailTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/glass/camera/Picture$1;

    invoke-direct {v0}, Lcom/google/glass/camera/Picture$1;-><init>()V

    sput-object v0, Lcom/google/glass/camera/Picture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->requestTimeMillis:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->shutterTimeMillis:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->prepareCameraSavingsMillis:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/glass/camera/Picture;->isGcamHqFallback:Z

    .line 89
    const-class v0, Lcom/google/glass/camera/Picture;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    .line 91
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move v1, v2

    .line 88
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public getCaptureTime()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getJpegTime()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getPrepareCameraSavings()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->prepareCameraSavingsMillis:J

    return-wide v0
.end method

.method public getRequestTime()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->requestTimeMillis:J

    return-wide v0
.end method

.method public getShutterTime()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->shutterTimeMillis:J

    return-wide v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getThumbnailTime()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    return-wide v0
.end method

.method public isFinalPictureSaved()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isFinalPictureSaved:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->requestTimeMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->shutterTimeMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->prepareCameraSavingsMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcamHqFallback:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->location:Landroid/location/Location;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    return-void

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    :cond_1
    move v1, v2

    .line 102
    goto :goto_1
.end method
