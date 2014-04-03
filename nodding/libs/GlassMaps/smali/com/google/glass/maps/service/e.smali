.class final Lcom/google/glass/maps/service/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/service/MapRenderingService;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/service/MapRenderingService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/service/e;->a:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/service/e;->a:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-static {v0, p1}, Lcom/google/glass/maps/service/MapRenderingService;->a(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Message;)V

    return-void
.end method
