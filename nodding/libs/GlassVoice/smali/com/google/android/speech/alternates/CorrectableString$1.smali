.class final Lcom/google/android/speech/alternates/CorrectableString$1;
.super Ljava/lang/Object;
.source "CorrectableString.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/alternates/CorrectableString;
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
        "Lcom/google/android/speech/alternates/CorrectableString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/speech/alternates/CorrectableString;
    .locals 1
    .parameter "in"

    .prologue
    .line 48
    invoke-static {p1}, Lcom/google/android/speech/alternates/CorrectableString;->fromParcel(Landroid/os/Parcel;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/speech/alternates/CorrectableString$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/speech/alternates/CorrectableString;
    .locals 1
    .parameter "size"

    .prologue
    .line 53
    new-array v0, p1, [Lcom/google/android/speech/alternates/CorrectableString;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/speech/alternates/CorrectableString$1;->newArray(I)[Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    return-object v0
.end method
