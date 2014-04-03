.class final Lcom/google/glass/maps/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/au;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/au;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->d(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/maps/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/ca;->D()V

    return-void
.end method
