.class final Lcom/google/glass/net/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/glass/net/l;


# direct methods
.method constructor <init>(Lcom/google/glass/net/l;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/net/n;->b:Lcom/google/glass/net/l;

    iput p2, p0, Lcom/google/glass/net/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/net/n;->b:Lcom/google/glass/net/l;

    iget-object v0, v0, Lcom/google/glass/net/l;->e:Lcom/google/glass/net/s;

    iget v1, p0, Lcom/google/glass/net/n;->a:I

    invoke-interface {v0, v1}, Lcom/google/glass/net/s;->a(I)V

    return-void
.end method
