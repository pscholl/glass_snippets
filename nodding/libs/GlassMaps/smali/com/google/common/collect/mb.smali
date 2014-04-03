.class final Lcom/google/common/collect/mb;
.super Lcom/google/common/collect/mk;


# instance fields
.field final synthetic a:Lcom/google/common/collect/ma;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ma;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/mb;->a:Lcom/google/common/collect/ma;

    invoke-direct {p0, p2}, Lcom/google/common/collect/mk;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/mh;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lcom/google/common/collect/mh;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/common/collect/mh;

    invoke-static {p1}, Lcom/google/common/collect/mb;->a(Lcom/google/common/collect/mh;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
