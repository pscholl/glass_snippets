.class public final Lcom/google/glass/voice/network/SpeechException;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Lcom/google/glass/voice/network/SpeechException$Type;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/glass/voice/network/g;

    invoke-direct {v0}, Lcom/google/glass/voice/network/g;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/SpeechException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->a:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->c:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/SpeechException$Type;->values()[Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/voice/network/SpeechException;->a:Lcom/google/glass/voice/network/SpeechException$Type;

    iput-object p2, p0, Lcom/google/glass/voice/network/SpeechException;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/voice/network/SpeechException;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->a:Lcom/google/glass/voice/network/SpeechException$Type;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/glass/voice/network/SpeechException;

    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/voice/network/SpeechException;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/voice/network/SpeechException;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/glass/voice/network/SpeechException;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/voice/network/SpeechException;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->a:Lcom/google/glass/voice/network/SpeechException$Type;

    iget-object v3, p1, Lcom/google/glass/voice/network/SpeechException;->a:Lcom/google/glass/voice/network/SpeechException$Type;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechException;->a:Lcom/google/glass/voice/network/SpeechException$Type;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/network/SpeechException;->a:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v1}, Lcom/google/glass/voice/network/SpeechException$Type;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->a:Lcom/google/glass/voice/network/SpeechException$Type;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->a:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/SpeechException$Type;->ordinal()I

    move-result v0

    goto :goto_0
.end method
