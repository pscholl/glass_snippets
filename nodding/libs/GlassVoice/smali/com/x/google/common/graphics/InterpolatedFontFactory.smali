.class public abstract Lcom/x/google/common/graphics/InterpolatedFontFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/graphics/FontFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/graphics/InterpolatedFontFactory$IconProviderFactory;
    }
.end annotation


# instance fields
.field private iconProvider:Lcom/x/google/common/graphics/IconProvider;

.field private iconProviderFactory:Lcom/x/google/common/graphics/InterpolatedFontFactory$IconProviderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIconProvider()Lcom/x/google/common/graphics/IconProvider;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/graphics/InterpolatedFontFactory;->iconProvider:Lcom/x/google/common/graphics/IconProvider;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/graphics/InterpolatedFontFactory;->iconProviderFactory:Lcom/x/google/common/graphics/InterpolatedFontFactory$IconProviderFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/graphics/InterpolatedFontFactory;->iconProviderFactory:Lcom/x/google/common/graphics/InterpolatedFontFactory$IconProviderFactory;

    invoke-interface {v0}, Lcom/x/google/common/graphics/InterpolatedFontFactory$IconProviderFactory;->getIconProvider()Lcom/x/google/common/graphics/IconProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/graphics/InterpolatedFontFactory;->iconProvider:Lcom/x/google/common/graphics/IconProvider;

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/graphics/InterpolatedFontFactory;->iconProvider:Lcom/x/google/common/graphics/IconProvider;

    return-object v0
.end method


# virtual methods
.method protected createWrappedFont(Lcom/x/google/common/graphics/GoogleFont;)Lcom/x/google/common/graphics/GoogleFont;
    .locals 2

    invoke-direct {p0}, Lcom/x/google/common/graphics/InterpolatedFontFactory;->getIconProvider()Lcom/x/google/common/graphics/IconProvider;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lcom/x/google/common/graphics/InterpolatedGoogleFont;

    invoke-direct {p0}, Lcom/x/google/common/graphics/InterpolatedFontFactory;->getIconProvider()Lcom/x/google/common/graphics/IconProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/x/google/common/graphics/InterpolatedGoogleFont;-><init>(Lcom/x/google/common/graphics/GoogleFont;Lcom/x/google/common/graphics/IconProvider;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public setIconProviderFactory(Lcom/x/google/common/graphics/InterpolatedFontFactory$IconProviderFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/common/graphics/InterpolatedFontFactory;->iconProviderFactory:Lcom/x/google/common/graphics/InterpolatedFontFactory$IconProviderFactory;

    return-void
.end method
