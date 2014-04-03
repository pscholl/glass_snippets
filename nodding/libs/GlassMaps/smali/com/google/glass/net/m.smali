.class final Lcom/google/glass/net/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/net/l;


# direct methods
.method constructor <init>(Lcom/google/glass/net/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/net/m;->a:Lcom/google/glass/net/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/net/m;->a:Lcom/google/glass/net/l;

    iget-object v0, v0, Lcom/google/glass/net/l;->e:Lcom/google/glass/net/s;

    invoke-interface {v0}, Lcom/google/glass/net/s;->a()V

    return-void
.end method
