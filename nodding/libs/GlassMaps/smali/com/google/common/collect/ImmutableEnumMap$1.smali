.class Lcom/google/common/collect/ImmutableEnumMap$1;
.super Lcom/google/common/collect/ImmutableSet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableEnumMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableEnumMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    #getter for: Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumMap;->access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/mv;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    #getter for: Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumMap;->access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ef;->a(Ljava/util/Iterator;)Lcom/google/common/collect/mv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableEnumMap$1;->iterator()Lcom/google/common/collect/mv;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumMap$1;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableEnumMap;->size()I

    move-result v0

    return v0
.end method
