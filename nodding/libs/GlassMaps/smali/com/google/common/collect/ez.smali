.class final Lcom/google/common/collect/ez;
.super Lcom/google/common/collect/ml;


# instance fields
.field final synthetic a:Lcom/google/common/collect/fn;

.field final synthetic b:Lcom/google/common/collect/ey;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ey;Ljava/util/ListIterator;Lcom/google/common/collect/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ez;->b:Lcom/google/common/collect/ey;

    iput-object p3, p0, Lcom/google/common/collect/ez;->a:Lcom/google/common/collect/fn;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ml;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/fm;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fm;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/common/collect/fm;

    invoke-static {p1}, Lcom/google/common/collect/ez;->a(Lcom/google/common/collect/fm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ez;->a:Lcom/google/common/collect/fn;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/fn;->a(Ljava/lang/Object;)V

    return-void
.end method
