.class final Lcom/google/glass/input/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/input/a;


# direct methods
.method constructor <init>(Lcom/google/glass/input/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/input/b;->a:Lcom/google/glass/input/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/input/b;->a:Lcom/google/glass/input/a;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/glass/input/a;->a(Lcom/google/glass/input/a;J)J

    iget-object v0, p0, Lcom/google/glass/input/b;->a:Lcom/google/glass/input/a;

    invoke-static {v0}, Lcom/google/glass/input/a;->a(Lcom/google/glass/input/a;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/input/b;->a:Lcom/google/glass/input/a;

    iget-object v2, p0, Lcom/google/glass/input/b;->a:Lcom/google/glass/input/a;

    invoke-static {v2}, Lcom/google/glass/input/a;->c(Lcom/google/glass/input/a;)Landroid/hardware/Sensor;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method
