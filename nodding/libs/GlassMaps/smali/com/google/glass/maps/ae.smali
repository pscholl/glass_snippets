.class final Lcom/google/glass/maps/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/ad;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/ae;->a:Lcom/google/glass/maps/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ae;->a:Lcom/google/glass/maps/ad;

    iget-object v0, v0, Lcom/google/glass/maps/ad;->b:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, v0, Lcom/google/glass/maps/NavigationActivity;->d:Lcom/google/glass/maps/NavigationManager;

    iget-object v0, p0, Lcom/google/glass/maps/ae;->a:Lcom/google/glass/maps/ad;

    iget-boolean v0, v0, Lcom/google/glass/maps/ad;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/glass/maps/NavigationManager;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
