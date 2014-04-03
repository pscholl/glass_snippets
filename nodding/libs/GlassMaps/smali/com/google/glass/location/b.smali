.class final Lcom/google/glass/location/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/glass/location/GlassLocationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/location/GlassLocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/location/b;->a:Lcom/google/glass/location/GlassLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/location/b;->a:Lcom/google/glass/location/GlassLocationManager;

    invoke-static {v0, p1, p2}, Lcom/google/glass/location/GlassLocationManager;->a(Lcom/google/glass/location/GlassLocationManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/location/b;->a:Lcom/google/glass/location/GlassLocationManager;

    invoke-static {v0}, Lcom/google/glass/location/GlassLocationManager;->a(Lcom/google/glass/location/GlassLocationManager;)V

    return-void
.end method
