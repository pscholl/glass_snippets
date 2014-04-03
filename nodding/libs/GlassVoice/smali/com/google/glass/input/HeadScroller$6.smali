.class Lcom/google/glass/input/HeadScroller$6;
.super Ljava/lang/Object;
.source "HeadScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/HeadScroller;->startYawCalculations()V
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
    .line 363
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller$6;->this$0:Lcom/google/glass/input/HeadScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$6;->this$0:Lcom/google/glass/input/HeadScroller;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/glass/input/HeadScroller;->lastGyroTimestamp:J
    invoke-static {v0, v1, v2}, Lcom/google/glass/input/HeadScroller;->access$602(Lcom/google/glass/input/HeadScroller;J)J

    .line 367
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$6;->this$0:Lcom/google/glass/input/HeadScroller;

    #getter for: Lcom/google/glass/input/HeadScroller;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/google/glass/input/HeadScroller;->access$200(Lcom/google/glass/input/HeadScroller;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/input/HeadScroller$6;->this$0:Lcom/google/glass/input/HeadScroller;

    iget-object v2, p0, Lcom/google/glass/input/HeadScroller$6;->this$0:Lcom/google/glass/input/HeadScroller;

    #getter for: Lcom/google/glass/input/HeadScroller;->gyroscopeSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/google/glass/input/HeadScroller;->access$100(Lcom/google/glass/input/HeadScroller;)Landroid/hardware/Sensor;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 369
    return-void
.end method
