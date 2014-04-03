.class final Lcom/google/common/collect/mt;
.super Lcom/google/common/collect/jf;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:Lcom/google/common/collect/mt;

.field private g:Lcom/google/common/collect/mt;

.field private h:Lcom/google/common/collect/mt;

.field private i:Lcom/google/common/collect/mt;


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/common/collect/jf;-><init>()V

    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    iput-object p1, p0, Lcom/google/common/collect/mt;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/mt;->b:I

    int-to-long v2, p2

    iput-wide v2, p0, Lcom/google/common/collect/mt;->d:J

    iput v1, p0, Lcom/google/common/collect/mt;->c:I

    iput v1, p0, Lcom/google/common/collect/mt;->e:I

    iput-object v4, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iput-object v4, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/mt;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    return v0
.end method

.method private a()Lcom/google/common/collect/mt;
    .locals 6

    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/collect/mt;->b:I

    iget-object v1, p0, Lcom/google/common/collect/mt;->h:Lcom/google/common/collect/mt;

    iget-object v2, p0, Lcom/google/common/collect/mt;->i:Lcom/google/common/collect/mt;

    #calls: Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;)V
    invoke-static {v1, v2}, Lcom/google/common/collect/TreeMultiset;->access$1800(Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;)V

    iget-object v1, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iget v1, v1, Lcom/google/common/collect/mt;->e:I

    iget-object v2, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iget v2, v2, Lcom/google/common/collect/mt;->e:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/mt;->h:Lcom/google/common/collect/mt;

    iget-object v2, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-direct {v2, v1}, Lcom/google/common/collect/mt;->j(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iget-object v2, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iput-object v2, v1, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iget v2, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/mt;->c:I

    iget-wide v2, p0, Lcom/google/common/collect/mt;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/mt;->d:J

    invoke-direct {v1}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/mt;->i:Lcom/google/common/collect/mt;

    iget-object v2, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-direct {v2, v1}, Lcom/google/common/collect/mt;->i(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iget-object v2, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iput-object v2, v1, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iget v2, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/mt;->c:I

    iget-wide v2, p0, Lcom/google/common/collect/mt;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/mt;->d:J

    invoke-direct {v1}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/mt;->i:Lcom/google/common/collect/mt;

    return-object p1
.end method

.method static synthetic a(Lcom/google/common/collect/mt;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/mt;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/mt;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;I)Lcom/google/common/collect/mt;
    .locals 4

    new-instance v0, Lcom/google/common/collect/mt;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/mt;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iget-object v1, p0, Lcom/google/common/collect/mt;->i:Lcom/google/common/collect/mt;

    #calls: Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;)V
    invoke-static {p0, v0, v1}, Lcom/google/common/collect/TreeMultiset;->access$1700(Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/collect/mt;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/mt;->e:I

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/mt;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/mt;->h:Lcom/google/common/collect/mt;

    return-object p1
.end method

.method static synthetic b(Lcom/google/common/collect/mt;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/mt;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/mt;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;I)Lcom/google/common/collect/mt;
    .locals 4

    new-instance v0, Lcom/google/common/collect/mt;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/mt;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iget-object v0, p0, Lcom/google/common/collect/mt;->h:Lcom/google/common/collect/mt;

    iget-object v1, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    #calls: Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;)V
    invoke-static {v0, v1, p0}, Lcom/google/common/collect/TreeMultiset;->access$1700(Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;Lcom/google/common/collect/mt;)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/collect/mt;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/mt;->e:I

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    return-object p0
.end method

.method private b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/mt;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mt;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/mt;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/mt;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/mt;

    move-object p0, v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/mt;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/mt;

    move-result-object v0

    goto :goto_1
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/mt;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/mt;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-static {v2}, Lcom/google/common/collect/mt;->k(Lcom/google/common/collect/mt;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-static {v2}, Lcom/google/common/collect/mt;->k(Lcom/google/common/collect/mt;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    return-void
.end method

.method static synthetic c(Lcom/google/common/collect/mt;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    return v0
.end method

.method private c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/mt;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mt;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/mt;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/mt;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/mt;

    move-object p0, v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/mt;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/mt;

    move-result-object v0

    goto :goto_1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-static {v0}, Lcom/google/common/collect/mt;->l(Lcom/google/common/collect/mt;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-static {v1}, Lcom/google/common/collect/mt;->l(Lcom/google/common/collect/mt;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/mt;->e:I

    return-void
.end method

.method static synthetic d(Lcom/google/common/collect/mt;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mt;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/mt;->b()V

    invoke-direct {p0}, Lcom/google/common/collect/mt;->c()V

    return-void
.end method

.method private e()Lcom/google/common/collect/mt;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/mt;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/google/common/collect/mt;->c()V

    :goto_0
    return-object p0

    :sswitch_0
    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-direct {v0}, Lcom/google/common/collect/mt;->f()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-direct {v0}, Lcom/google/common/collect/mt;->h()Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/mt;->g()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-direct {v0}, Lcom/google/common/collect/mt;->f()I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-direct {v0}, Lcom/google/common/collect/mt;->g()Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/mt;->h()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic e(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    return-object v0
.end method

.method private f()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-static {v0}, Lcom/google/common/collect/mt;->l(Lcom/google/common/collect/mt;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-static {v1}, Lcom/google/common/collect/mt;->l(Lcom/google/common/collect/mt;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic f(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    return-object v0
.end method

.method private g()Lcom/google/common/collect/mt;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iget-object v1, v0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iput-object v1, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iput-object p0, v0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iget-wide v1, p0, Lcom/google/common/collect/mt;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/mt;->d:J

    iget v1, p0, Lcom/google/common/collect/mt;->c:I

    iput v1, v0, Lcom/google/common/collect/mt;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/mt;->d()V

    invoke-direct {v0}, Lcom/google/common/collect/mt;->c()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mt;->i:Lcom/google/common/collect/mt;

    return-object v0
.end method

.method private h()Lcom/google/common/collect/mt;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iget-object v1, v0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iput-object v1, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iput-object p0, v0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iget-wide v1, p0, Lcom/google/common/collect/mt;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/mt;->d:J

    iget v1, p0, Lcom/google/common/collect/mt;->c:I

    iput v1, v0, Lcom/google/common/collect/mt;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/mt;->d()V

    invoke-direct {v0}, Lcom/google/common/collect/mt;->c()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mt;->h:Lcom/google/common/collect/mt;

    return-object v0
.end method

.method private i(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-direct {v0, p1}, Lcom/google/common/collect/mt;->i(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    iget v2, p1, Lcom/google/common/collect/mt;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object v0

    goto :goto_0
.end method

.method private j(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-direct {v0, p1}, Lcom/google/common/collect/mt;->j(Lcom/google/common/collect/mt;)Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    iget v2, p1, Lcom/google/common/collect/mt;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object v0

    goto :goto_0
.end method

.method private static k(Lcom/google/common/collect/mt;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    goto :goto_0
.end method

.method private static l(Lcom/google/common/collect/mt;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/mt;->e:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/mt;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/mt;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/mt;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    goto :goto_0
.end method

.method final a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/mt;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/common/collect/mt;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-nez v0, :cond_1

    aput v6, p5, v6

    if-nez p3, :cond_0

    if-lez p4, :cond_0

    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/mt;->b(Ljava/lang/Object;I)Lcom/google/common/collect/mt;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/mt;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    aget v0, p5, v6

    if-ne v0, p3, :cond_3

    if-nez p4, :cond_4

    aget v0, p5, v6

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    aget v2, p5, v6

    sub-int v2, p4, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    :cond_3
    invoke-direct {p0}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-lez p4, :cond_2

    aget v0, p5, v6

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    goto :goto_1

    :cond_5
    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-nez v0, :cond_6

    aput v6, p5, v6

    if-nez p3, :cond_0

    if-lez p4, :cond_0

    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/mt;->a(Ljava/lang/Object;I)Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_6
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/mt;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    aget v0, p5, v6

    if-ne v0, p3, :cond_8

    if-nez p4, :cond_9

    aget v0, p5, v6

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    :cond_7
    :goto_2
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    aget v2, p5, v6

    sub-int v2, p4, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    :cond_8
    invoke-direct {p0}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_9
    if-lez p4, :cond_7

    aget v0, p5, v6

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    aput v0, p5, v6

    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_b

    invoke-direct {p0}, Lcom/google/common/collect/mt;->a()Lcom/google/common/collect/mt;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    iget v2, p0, Lcom/google/common/collect/mt;->b:I

    sub-int v2, p4, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    iput p4, p0, Lcom/google/common/collect/mt;->b:I

    goto/16 :goto_0
.end method

.method final a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/mt;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/mt;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-nez v1, :cond_1

    aput v0, p4, v0

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/mt;->b(Ljava/lang/Object;I)Lcom/google/common/collect/mt;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget v2, v1, Lcom/google/common/collect/mt;->e:I

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/common/collect/mt;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/mt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    aget v0, p4, v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    :cond_2
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    int-to-long v3, p3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    iget v0, v0, Lcom/google/common/collect/mt;->e:I

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-nez v1, :cond_4

    aput v0, p4, v0

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/mt;->a(Ljava/lang/Object;I)Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget v2, v1, Lcom/google/common/collect/mt;->e:I

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/common/collect/mt;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/mt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    aget v0, p4, v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    :cond_5
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    int-to-long v3, p3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    iget v0, v0, Lcom/google/common/collect/mt;->e:I

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/google/common/collect/mt;->b:I

    aput v1, p4, v0

    iget v1, p0, Lcom/google/common/collect/mt;->b:I

    int-to-long v1, v1

    int-to-long v3, p3

    add-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/common/collect/mt;->b:I

    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    goto :goto_0
.end method

.method final b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/mt;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/common/collect/mt;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-nez v0, :cond_1

    aput v4, p4, v4

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/mt;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    aget v0, p4, v4

    if-lez v0, :cond_2

    aget v0, p4, v4

    if-lt p3, v0, :cond_3

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    aget v2, p4, v4

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    :cond_2
    :goto_1
    aget v0, p4, v4

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    goto :goto_1

    :cond_4
    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-nez v0, :cond_5

    aput v4, p4, v4

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/mt;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    aget v0, p4, v4

    if-lez v0, :cond_6

    aget v0, p4, v4

    if-lt p3, v0, :cond_7

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    aget v2, p4, v4

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_7
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    aput v0, p4, v4

    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    if-lt p3, v0, :cond_9

    invoke-direct {p0}, Lcom/google/common/collect/mt;->a()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/common/collect/mt;->b:I

    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    goto :goto_0
.end method

.method final c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/mt;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/common/collect/mt;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-nez v0, :cond_1

    aput v2, p4, v2

    if-lez p3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/mt;->b(Ljava/lang/Object;I)Lcom/google/common/collect/mt;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/mt;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mt;->f:Lcom/google/common/collect/mt;

    if-nez p3, :cond_3

    aget v0, p4, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    aget v2, p4, v2

    sub-int v2, p3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-lez p3, :cond_2

    aget v0, p4, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    goto :goto_1

    :cond_4
    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-nez v0, :cond_5

    aput v2, p4, v2

    if-lez p3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/mt;->a(Ljava/lang/Object;I)Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/mt;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mt;->g:Lcom/google/common/collect/mt;

    if-nez p3, :cond_7

    aget v0, p4, v2

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    :cond_6
    :goto_2
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    aget v2, p4, v2

    sub-int v2, p3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/mt;->e()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_7
    if-lez p3, :cond_6

    aget v0, p4, v2

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/common/collect/mt;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/mt;->c:I

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    aput v0, p4, v2

    if-nez p3, :cond_9

    invoke-direct {p0}, Lcom/google/common/collect/mt;->a()Lcom/google/common/collect/mt;

    move-result-object p0

    goto :goto_0

    :cond_9
    iget-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    iget v2, p0, Lcom/google/common/collect/mt;->b:I

    sub-int v2, p3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/mt;->d:J

    iput p3, p0, Lcom/google/common/collect/mt;->b:I

    goto/16 :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/mt;->b:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mt;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/mt;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/mt;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/jd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
