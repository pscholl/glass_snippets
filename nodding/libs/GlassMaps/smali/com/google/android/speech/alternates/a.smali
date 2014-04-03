.class final Lcom/google/android/speech/alternates/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/speech/alternates/CorrectableString;
    .locals 1

    invoke-static {p0}, Lcom/google/android/speech/alternates/CorrectableString;->a(Landroid/os/Parcel;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)[Lcom/google/android/speech/alternates/CorrectableString;
    .locals 1

    new-array v0, p0, [Lcom/google/android/speech/alternates/CorrectableString;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/android/speech/alternates/a;->a(Landroid/os/Parcel;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/android/speech/alternates/a;->a(I)[Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    return-object v0
.end method
