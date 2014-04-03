.class public abstract Lcom/google/glass/camera/ISharedCameraService$Stub;
.super Landroid/os/Binder;
.source "ISharedCameraService.java"

# interfaces
.implements Lcom/google/glass/camera/ISharedCameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/ISharedCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/ISharedCameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.camera.ISharedCameraService"

.field static final TRANSACTION_recordMoment:I = 0x2

.field static final TRANSACTION_startPreview:I = 0x3

.field static final TRANSACTION_startRecording:I = 0x5

.field static final TRANSACTION_stopPreview:I = 0x4

.field static final TRANSACTION_stopRecording:I = 0x6

.field static final TRANSACTION_takePicture:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.google.glass.camera.ISharedCameraService"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/camera/ISharedCameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/camera/ISharedCameraService;
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
    const-string v1, "com.google.glass.camera.ISharedCameraService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/camera/ISharedCameraService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/google/glass/camera/ISharedCameraService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/google/glass/camera/ISharedCameraService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/glass/camera/ISharedCameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v2, "com.google.glass.camera.ISharedCameraService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v2, "com.google.glass.camera.ISharedCameraService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/camera/ISharedCameraClient;

    move-result-object v0

    .line 51
    .local v0, _arg0:Lcom/google/glass/camera/ISharedCameraClient;
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraService$Stub;->takePicture(Lcom/google/glass/camera/ISharedCameraClient;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Lcom/google/glass/camera/ISharedCameraClient;
    :sswitch_2
    const-string v2, "com.google.glass.camera.ISharedCameraService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/camera/ISharedCameraClient;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Lcom/google/glass/camera/ISharedCameraClient;
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraService$Stub;->recordMoment(Lcom/google/glass/camera/ISharedCameraClient;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:Lcom/google/glass/camera/ISharedCameraClient;
    :sswitch_3
    const-string v2, "com.google.glass.camera.ISharedCameraService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/camera/ISharedCameraClient;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Lcom/google/glass/camera/ISharedCameraClient;
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraService$Stub;->startPreview(Lcom/google/glass/camera/ISharedCameraClient;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:Lcom/google/glass/camera/ISharedCameraClient;
    :sswitch_4
    const-string v2, "com.google.glass.camera.ISharedCameraService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/camera/ISharedCameraClient;

    move-result-object v0

    .line 78
    .restart local v0       #_arg0:Lcom/google/glass/camera/ISharedCameraClient;
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraService$Stub;->stopPreview(Lcom/google/glass/camera/ISharedCameraClient;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:Lcom/google/glass/camera/ISharedCameraClient;
    :sswitch_5
    const-string v2, "com.google.glass.camera.ISharedCameraService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/camera/ISharedCameraClient;

    move-result-object v0

    .line 87
    .restart local v0       #_arg0:Lcom/google/glass/camera/ISharedCameraClient;
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraService$Stub;->startRecording(Lcom/google/glass/camera/ISharedCameraClient;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:Lcom/google/glass/camera/ISharedCameraClient;
    :sswitch_6
    const-string v2, "com.google.glass.camera.ISharedCameraService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/camera/ISharedCameraClient;

    move-result-object v0

    .line 96
    .restart local v0       #_arg0:Lcom/google/glass/camera/ISharedCameraClient;
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ISharedCameraService$Stub;->stopRecording(Lcom/google/glass/camera/ISharedCameraClient;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
