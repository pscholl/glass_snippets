.class final Lcom/google/glass/maps/directions/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/directions/TransitMapView;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/directions/TransitMapView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/directions/h;->a:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/directions/h;->a:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-static {v0}, Lcom/google/glass/maps/directions/TransitMapView;->b(Lcom/google/glass/maps/directions/TransitMapView;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/directions/h;->a:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-static {v1}, Lcom/google/glass/maps/directions/TransitMapView;->a(Lcom/google/glass/maps/directions/TransitMapView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    return-void
.end method
