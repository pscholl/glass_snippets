.class public abstract Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;
.super Landroid/os/Binder;
.source "IVoiceInputCallback.java"

# interfaces
.implements Lcom/google/glass/voice/network/IVoiceInputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/IVoiceInputCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/IVoiceInputCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.voice.network.IVoiceInputCallback"

.field static final TRANSACTION_getTag:I = 0xe

.field static final TRANSACTION_onActionResponse:I = 0xc

.field static final TRANSACTION_onError:I = 0xd

.field static final TRANSACTION_onHtmlAnswerCardResult:I = 0xa

.field static final TRANSACTION_onRecognitionResult:I = 0x9

.field static final TRANSACTION_onSoundSearchResult:I = 0xb

.field static final TRANSACTION_setSpeechLevelSource:I = 0x7

.field static final TRANSACTION_showDone:I = 0x6

.field static final TRANSACTION_showListening:I = 0x1

.field static final TRANSACTION_showMusicDetected:I = 0x5

.field static final TRANSACTION_showNoSpeechDetected:I = 0x4

.field static final TRANSACTION_showRecognizing:I = 0x3

.field static final TRANSACTION_showRecording:I = 0x2

.field static final TRANSACTION_updateRecognizedText:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/network/IVoiceInputCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/google/glass/voice/network/IVoiceInputCallback;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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
    const/4 v3, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 48
    :sswitch_0
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->showListening()V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    :sswitch_2
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->showRecording()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->showRecognizing()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    :sswitch_4
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->showNoSpeechDetected()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    :sswitch_5
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->showMusicDetected()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    :sswitch_6
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->showDone()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    :sswitch_7
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/network/ISpeechLevelSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/network/ISpeechLevelSource;

    move-result-object v0

    .line 98
    .local v0, _arg0:Lcom/google/glass/voice/network/ISpeechLevelSource;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->setSpeechLevelSource(Lcom/google/glass/voice/network/ISpeechLevelSource;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0           #_arg0:Lcom/google/glass/voice/network/ISpeechLevelSource;
    :sswitch_8
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 113
    .local v0, _arg0:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 119
    .local v1, _arg1:Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 110
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v1           #_arg1:Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;
    goto :goto_1

    .line 117
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Ljava/lang/CharSequence;
    goto :goto_2

    .line 125
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v1           #_arg1:Ljava/lang/CharSequence;
    :sswitch_9
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 134
    .restart local v0       #_arg0:Ljava/lang/CharSequence;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 135
    .local v1, _arg1:F
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->onRecognitionResult(Ljava/lang/CharSequence;F)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v1           #_arg1:F
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;
    goto :goto_3

    .line 141
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    :sswitch_a
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 150
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_b
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 153
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->onSoundSearchResult([B)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 159
    .end local v0           #_arg0:[B
    :sswitch_c
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 162
    .restart local v0       #_arg0:[B
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->onActionResponse([B)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    .end local v0           #_arg0:[B
    :sswitch_d
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    sget-object v4, Lcom/google/glass/voice/network/SpeechException;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/SpeechException;

    .line 176
    .local v0, _arg0:Lcom/google/glass/voice/network/SpeechException;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 174
    .end local v0           #_arg0:Lcom/google/glass/voice/network/SpeechException;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/voice/network/SpeechException;
    goto :goto_4

    .line 182
    .end local v0           #_arg0:Lcom/google/glass/voice/network/SpeechException;
    :sswitch_e
    const-string v4, "com.google.glass.voice.network.IVoiceInputCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
