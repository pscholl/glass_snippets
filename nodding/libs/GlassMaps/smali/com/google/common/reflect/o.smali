.class final Lcom/google/common/reflect/o;
.super Lcom/google/common/reflect/n;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/n;-><init>(Lcom/google/common/reflect/k;)V

    return-void
.end method

.method private static a(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Iterable;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getGenericInterfaces()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getGenericSuperclass()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final synthetic b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-static {p1}, Lcom/google/common/reflect/o;->a(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-static {p1}, Lcom/google/common/reflect/o;->b(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method final synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-static {p1}, Lcom/google/common/reflect/o;->c(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method
