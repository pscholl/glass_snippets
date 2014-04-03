.class final Lcom/google/common/cache/be;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Lcom/google/common/cache/bd;
    .locals 1

    new-instance v0, Lcom/google/common/cache/bd;

    invoke-direct {v0}, Lcom/google/common/cache/bd;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/common/cache/be;->a()Lcom/google/common/cache/bd;

    move-result-object v0

    return-object v0
.end method
