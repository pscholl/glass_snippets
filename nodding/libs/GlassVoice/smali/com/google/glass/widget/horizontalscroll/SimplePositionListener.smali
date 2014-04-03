.class public Lcom/google/glass/widget/horizontalscroll/SimplePositionListener;
.super Ljava/lang/Object;
.source "SimplePositionListener.java"

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocused(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 10
    return-void
.end method

.method public onScaleChanged(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 22
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 0
    .parameter "position"

    .prologue
    .line 19
    return-void
.end method

.method public onSettled(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 13
    return-void
.end method

.method public onUnsettled(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 16
    return-void
.end method
