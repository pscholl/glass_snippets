.class final Lcom/google/glass/util/remote/ParcelableException$1;
.super Ljava/lang/Object;
.source "ParcelableException.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/remote/ParcelableException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/glass/util/remote/ParcelableException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/util/remote/ParcelableException;
    .locals 2
    .parameter "source"

    .prologue
    .line 45
    new-instance v0, Lcom/google/glass/util/remote/ParcelableException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/glass/util/remote/ParcelableException;-><init>(Landroid/os/Parcel;Lcom/google/glass/util/remote/ParcelableException$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/glass/util/remote/ParcelableException$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/util/remote/ParcelableException;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/util/remote/ParcelableException;
    .locals 1
    .parameter "size"

    .prologue
    .line 50
    new-array v0, p1, [Lcom/google/glass/util/remote/ParcelableException;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/glass/util/remote/ParcelableException$1;->newArray(I)[Lcom/google/glass/util/remote/ParcelableException;

    move-result-object v0

    return-object v0
.end method
