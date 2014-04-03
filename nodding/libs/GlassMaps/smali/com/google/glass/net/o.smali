.class final Lcom/google/glass/net/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/protobuf/nano/b;

.field final synthetic b:Lcom/google/glass/net/l;


# direct methods
.method constructor <init>(Lcom/google/glass/net/l;Lcom/google/protobuf/nano/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/net/o;->b:Lcom/google/glass/net/l;

    iput-object p2, p0, Lcom/google/glass/net/o;->a:Lcom/google/protobuf/nano/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/net/o;->b:Lcom/google/glass/net/l;

    iget-object v0, v0, Lcom/google/glass/net/l;->e:Lcom/google/glass/net/s;

    iget-object v1, p0, Lcom/google/glass/net/o;->a:Lcom/google/protobuf/nano/b;

    invoke-interface {v0, v1}, Lcom/google/glass/net/s;->a(Lcom/google/protobuf/nano/b;)V

    return-void
.end method
