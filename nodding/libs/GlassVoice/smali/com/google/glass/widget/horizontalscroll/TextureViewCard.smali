.class public Lcom/google/glass/widget/horizontalscroll/TextureViewCard;
.super Landroid/view/TextureView;
.source "TextureViewCard.java"

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/Card;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getBundleEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
