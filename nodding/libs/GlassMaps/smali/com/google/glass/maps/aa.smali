.class final Lcom/google/glass/maps/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/aa;->a:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/aa;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/aa;->a:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/aa;->a:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationManager;->a(Z)V

    :cond_0
    return-void
.end method
