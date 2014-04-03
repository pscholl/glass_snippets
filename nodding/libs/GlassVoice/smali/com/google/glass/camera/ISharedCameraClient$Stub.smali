.class public abstract Lcom/google/glass/camera/ISharedCameraClient$Stub;
.super Landroid/os/Binder;
.source "ISharedCameraClient.java"

# interfaces
.implements Lcom/google/glass/camera/ISharedCameraClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/ISharedCameraClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/ISharedCameraClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.camera.ISharedCameraClient"

.field static final TRANSACTION_dispatchCameraAcquired:I = 0xb

.field static final TRANSACTION_dispatchCameraReleased:I = 0xc

.field static final TRANSACTION_dispatchCameraShutter:I = 0x7

.field static final TRANSACTION_dispatchError:I = 0x11

.field static final TRANSACTION_dispatchMomentRecorded:I = 0xa

.field static final TRANSACTION_dispatchPictureSaved:I = 0x9

.field static final TRANSACTION_dispatchPictureTaken:I = 0x8

.field static final TRANSACTION_dispatchPreviewFrame:I = 0x6

.field static final TRANSACTION_dispatchStartPreview:I = 0xd

.field static final TRANSACTION_dispatchStartRecording:I = 0xf

.field static final TRANSACTION_dispatchStopPreview:I = 0xe

.field static final TRANSACTION_dispatchStopRecording:I = 0x10

.field static final TRANSACTION_getPreviewSurface:I = 0x15

.field static final TRANSACTION_getTag:I = 0x16

.field static final TRANSACTION_isViewfinderValid:I = 0x5

.field static final TRANSACTION_onPreviewFrame:I = 0x14

.field static final TRANSACTION_onStartRecording:I = 0x12

.field static final TRANSACTION_onStopRecording:I = 0x13

.field static final TRANSACTION_shouldUseInvisiblePreview:I = 0x1

.field static final TRANSACTION_startUsingViewfinder:I = 0x3

.field static final TRANSACTION_stopUsingViewfinder:I = 0x4

.field static final TRANSACTION_waitForPreviewSurface:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/camera/ISharedCameraClient;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.google.glass.camera.ISharedCameraClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/camera/ISharedCameraClient;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/google/glass/camera/ISharedCameraClient;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/google/glass/camera/ISharedCameraClient$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 278
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v7, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->shouldUseInvisiblePreview()Z

    move-result v4

    .line 50
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v4           #_result:Z
    :sswitch_2
    const-string v7, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 59
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->waitForPreviewSurface(J)Z

    move-result v4

    .line 60
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:J
    .end local v4           #_result:Z
    :sswitch_3
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->startUsingViewfinder()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    :sswitch_4
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->stopUsingViewfinder()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    :sswitch_5
    const-string v7, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->isViewfinderValid()Z

    move-result v4

    .line 82
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v4           #_result:Z
    :sswitch_6
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 92
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 93
    .local v2, _arg1:J
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchPreviewFrame([BJ)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:J
    :sswitch_7
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchCameraShutter()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 106
    :sswitch_8
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    sget-object v5, Lcom/google/glass/camera/Picture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/Picture;

    .line 114
    .local v0, _arg0:Lcom/google/glass/camera/Picture;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchPictureTaken(Lcom/google/glass/camera/Picture;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:Lcom/google/glass/camera/Picture;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/camera/Picture;
    goto :goto_1

    .line 120
    .end local v0           #_arg0:Lcom/google/glass/camera/Picture;
    :sswitch_9
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 123
    sget-object v5, Lcom/google/glass/camera/Picture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/Picture;

    .line 128
    .restart local v0       #_arg0:Lcom/google/glass/camera/Picture;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchPictureSaved(Lcom/google/glass/camera/Picture;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:Lcom/google/glass/camera/Picture;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/camera/Picture;
    goto :goto_2

    .line 134
    .end local v0           #_arg0:Lcom/google/glass/camera/Picture;
    :sswitch_a
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 137
    sget-object v5, Lcom/google/glass/camera/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/Video;

    .line 142
    .local v0, _arg0:Lcom/google/glass/camera/Video;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchMomentRecorded(Lcom/google/glass/camera/Video;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:Lcom/google/glass/camera/Video;
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/camera/Video;
    goto :goto_3

    .line 148
    .end local v0           #_arg0:Lcom/google/glass/camera/Video;
    :sswitch_b
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchCameraAcquired()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 155
    :sswitch_c
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchCameraReleased()V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    :sswitch_d
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchStartPreview()V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 169
    :sswitch_e
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchStopPreview()V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 176
    :sswitch_f
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 179
    sget-object v5, Lcom/google/glass/camera/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/Video;

    .line 184
    .restart local v0       #_arg0:Lcom/google/glass/camera/Video;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchStartRecording(Lcom/google/glass/camera/Video;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 182
    .end local v0           #_arg0:Lcom/google/glass/camera/Video;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/camera/Video;
    goto :goto_4

    .line 190
    .end local v0           #_arg0:Lcom/google/glass/camera/Video;
    :sswitch_10
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 193
    sget-object v5, Lcom/google/glass/camera/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/Video;

    .line 198
    .restart local v0       #_arg0:Lcom/google/glass/camera/Video;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchStopRecording(Lcom/google/glass/camera/Video;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 196
    .end local v0           #_arg0:Lcom/google/glass/camera/Video;
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/camera/Video;
    goto :goto_5

    .line 204
    .end local v0           #_arg0:Lcom/google/glass/camera/Video;
    :sswitch_11
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 207
    sget-object v5, Lcom/google/glass/util/remote/ParcelableException;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/remote/ParcelableException;

    .line 212
    .local v0, _arg0:Lcom/google/glass/util/remote/ParcelableException;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->dispatchError(Lcom/google/glass/util/remote/ParcelableException;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 210
    .end local v0           #_arg0:Lcom/google/glass/util/remote/ParcelableException;
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/util/remote/ParcelableException;
    goto :goto_6

    .line 218
    .end local v0           #_arg0:Lcom/google/glass/util/remote/ParcelableException;
    :sswitch_12
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 221
    sget-object v5, Lcom/google/glass/camera/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/Video;

    .line 226
    .local v0, _arg0:Lcom/google/glass/camera/Video;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->onStartRecording(Lcom/google/glass/camera/Video;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 224
    .end local v0           #_arg0:Lcom/google/glass/camera/Video;
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/camera/Video;
    goto :goto_7

    .line 232
    .end local v0           #_arg0:Lcom/google/glass/camera/Video;
    :sswitch_13
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 235
    sget-object v5, Lcom/google/glass/camera/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/Video;

    .line 240
    .restart local v0       #_arg0:Lcom/google/glass/camera/Video;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->onStopRecording(Lcom/google/glass/camera/Video;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 238
    .end local v0           #_arg0:Lcom/google/glass/camera/Video;
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/camera/Video;
    goto :goto_8

    .line 246
    .end local v0           #_arg0:Lcom/google/glass/camera/Video;
    :sswitch_14
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 250
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 251
    .restart local v2       #_arg1:J
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->onPreviewFrame([BJ)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 257
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:J
    :sswitch_15
    const-string v7, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v4

    .line 259
    .local v4, _result:Landroid/view/Surface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v4, :cond_b

    .line 261
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    invoke-virtual {v4, p3, v6}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 265
    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v4           #_result:Landroid/view/Surface;
    :sswitch_16
    const-string v5, "com.google.glass.camera.ISharedCameraClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
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
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
