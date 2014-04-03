.class final Lcom/google/glass/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/e/a;


# direct methods
.method constructor <init>(Lcom/google/glass/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/e/b;->a:Lcom/google/glass/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/e/b;->a:Lcom/google/glass/e/a;

    invoke-virtual {v0}, Lcom/google/glass/e/a;->a()Z

    return-void
.end method
