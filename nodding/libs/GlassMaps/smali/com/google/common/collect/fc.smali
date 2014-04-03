.class final Lcom/google/common/collect/fc;
.super Lcom/google/common/collect/ml;


# instance fields
.field final synthetic a:Lcom/google/common/collect/fb;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fb;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/fc;->a:Lcom/google/common/collect/fb;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ml;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/fm;)Ljava/util/Map$Entry;
    .locals 1

    #calls: Lcom/google/common/collect/LinkedListMultimap;->createEntry(Lcom/google/common/collect/fm;)Ljava/util/Map$Entry;
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->access$1100(Lcom/google/common/collect/fm;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/common/collect/fm;

    invoke-static {p1}, Lcom/google/common/collect/fc;->a(Lcom/google/common/collect/fm;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
