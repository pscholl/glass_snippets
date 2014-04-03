.class final Lcom/google/glass/maps/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/navlib/NavigationListener;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/av;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/av;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0, p1, p2}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/NavigationManager;Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V

    return-void
.end method

.method public final a(Lcom/google/glass/navlib/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/av;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->f(Lcom/google/glass/maps/NavigationManager;)V

    return-void
.end method

.method public final a(Lcom/google/glass/navlib/g;Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/av;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0, p2, p3}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;I)V

    return-void
.end method

.method public final a(Lcom/google/glass/navlib/g;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/av;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->e(Lcom/google/glass/maps/NavigationManager;)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/av;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->c(Lcom/google/glass/maps/NavigationManager;)V

    return-void
.end method

.method public final b(Lcom/google/glass/navlib/g;Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/av;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0, p2, p3}, Lcom/google/glass/maps/NavigationManager;->b(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;I)V

    return-void
.end method
