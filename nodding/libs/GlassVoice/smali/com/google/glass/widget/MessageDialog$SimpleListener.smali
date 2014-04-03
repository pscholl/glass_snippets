.class public Lcom/google/glass/widget/MessageDialog$SimpleListener;
.super Ljava/lang/Object;
.source "MessageDialog.java"

# interfaces
.implements Lcom/google/glass/widget/MessageDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onDismissed()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onDone()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onDoneMessageShown()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
