.class Lcom/google/glass/input/AbsolutePitchHelper$1;
.super Ljava/lang/Object;
.source "AbsolutePitchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/AbsolutePitchHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/AbsolutePitchHelper$AbsolutePitchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/AbsolutePitchHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/input/AbsolutePitchHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/input/AbsolutePitchHelper$1;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper$1;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    iget-object v1, p0, Lcom/google/glass/input/AbsolutePitchHelper$1;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    #getter for: Lcom/google/glass/input/AbsolutePitchHelper;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/google/glass/input/AbsolutePitchHelper;->access$100(Lcom/google/glass/input/AbsolutePitchHelper;)Landroid/hardware/SensorManager;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/google/glass/input/OrientationHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v1

    #setter for: Lcom/google/glass/input/AbsolutePitchHelper;->gravitySensor:Landroid/hardware/Sensor;
    invoke-static {v0, v1}, Lcom/google/glass/input/AbsolutePitchHelper;->access$002(Lcom/google/glass/input/AbsolutePitchHelper;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 69
    return-void
.end method
