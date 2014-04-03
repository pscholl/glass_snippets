.class final Lcom/google/common/collect/fs;
.super Lcom/google/common/collect/ch;


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/fr;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/google/common/collect/fr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/fs;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/common/collect/fs;->b:Lcom/google/common/collect/fr;

    invoke-direct {p0}, Lcom/google/common/collect/ch;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fs;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/fs;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/fs;->b:Lcom/google/common/collect/fr;

    invoke-virtual {p0}, Lcom/google/common/collect/fs;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/fr;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/fs;->a:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
