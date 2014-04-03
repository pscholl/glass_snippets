.class final Lcom/google/glass/entity/g;
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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/entity/o;->a:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/entity/o;->a:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/glass/entity/o;

    invoke-static {p1}, Lcom/google/glass/entity/g;->a(Lcom/google/glass/entity/o;)Z

    move-result v0

    return v0
.end method
