.class final Lcom/google/common/collect/in;
.super Lcom/google/common/collect/mk;


# instance fields
.field final synthetic a:Lcom/google/common/collect/im;


# direct methods
.method constructor <init>(Lcom/google/common/collect/im;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/in;->a:Lcom/google/common/collect/im;

    invoke-direct {p0, p2}, Lcom/google/common/collect/mk;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Lcom/google/common/collect/jd;
    .locals 1

    new-instance v0, Lcom/google/common/collect/io;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/io;-><init>(Lcom/google/common/collect/in;Ljava/util/Map$Entry;)V

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/google/common/collect/in;->a(Ljava/util/Map$Entry;)Lcom/google/common/collect/jd;

    move-result-object v0

    return-object v0
.end method
