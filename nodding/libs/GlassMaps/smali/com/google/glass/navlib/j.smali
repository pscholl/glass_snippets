.class final Lcom/google/glass/navlib/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/navlib/h;


# direct methods
.method constructor <init>(Lcom/google/glass/navlib/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/navlib/j;->a:Lcom/google/glass/navlib/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/google/glass/navlib/h;->j()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "ParameterManager initialization failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
