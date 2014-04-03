.class final enum Lcom/google/common/reflect/TypeToken$TypeFilter$1;
.super Lcom/google/common/reflect/TypeToken$TypeFilter;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/TypeToken$TypeFilter;-><init>(Ljava/lang/String;ILcom/google/common/reflect/k;)V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/common/reflect/TypeToken;)Z
    .locals 1

    #getter for: Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->access$400(Lcom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    #getter for: Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->access$400(Lcom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeFilter$1;->apply(Lcom/google/common/reflect/TypeToken;)Z

    move-result v0

    return v0
.end method
