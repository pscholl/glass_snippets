.class Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;
.super Ljava/lang/Object;
.source "ParcelableImageSpannable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/ParcelableImageSpannable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageSpanData"
.end annotation


# instance fields
.field bitmapIndex:I

.field end:I

.field spanFlags:I

.field start:I

.field verticalAlignment:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "bitmapIndex"
    .parameter "start"
    .parameter "end"
    .parameter "verticalAlignment"
    .parameter "spanFlags"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->bitmapIndex:I

    .line 55
    iput p2, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->start:I

    .line 56
    iput p3, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->end:I

    .line 57
    iput p4, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->verticalAlignment:I

    .line 58
    iput p5, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->spanFlags:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->bitmapIndex:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->start:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->end:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->verticalAlignment:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->spanFlags:I

    .line 67
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 70
    iget v0, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->bitmapIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->end:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->verticalAlignment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->spanFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
