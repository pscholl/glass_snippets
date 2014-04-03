.class public abstract Lcom/google/glass/maps/MapHelper$SimpleOnMapRenderedListener;
.super Ljava/lang/Object;
.source "MapHelper.java"

# interfaces
.implements Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/maps/MapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleOnMapRenderedListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapFailed()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onMapRendered(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 62
    return-void
.end method
