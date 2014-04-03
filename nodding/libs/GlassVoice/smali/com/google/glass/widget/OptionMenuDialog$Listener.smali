.class public interface abstract Lcom/google/glass/widget/OptionMenuDialog$Listener;
.super Ljava/lang/Object;
.source "OptionMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/OptionMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCameraButtonPressed()Z
.end method

.method public abstract onClosed()V
.end method

.method public abstract onDisallowedInput()V
.end method

.method public abstract onItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
.end method

.method public abstract shouldAllowCameraButton()Z
.end method
