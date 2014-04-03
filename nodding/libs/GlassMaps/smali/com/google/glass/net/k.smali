.class final Lcom/google/glass/net/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic a:Lcom/google/glass/net/h;


# direct methods
.method constructor <init>(Lcom/google/glass/net/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/net/k;->a:Lcom/google/glass/net/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
