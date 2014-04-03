.class final Lcom/google/glass/maps/directions/c;
.super Landroid/text/style/CharacterStyle;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/directions/StepCardView;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/directions/StepCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/directions/c;->a:Lcom/google/glass/maps/directions/StepCardView;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method
