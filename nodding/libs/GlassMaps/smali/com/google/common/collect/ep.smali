.class final Lcom/google/common/collect/ep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/common/collect/eo;


# direct methods
.method constructor <init>(Lcom/google/common/collect/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ep;->a:Lcom/google/common/collect/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/common/collect/jo;Lcom/google/common/collect/jo;)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/ep;->a:Lcom/google/common/collect/eo;

    iget-object v0, v0, Lcom/google/common/collect/eo;->b:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/jo;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/common/collect/jo;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/common/collect/jo;

    check-cast p2, Lcom/google/common/collect/jo;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ep;->a(Lcom/google/common/collect/jo;Lcom/google/common/collect/jo;)I

    move-result v0

    return v0
.end method
