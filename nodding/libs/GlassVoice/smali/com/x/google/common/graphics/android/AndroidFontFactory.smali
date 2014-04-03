.class public Lcom/x/google/common/graphics/android/AndroidFontFactory;
.super Lcom/x/google/common/graphics/InterpolatedFontFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/x/google/common/graphics/InterpolatedFontFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getFont(IZZIZZ)Lcom/x/google/common/graphics/GoogleFont;
    .locals 7

    new-instance v0, Lcom/x/google/common/graphics/android/AndroidFont;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/x/google/common/graphics/android/AndroidFont;-><init>(IZZIZZ)V

    invoke-virtual {p0, v0}, Lcom/x/google/common/graphics/android/AndroidFontFactory;->createWrappedFont(Lcom/x/google/common/graphics/GoogleFont;)Lcom/x/google/common/graphics/GoogleFont;

    move-result-object v0

    return-object v0
.end method
