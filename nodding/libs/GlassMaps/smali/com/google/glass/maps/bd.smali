.class final Lcom/google/glass/maps/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/bd;->a:Lcom/google/glass/maps/NavigationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/bd;->a:Lcom/google/glass/maps/NavigationService;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationService;->a(Lcom/google/glass/maps/NavigationService;)V

    return-void
.end method
