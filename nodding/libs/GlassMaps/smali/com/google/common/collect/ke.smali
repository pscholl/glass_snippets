.class final Lcom/google/common/collect/ke;
.super Lcom/google/common/collect/AbstractIterator;


# instance fields
.field final synthetic a:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

.field private b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/ke;->a:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ke;->b:I

    iget-object v0, p0, Lcom/google/common/collect/ke;->a:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ke;->c:I

    return-void
.end method

.method private c()Ljava/util/Map$Entry;
    .locals 3

    iget v0, p0, Lcom/google/common/collect/ke;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ke;->b:I

    :goto_0
    iget v0, p0, Lcom/google/common/collect/ke;->b:I

    iget v1, p0, Lcom/google/common/collect/ke;->c:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ke;->a:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    iget v1, p0, Lcom/google/common/collect/ke;->b:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ke;->a:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;->this$0:Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;

    iget v2, p0, Lcom/google/common/collect/ke;->b:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/ke;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ke;->b:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ke;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ke;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
