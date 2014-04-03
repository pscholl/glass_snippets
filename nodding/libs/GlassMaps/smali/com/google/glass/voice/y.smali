.class final Lcom/google/glass/voice/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2

    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/glass/voice/VoiceCommand;
    .locals 1

    new-array v0, p0, [Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/glass/voice/y;->a(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/glass/voice/y;->a(I)[Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method
