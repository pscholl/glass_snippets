.class final Lcom/google/glass/input/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/input/a;


# direct methods
.method constructor <init>(Lcom/google/glass/input/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/input/c;->a:Lcom/google/glass/input/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/c;->a:Lcom/google/glass/input/a;

    invoke-static {v0}, Lcom/google/glass/input/a;->d(Lcom/google/glass/input/a;)V

    iget-object v0, p0, Lcom/google/glass/input/c;->a:Lcom/google/glass/input/a;

    invoke-static {v0}, Lcom/google/glass/input/a;->e(Lcom/google/glass/input/a;)V

    return-void
.end method
