.class final Lcom/google/glass/util/az;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/glass/util/InetConnectionState$1;


# direct methods
.method constructor <init>(Lcom/google/glass/util/InetConnectionState$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/az;->a:Lcom/google/glass/util/InetConnectionState$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/az;->a:Lcom/google/glass/util/InetConnectionState$1;

    iget-object v0, v0, Lcom/google/glass/util/InetConnectionState$1;->a:Lcom/google/glass/util/ay;

    invoke-virtual {v0}, Lcom/google/glass/util/ay;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/glass/util/az;->a:Lcom/google/glass/util/InetConnectionState$1;

    iget-object v1, v1, Lcom/google/glass/util/InetConnectionState$1;->a:Lcom/google/glass/util/ay;

    invoke-static {v1}, Lcom/google/glass/util/ay;->a(Lcom/google/glass/util/ay;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/az;->a:Lcom/google/glass/util/InetConnectionState$1;

    iget-object v0, v0, Lcom/google/glass/util/InetConnectionState$1;->a:Lcom/google/glass/util/ay;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/util/ay;->a(Lcom/google/glass/util/ay;Z)Z

    iget-object v0, p0, Lcom/google/glass/util/az;->a:Lcom/google/glass/util/InetConnectionState$1;

    iget-object v0, v0, Lcom/google/glass/util/InetConnectionState$1;->a:Lcom/google/glass/util/ay;

    invoke-static {v0}, Lcom/google/glass/util/ay;->b(Lcom/google/glass/util/ay;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/glass/util/az;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/glass/util/az;->a(Ljava/lang/Boolean;)V

    return-void
.end method
