.class final Lcom/google/glass/maps/bg;
.super Lcom/google/glass/maps/u;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/PlaceCardView;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/PlaceCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/bg;->a:Lcom/google/glass/maps/PlaceCardView;

    invoke-direct {p0}, Lcom/google/glass/maps/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/bg;->a:Lcom/google/glass/maps/PlaceCardView;

    sget v1, Lcom/google/glass/maps/bm;->map:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/google/glass/maps/d/a;->a(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/google/glass/maps/bg;->a:Lcom/google/glass/maps/PlaceCardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/PlaceCardView;->a(Lcom/google/glass/maps/PlaceCardView;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    return-void
.end method
