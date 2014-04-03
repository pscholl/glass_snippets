.class final Lcom/google/glass/widget/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/g;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/ap;->a:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ap;->a:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(F)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final b(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ap;->a:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/SliderView;->setScale(F)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final c(I)V
    .locals 0

    return-void
.end method
