.class final Lcom/google/glass/maps/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/maps/h;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/ah;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/ai;->a:Lcom/google/glass/maps/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ai;->a:Lcom/google/glass/maps/ah;

    iget-object v0, v0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    new-instance v1, Lcom/google/glass/maps/aj;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/aj;-><init>(Lcom/google/glass/maps/ai;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
