.class public interface abstract Lcom/google/glass/camera/ISharedCameraService;
.super Ljava/lang/Object;
.source "ISharedCameraService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/ISharedCameraService$Stub;
    }
.end annotation


# virtual methods
.method public abstract recordMoment(Lcom/google/glass/camera/ISharedCameraClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startPreview(Lcom/google/glass/camera/ISharedCameraClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startRecording(Lcom/google/glass/camera/ISharedCameraClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopPreview(Lcom/google/glass/camera/ISharedCameraClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopRecording(Lcom/google/glass/camera/ISharedCameraClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract takePicture(Lcom/google/glass/camera/ISharedCameraClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
