.class final Lcom/google/common/collect/et;
.super Lcom/google/common/collect/kl;

# interfaces
.implements Lcom/google/common/collect/ev;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field a:[Lcom/google/common/collect/es;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/LinkedHashMultimap;

.field private final c:Ljava/lang/Object;

.field private d:I

.field private e:I

.field private f:Lcom/google/common/collect/ev;

.field private g:Lcom/google/common/collect/ev;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/common/collect/et;->b:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/kl;-><init>()V

    iput v0, p0, Lcom/google/common/collect/et;->d:I

    iput v0, p0, Lcom/google/common/collect/et;->e:I

    iput-object p2, p0, Lcom/google/common/collect/et;->c:Ljava/lang/Object;

    iput-object p0, p0, Lcom/google/common/collect/et;->f:Lcom/google/common/collect/ev;

    iput-object p0, p0, Lcom/google/common/collect/et;->g:Lcom/google/common/collect/ev;

    const-wide/high16 v0, 0x3ff0

    invoke-static {p3, v0, v1}, Lcom/google/common/collect/db;->a(ID)I

    move-result v0

    new-array v0, v0, [Lcom/google/common/collect/es;

    iput-object v0, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/et;)Lcom/google/common/collect/ev;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/et;->f:Lcom/google/common/collect/ev;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/et;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/et;->e:I

    return v0
.end method

.method static synthetic c(Lcom/google/common/collect/et;)I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/et;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/et;->d:I

    return v0
.end method

.method private c()V
    .locals 6

    iget v0, p0, Lcom/google/common/collect/et;->d:I

    iget-object v1, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    array-length v1, v1

    const-wide/high16 v2, 0x3ff0

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/db;->a(IID)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [Lcom/google/common/collect/es;

    iput-object v2, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    array-length v0, v2

    add-int/lit8 v3, v0, -0x1

    iget-object v1, p0, Lcom/google/common/collect/et;->f:Lcom/google/common/collect/ev;

    :goto_0
    if-eq v1, p0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/common/collect/es;

    iget v4, v0, Lcom/google/common/collect/es;->c:I

    invoke-static {v4}, Lcom/google/common/collect/db;->a(I)I

    move-result v4

    and-int/2addr v4, v3

    aget-object v5, v2, v4

    iput-object v5, v0, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    aput-object v0, v2, v4

    invoke-interface {v1}, Lcom/google/common/collect/ev;->b()Lcom/google/common/collect/ev;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/google/common/collect/et;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/et;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/et;->e:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ev;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/et;->g:Lcom/google/common/collect/ev;

    return-object v0
.end method

.method public final a(Lcom/google/common/collect/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/et;->g:Lcom/google/common/collect/ev;

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/db;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int v4, v2, v3

    iget-object v2, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    aget-object v3, v2, v4

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    iget v5, v2, Lcom/google/common/collect/es;->c:I

    if-ne v0, v5, :cond_1

    invoke-virtual {v2}, Lcom/google/common/collect/es;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/common/collect/es;

    iget-object v2, p0, Lcom/google/common/collect/et;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/google/common/collect/es;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/es;)V

    iget-object v0, p0, Lcom/google/common/collect/et;->g:Lcom/google/common/collect/ev;

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/ev;Lcom/google/common/collect/ev;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/ev;Lcom/google/common/collect/ev;)V

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/ev;Lcom/google/common/collect/ev;)V
    invoke-static {v1, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/ev;Lcom/google/common/collect/ev;)V

    iget-object v0, p0, Lcom/google/common/collect/et;->b:Lcom/google/common/collect/LinkedHashMultimap;

    #getter for: Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/es;
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/es;->c()Lcom/google/common/collect/es;

    move-result-object v0

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/es;Lcom/google/common/collect/es;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$700(Lcom/google/common/collect/es;Lcom/google/common/collect/es;)V

    iget-object v0, p0, Lcom/google/common/collect/et;->b:Lcom/google/common/collect/LinkedHashMultimap;

    #getter for: Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/es;
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/es;

    move-result-object v0

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/es;Lcom/google/common/collect/es;)V
    invoke-static {v1, v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$700(Lcom/google/common/collect/es;Lcom/google/common/collect/es;)V

    iget-object v0, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    aput-object v1, v0, v4

    iget v0, p0, Lcom/google/common/collect/et;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/et;->d:I

    iget v0, p0, Lcom/google/common/collect/et;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/et;->e:I

    invoke-direct {p0}, Lcom/google/common/collect/et;->c()V

    const/4 v1, 0x1

    goto :goto_2
.end method

.method public final b()Lcom/google/common/collect/ev;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/et;->f:Lcom/google/common/collect/ev;

    return-object v0
.end method

.method public final b(Lcom/google/common/collect/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/et;->f:Lcom/google/common/collect/ev;

    return-void
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/et;->d:I

    iget-object v1, p0, Lcom/google/common/collect/et;->f:Lcom/google/common/collect/ev;

    :goto_0
    if-eq v1, p0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/common/collect/es;

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/es;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/es;)V

    invoke-interface {v1}, Lcom/google/common/collect/ev;->b()Lcom/google/common/collect/ev;

    move-result-object v1

    goto :goto_0

    :cond_0
    #calls: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/ev;Lcom/google/common/collect/ev;)V
    invoke-static {p0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/ev;Lcom/google/common/collect/ev;)V

    iget v0, p0, Lcom/google/common/collect/et;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/et;->e:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/db;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    aget-object v2, v3, v2

    :goto_1
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/common/collect/es;->c:I

    if-ne v0, v3, :cond_2

    invoke-virtual {v2}, Lcom/google/common/collect/es;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    goto :goto_1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/eu;

    invoke-direct {v0, p0}, Lcom/google/common/collect/eu;-><init>(Lcom/google/common/collect/et;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/db;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int v4, v2, v3

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    aget-object v2, v2, v4

    :goto_1
    if-eqz v2, :cond_0

    iget v5, v2, Lcom/google/common/collect/es;->c:I

    if-ne v0, v5, :cond_3

    invoke-virtual {v2}, Lcom/google/common/collect/es;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/et;->a:[Lcom/google/common/collect/es;

    iget-object v1, v2, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    aput-object v1, v0, v4

    :goto_2
    #calls: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromValueSet(Lcom/google/common/collect/ev;)V
    invoke-static {v2}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/ev;)V

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/es;)V
    invoke-static {v2}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/es;)V

    iget v0, p0, Lcom/google/common/collect/et;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/et;->d:I

    iget v0, p0, Lcom/google/common/collect/et;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/et;->e:I

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    iput-object v0, v3, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    goto :goto_2

    :cond_3
    iget-object v3, v2, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/et;->d:I

    return v0
.end method
