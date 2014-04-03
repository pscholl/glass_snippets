.class final Lcom/google/glass/entity/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/glass/entity/o;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/entity/o;->a:Lcom/google/googlex/glass/common/proto/ac;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/entity/p;->a(Lcom/google/googlex/glass/common/proto/ac;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/glass/entity/o;

    invoke-static {p1}, Lcom/google/glass/entity/m;->a(Lcom/google/glass/entity/o;)Z

    move-result v0

    return v0
.end method
