.class final Lcom/google/common/collect/md;
.super Lcom/google/common/collect/cd;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/md;->b:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    iput-object p2, p0, Lcom/google/common/collect/md;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/cd;-><init>()V

    return-void
.end method

.method private b()Ljava/util/Map$Entry;
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/cd;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/common/collect/me;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/me;-><init>(Lcom/google/common/collect/md;Ljava/util/Map$Entry;)V

    return-object v1
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/md;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/md;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/md;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
