.class final Lcom/google/glass/entity/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/entity/q;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/entity/r;->a:Lcom/google/glass/entity/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/entity/r;->a:Lcom/google/glass/entity/q;

    iget-object v0, v0, Lcom/google/glass/entity/q;->b:Lcom/google/glass/entity/p;

    iget-object v1, p0, Lcom/google/glass/entity/r;->a:Lcom/google/glass/entity/q;

    iget-object v1, v1, Lcom/google/glass/entity/q;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/p;->a(Landroid/content/Context;)V

    return-void
.end method
