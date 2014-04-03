.class final Lcom/google/glass/voice/VoiceCommand$1;
.super Ljava/lang/Object;
.source "VoiceCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceCommand;
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
        "Lcom/google/glass/voice/VoiceCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2
    .parameter "in"

    .prologue
    .line 168
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceCommand$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "size"

    .prologue
    .line 173
    new-array v0, p1, [Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceCommand$1;->newArray(I)[Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method
