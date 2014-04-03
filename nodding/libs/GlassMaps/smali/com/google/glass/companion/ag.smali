.class final Lcom/google/glass/companion/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/companion/b;

.field final synthetic b:Lcom/google/glass/companion/ae;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/ae;Lcom/google/glass/companion/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/companion/ag;->b:Lcom/google/glass/companion/ae;

    iput-object p2, p0, Lcom/google/glass/companion/ag;->a:Lcom/google/glass/companion/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/companion/ae;->e()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/ag;->a:Lcom/google/glass/companion/b;

    invoke-static {}, Lcom/google/glass/companion/ae;->e()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/google/glass/companion/ag;->b:Lcom/google/glass/companion/ae;

    invoke-static {v2}, Lcom/google/glass/companion/ae;->b(Lcom/google/glass/companion/ae;)I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/companion/ag;->b:Lcom/google/glass/companion/ae;

    invoke-static {v3}, Lcom/google/glass/companion/ae;->c(Lcom/google/glass/companion/ae;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/companion/b;->a(ZII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/ag;->a:Lcom/google/glass/companion/b;

    iget-object v1, p0, Lcom/google/glass/companion/ag;->b:Lcom/google/glass/companion/ae;

    invoke-static {v1}, Lcom/google/glass/companion/ae;->a(Lcom/google/glass/companion/ae;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/glass/companion/ag;->b:Lcom/google/glass/companion/ae;

    invoke-static {v2}, Lcom/google/glass/companion/ae;->b(Lcom/google/glass/companion/ae;)I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/companion/ag;->b:Lcom/google/glass/companion/ae;

    invoke-static {v3}, Lcom/google/glass/companion/ae;->c(Lcom/google/glass/companion/ae;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/companion/b;->a(ZII)V

    goto :goto_0
.end method
