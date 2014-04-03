.class final Lcom/google/glass/maps/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bd;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/as;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/store/bb;)V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/maps/as;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->b(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/maps/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/as;->a:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v1}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/NavigationManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/maps/c/j;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
