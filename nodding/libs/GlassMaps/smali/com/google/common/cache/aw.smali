.class final Lcom/google/common/cache/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/aw;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/google/common/cache/av;
    .locals 1

    new-instance v0, Lcom/google/common/cache/LongAdder;

    invoke-direct {v0}, Lcom/google/common/cache/LongAdder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/common/cache/aw;->a()Lcom/google/common/cache/av;

    move-result-object v0

    return-object v0
.end method
