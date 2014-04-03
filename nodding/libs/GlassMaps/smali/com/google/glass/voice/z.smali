.class final Lcom/google/glass/voice/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceConfig;
    .locals 14

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/voice/VoiceConfig$Type;->values()[Lcom/google/glass/voice/VoiceConfig$Type;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    array-length v12, v10

    move v8, v9

    :goto_1
    if-ge v8, v12, :cond_1

    aget-object v0, v10, v8

    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->a()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_0
    move v3, v9

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    array-length v0, v5

    if-nez v0, :cond_2

    array-length v0, v6

    if-nez v0, :cond_2

    const/high16 v0, -0x8000

    if-ne v7, v0, :cond_2

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    :goto_2
    return-object v0

    :cond_2
    new-array v0, v9, [Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/glass/voice/VoiceConfig;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2
.end method

.method private static a(I)[Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    new-array v0, p0, [Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/glass/voice/z;->a(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/glass/voice/z;->a(I)[Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method
