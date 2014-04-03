.class final Lcom/google/android/libraries/barhopper/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/a;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;
    .locals 1

    new-array v0, p0, [Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/android/libraries/barhopper/e;->a(Landroid/os/Parcel;)Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/android/libraries/barhopper/e;->a(I)[Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    move-result-object v0

    return-object v0
.end method
