.class public interface abstract Lcom/google/glass/util/remote/RemoteCallbackOperation;
.super Ljava/lang/Object;
.source "RemoteCallbackOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Callback::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract doOperation(Landroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
