.class Lcom/google/glass/location/GlassLocationManager$2;
.super Ljava/lang/Object;
.source "GlassLocationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/GlassLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/GlassLocationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/location/GlassLocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/glass/location/GlassLocationManager$2;->this$0:Lcom/google/glass/location/GlassLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager$2;->this$0:Lcom/google/glass/location/GlassLocationManager;

    #calls: Lcom/google/glass/location/GlassLocationManager;->handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    invoke-static {v0, p1, p2}, Lcom/google/glass/location/GlassLocationManager;->access$200(Lcom/google/glass/location/GlassLocationManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 166
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager$2;->this$0:Lcom/google/glass/location/GlassLocationManager;

    #calls: Lcom/google/glass/location/GlassLocationManager;->handleDisconnection()V
    invoke-static {v0}, Lcom/google/glass/location/GlassLocationManager;->access$100(Lcom/google/glass/location/GlassLocationManager;)V

    .line 161
    return-void
.end method
