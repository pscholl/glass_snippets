.class final Lcom/google/glass/userevent/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/userevent/UserEventAction;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/glass/userevent/a;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/a;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/userevent/b;->c:Lcom/google/glass/userevent/a;

    iput-object p2, p0, Lcom/google/glass/userevent/b;->a:Lcom/google/glass/userevent/UserEventAction;

    iput-object p3, p0, Lcom/google/glass/userevent/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/userevent/b;->c:Lcom/google/glass/userevent/a;

    iget-object v1, p0, Lcom/google/glass/userevent/b;->a:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, p0, Lcom/google/glass/userevent/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/a;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method
