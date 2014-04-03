.class final enum Lcom/google/common/reflect/TypeToken$TypeFilter$2;
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

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeFilter$2;->apply(Lcom/google/common/reflect/TypeToken;)Z

    move-result v0

    return v0
.end method
