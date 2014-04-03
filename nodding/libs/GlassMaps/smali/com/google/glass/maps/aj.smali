.class final Lcom/google/glass/maps/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/ai;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/aj;->a:Lcom/google/glass/maps/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/aj;->a:Lcom/google/glass/maps/ai;

    iget-object v0, v0, Lcom/google/glass/maps/ai;->a:Lcom/google/glass/maps/ah;

    iget-object v0, v0, Lcom/google/glass/maps/ah;->a:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->A()V

    return-void
.end method
