.class final Lcom/google/glass/entity/k;
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

    sget-object v0, Lcom/google/glass/entity/b;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/glass/entity/o;->a:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/glass/entity/o;

    invoke-static {p1}, Lcom/google/glass/entity/k;->a(Lcom/google/glass/entity/o;)Z

    move-result v0

    return v0
.end method
