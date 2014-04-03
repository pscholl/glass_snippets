.class final Lcom/google/glass/net/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/glass/net/h;


# direct methods
.method constructor <init>(Lcom/google/glass/net/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/net/i;->a:Lcom/google/glass/net/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/glass/net/l;Lcom/google/glass/net/l;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/net/l;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/glass/net/l;->c:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/net/l;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/google/glass/net/l;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/glass/net/l;

    check-cast p2, Lcom/google/glass/net/l;

    invoke-static {p1, p2}, Lcom/google/glass/net/i;->a(Lcom/google/glass/net/l;Lcom/google/glass/net/l;)I

    move-result v0

    return v0
.end method
