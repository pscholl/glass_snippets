.class Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;
.super Lcom/google/common/collect/ImmutableMapEntrySet;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;->this$1:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/mv;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;->this$1:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/mv;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/dl;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/dl;-><init>(Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;->iterator()Lcom/google/common/collect/mv;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;->this$1:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets;

    return-object v0
.end method
