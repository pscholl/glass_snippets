.class final Lcom/google/common/collect/ar;
.super Lcom/google/common/collect/g;


# instance fields
.field final synthetic a:Lcom/google/common/collect/aq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/aq;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/aq;

    invoke-direct {p0, p2}, Lcom/google/common/collect/g;-><init>(I)V

    return-void
.end method

.method private b(I)Lcom/google/common/collect/mh;
    .locals 1

    new-instance v0, Lcom/google/common/collect/as;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/as;-><init>(Lcom/google/common/collect/ar;I)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ar;->b(I)Lcom/google/common/collect/mh;

    move-result-object v0

    return-object v0
.end method
