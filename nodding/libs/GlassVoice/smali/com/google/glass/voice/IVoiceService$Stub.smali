.class public abstract Lcom/google/glass/voice/IVoiceService$Stub;
.super Landroid/os/Binder;
.source "IVoiceService.java"

# interfaces
.implements Lcom/google/glass/voice/IVoiceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/IVoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/IVoiceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.voice.IVoiceService"

.field static final TRANSACTION_addListener:I = 0x1

.field static final TRANSACTION_addVoiceInputCallback:I = 0x5

.field static final TRANSACTION_endpointNetworkRecognizer:I = 0x7

.field static final TRANSACTION_getConfig:I = 0x4

.field static final TRANSACTION_removeListener:I = 0x2

.field static final TRANSACTION_removeVoiceInputCallback:I = 0x6

.field static final TRANSACTION_setConfig:I = 0x3

.field static final TRANSACTION_setWantAudioData:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.google.glass.voice.IVoiceService"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/voice/IVoiceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.google.glass.voice.IVoiceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/voice/IVoiceService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/google/glass/voice/IVoiceService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/google/glass/voice/IVoiceService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/glass/voice/IVoiceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v4, "com.google.glass.voice.IVoiceService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.google.glass.voice.IVoiceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceServiceListener;

    move-result-object v0

    .line 54
    .local v0, _arg0:Lcom/google/glass/voice/IVoiceServiceListener;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/IVoiceService$Stub;->addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Lcom/google/glass/voice/IVoiceServiceListener;
    :sswitch_2
    const-string v4, "com.google.glass.voice.IVoiceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceServiceListener;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Lcom/google/glass/voice/IVoiceServiceListener;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/IVoiceService$Stub;->removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:Lcom/google/glass/voice/IVoiceServiceListener;
    :sswitch_3
    const-string v4, "com.google.glass.voice.IVoiceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 78
    .local v0, _arg0:Lcom/google/glass/voice/VoiceConfig;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 79
    .local v1, _arg1:Z
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/IVoiceService$Stub;->setConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:Lcom/google/glass/voice/VoiceConfig;
    .end local v1           #_arg1:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/voice/VoiceConfig;
    goto :goto_1

    .line 85
    .end local v0           #_arg0:Lcom/google/glass/voice/VoiceConfig;
    :sswitch_4
    const-string v4, "com.google.glass.voice.IVoiceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/google/glass/voice/IVoiceService$Stub;->getConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    .line 87
    .local v2, _result:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v2, :cond_2

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v2, p3, v3}, Lcom/google/glass/voice/VoiceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v2           #_result:Lcom/google/glass/voice/VoiceConfig;
    :sswitch_5
    const-string v4, "com.google.glass.voice.IVoiceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/network/IVoiceInputCallback;

    move-result-object v0

    .line 102
    .local v0, _arg0:Lcom/google/glass/voice/network/IVoiceInputCallback;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/IVoiceService$Stub;->addVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 108
    .end local v0           #_arg0:Lcom/google/glass/voice/network/IVoiceInputCallback;
    :sswitch_6
    const-string v4, "com.google.glass.voice.IVoiceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/network/IVoiceInputCallback;

    move-result-object v0

    .line 111
    .restart local v0       #_arg0:Lcom/google/glass/voice/network/IVoiceInputCallback;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/IVoiceService$Stub;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0           #_arg0:Lcom/google/glass/voice/network/IVoiceInputCallback;
    :sswitch_7
    const-string v4, "com.google.glass.voice.IVoiceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/google/glass/voice/IVoiceService$Stub;->endpointNetworkRecognizer()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 124
    :sswitch_8
    const-string v4, "com.google.glass.voice.IVoiceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 127
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/IVoiceService$Stub;->setWantAudioData(Z)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_3
    move v0, v1

    .line 126
    goto :goto_2

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
