.class public Lcom/google/glass/maps/PlaceCardView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/Card;


# instance fields
.field private a:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/PlaceCardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/PlaceCardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/PlaceCardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/PlaceCardView;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/PlaceCardView;->a:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bo;->place_card:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/m;)V
    .locals 7

    const-wide v5, 0x3eb0c6f7a0b5ed8dL

    invoke-virtual {p0}, Lcom/google/glass/maps/PlaceCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    new-instance v5, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v5}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v5, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v5, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/google/glass/maps/PlaceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/MapHelper;->b(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v1

    new-instance v2, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    iput-object v5, v2, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    sget v4, Lcom/google/glass/maps/bk;->place_card_map_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    sget v4, Lcom/google/glass/maps/bk;->place_card_map_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    iput-object v5, v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    iput-object v0, v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    const/high16 v0, 0x4180

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    new-instance v0, Lcom/google/glass/maps/bg;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/bg;-><init>(Lcom/google/glass/maps/PlaceCardView;)V

    invoke-virtual {v1, v3, v0}, Lcom/google/glass/maps/MapHelper;->a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Lcom/google/glass/maps/t;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/PlaceCardView;->a:Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Lcom/google/glass/maps/bm;->operation:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Lcom/google/glass/maps/bm;->title:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Lcom/google/glass/maps/bm;->address:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d()V
    .locals 2

    sget v0, Lcom/google/glass/maps/bm;->operation:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    sget v0, Lcom/google/glass/maps/bm;->title:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    sget v0, Lcom/google/glass/maps/bm;->address:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/PlaceCardView;->a:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/PlaceCardView;->a:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/PlaceCardView;->a:Ljava/util/concurrent/Future;

    :cond_0
    sget v0, Lcom/google/glass/maps/bm;->map:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
