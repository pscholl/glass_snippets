.class public interface abstract Lcom/google/glass/input/InputListener;
.super Ljava/lang/Object;
.source "InputListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/InputListener$DismissAction;
    }
.end annotation


# virtual methods
.method public abstract onCameraButtonPressed()Z
.end method

.method public abstract onConfirm()Z
.end method

.method public abstract onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
.end method

.method public abstract onFingerCountChanged(IZ)Z
.end method

.method public abstract onPrepareSwipe(IFFFFII)Z
.end method

.method public abstract onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
.end method

.method public abstract onVerticalHeadScroll(F)Z
.end method
