.class final Lcom/google/glass/input/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/input/p;


# instance fields
.field final synthetic a:Lcom/google/glass/input/d;


# direct methods
.method constructor <init>(Lcom/google/glass/input/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/input/e;->a:Lcom/google/glass/input/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/e;->a:Lcom/google/glass/input/d;

    invoke-static {v0}, Lcom/google/glass/input/d;->a(Lcom/google/glass/input/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/e;->a:Lcom/google/glass/input/d;

    invoke-static {v0}, Lcom/google/glass/input/d;->b(Lcom/google/glass/input/d;)F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x4220

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/glass/input/e;->a:Lcom/google/glass/input/d;

    invoke-static {v1, v0}, Lcom/google/glass/input/d;->a(Lcom/google/glass/input/d;F)V

    :goto_0
    iget-object v0, p0, Lcom/google/glass/input/e;->a:Lcom/google/glass/input/d;

    invoke-static {v0, p1}, Lcom/google/glass/input/d;->b(Lcom/google/glass/input/d;F)F

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/e;->a:Lcom/google/glass/input/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/input/d;->a(Lcom/google/glass/input/d;Z)Z

    goto :goto_0
.end method
