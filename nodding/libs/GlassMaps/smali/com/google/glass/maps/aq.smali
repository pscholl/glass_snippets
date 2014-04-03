.class final Lcom/google/glass/maps/aq;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/glass/maps/ap;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/ap;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/aq;->b:Lcom/google/glass/maps/ap;

    iput-boolean p2, p0, Lcom/google/glass/maps/aq;->a:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/aq;->b:Lcom/google/glass/maps/ap;

    invoke-static {v0}, Lcom/google/glass/maps/ap;->a(Lcom/google/glass/maps/ap;)V

    iget-boolean v0, p0, Lcom/google/glass/maps/aq;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/aq;->b:Lcom/google/glass/maps/ap;

    invoke-static {v0}, Lcom/google/glass/maps/ap;->b(Lcom/google/glass/maps/ap;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/aq;->b:Lcom/google/glass/maps/ap;

    invoke-static {v1}, Lcom/google/glass/maps/ap;->c(Lcom/google/glass/maps/ap;)Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/c;->a(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/aq;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
