.class public Lcom/google/android/libraries/barhopper/Barcode;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:[Landroid/graphics/Point;

.field public f:Lcom/google/android/libraries/barhopper/Barcode$Email;

.field public g:Lcom/google/android/libraries/barhopper/Barcode$Phone;

.field public h:Lcom/google/android/libraries/barhopper/Barcode$Sms;

.field public i:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

.field public j:Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

.field public k:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

.field public l:Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

.field public m:Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/barhopper/a;

    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/a;-><init>()V

    sput-object v0, Lcom/google/android/libraries/barhopper/Barcode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->d:I

    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->e:[Landroid/graphics/Point;

    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$Email;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$Email;

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->f:Lcom/google/android/libraries/barhopper/Barcode$Email;

    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$Phone;

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->g:Lcom/google/android/libraries/barhopper/Barcode$Phone;

    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$Sms;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$Sms;

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->h:Lcom/google/android/libraries/barhopper/Barcode$Sms;

    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->i:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->j:Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->k:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->l:Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    const-class v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    iput-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->m:Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/barhopper/Barcode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->e:[Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->f:Lcom/google/android/libraries/barhopper/Barcode$Email;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->g:Lcom/google/android/libraries/barhopper/Barcode$Phone;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->h:Lcom/google/android/libraries/barhopper/Barcode$Sms;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->i:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->j:Lcom/google/android/libraries/barhopper/Barcode$UrlBookmark;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->k:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->l:Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->m:Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
