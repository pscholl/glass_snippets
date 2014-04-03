.class final Lcom/google/glass/location/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/location/GlassLocationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/location/a;->a:Lcom/google/glass/location/GlassLocationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/location/a;->a:Lcom/google/glass/location/GlassLocationManager;

    invoke-static {v0, p1}, Lcom/google/glass/location/GlassLocationManager;->a(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Message;)V

    return-void
.end method
