.class Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
.super Ljava/lang/Object;
.source "GlassLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/GlassLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRecord"
.end annotation


# instance fields
.field final listener:Landroid/location/LocationListener;

.field final request:Lcom/google/glass/location/LocationRequest;


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationRequest;Landroid/location/LocationListener;)V
    .locals 0
    .parameter "request"
    .parameter "listener"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->request:Lcom/google/glass/location/LocationRequest;

    .line 102
    iput-object p2, p0, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->listener:Landroid/location/LocationListener;

    .line 103
    return-void
.end method
