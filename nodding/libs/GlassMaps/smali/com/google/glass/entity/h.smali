.class final Lcom/google/glass/entity/h;
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
    .locals 1

    iget-object v0, p0, Lcom/google/glass/entity/o;->a:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/glass/entity/o;

    invoke-static {p1}, Lcom/google/glass/entity/h;->a(Lcom/google/glass/entity/o;)Z

    move-result v0

    return v0
.end method
