.class final Lcom/google/glass/maps/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/g;->a(I)V

    iget-object v1, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->h:Lcom/google/glass/maps/ay;

    sget v2, Lcom/google/glass/maps/bm;->transit_map_pane:I

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/ay;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/directions/TransitMapView;

    iput-object v0, v1, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    iget-object v0, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    iget-object v1, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v1}, Lcom/google/glass/maps/NavigationActivity;->a(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/maps/directions/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v2, v2, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v2}, Lcom/google/glass/maps/g;->m()Lcom/google/glass/location/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/directions/TransitMapView;->a(Lcom/google/glass/maps/directions/i;Lcom/google/glass/location/f;)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    iget-object v1, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, v1, Lcom/google/glass/maps/NavigationActivity;->k:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/directions/TransitMapView;)V

    iget-object v0, p0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    new-instance v1, Lcom/google/glass/maps/ai;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/ai;-><init>(Lcom/google/glass/maps/ah;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/h;)V

    return-void
.end method
