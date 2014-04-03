.class final Lcom/google/glass/maps/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/maps/d;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/al;->a:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/al;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->g()V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/DataType;I)V
    .locals 2

    check-cast p1, Lcom/google/glass/maps/directions/i;

    iget-object v0, p0, Lcom/google/glass/maps/al;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    iget-object v1, p1, Lcom/google/glass/maps/directions/i;->a:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ao;->a(Lcom/google/android/maps/driveabout/nav/ao;)V

    iget-object v0, p0, Lcom/google/glass/maps/al;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->j:Lcom/google/glass/maps/ao;

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/al;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->e:Lcom/google/glass/maps/g;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/directions/i;)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/al;->a:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0, p2}, Lcom/google/glass/maps/GlassUserEventLogger;->a(Landroid/content/Context;I)V

    return-void
.end method
