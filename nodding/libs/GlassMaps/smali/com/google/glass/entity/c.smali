.class final Lcom/google/glass/entity/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/v;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/glass/entity/o;)Lcom/google/googlex/glass/common/proto/ac;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/entity/o;->a:Lcom/google/googlex/glass/common/proto/ac;

    return-object v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/glass/entity/o;

    invoke-static {p1}, Lcom/google/glass/entity/c;->a(Lcom/google/glass/entity/o;)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v0

    return-object v0
.end method
