.class public final Lcom/google/common/collect/di;
.super Lcom/google/common/collect/de;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/di;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/de;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/di;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/di;->b:I

    return-void
.end method

.method private a(I)Lcom/google/common/collect/di;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/di;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/di;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/di;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/common/collect/di;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/jk;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/di;->a:[Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private b(Ljava/lang/Iterable;)Lcom/google/common/collect/di;
    .locals 2

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lcom/google/common/collect/di;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/di;->a(I)Lcom/google/common/collect/di;

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/de;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/de;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableList;
    .locals 3

    iget v0, p0, Lcom/google/common/collect/di;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/google/common/collect/di;->b:I

    iget-object v1, p0, Lcom/google/common/collect/di;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/di;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/di;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/di;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/di;->b:I

    invoke-static {v1, v2}, Lcom/google/common/collect/jk;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/de;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/di;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/di;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/de;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/di;->b(Ljava/lang/Object;)Lcom/google/common/collect/di;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/util/Iterator;)Lcom/google/common/collect/de;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/di;->b(Ljava/util/Iterator;)Lcom/google/common/collect/di;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/common/collect/di;
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/di;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/di;->a(I)Lcom/google/common/collect/di;

    iget-object v0, p0, Lcom/google/common/collect/di;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/di;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/di;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final b(Ljava/util/Iterator;)Lcom/google/common/collect/di;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/de;->a(Ljava/util/Iterator;)Lcom/google/common/collect/de;

    return-object p0
.end method
