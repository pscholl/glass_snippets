.class final Lcom/google/glass/maps/ag;
.super Lcom/google/glass/widget/s;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/ag;->a:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/google/glass/maps/NavigationActivity;->F()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Stop directions canceled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/ag;->a:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->A()V

    iget-object v0, p0, Lcom/google/glass/maps/ag;->a:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ag;->a:Lcom/google/glass/maps/NavigationActivity;

    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->MANUAL_STOP:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    iget-object v2, p0, Lcom/google/glass/maps/ag;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v2, v2, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v2}, Lcom/google/glass/maps/g;->i()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/GlassUserEventLogger;->b(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;I)V

    :cond_0
    return-void
.end method
