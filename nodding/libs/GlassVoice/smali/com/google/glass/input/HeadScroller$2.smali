.class Lcom/google/glass/input/HeadScroller$2;
.super Ljava/lang/Object;
.source "HeadScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/HeadScroller;->setupSensors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/HeadScroller;


# direct methods
.method constructor <init>(Lcom/google/glass/input/HeadScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller$2;->this$0:Lcom/google/glass/input/HeadScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$2;->this$0:Lcom/google/glass/input/HeadScroller;

    iget-object v1, p0, Lcom/google/glass/input/HeadScroller$2;->this$0:Lcom/google/glass/input/HeadScroller;

    #getter for: Lcom/google/glass/input/HeadScroller;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/google/glass/input/HeadScroller;->access$200(Lcom/google/glass/input/HeadScroller;)Landroid/hardware/SensorManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/glass/input/OrientationHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v1

    #setter for: Lcom/google/glass/input/HeadScroller;->gyroscopeSensor:Landroid/hardware/Sensor;
    invoke-static {v0, v1}, Lcom/google/glass/input/HeadScroller;->access$102(Lcom/google/glass/input/HeadScroller;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 259
    return-void
.end method
