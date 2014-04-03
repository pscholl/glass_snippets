.class final Lcom/google/common/base/r;
.super Lcom/google/common/base/c;


# instance fields
.field final p:Lcom/google/common/base/c;

.field final q:Lcom/google/common/base/c;


# direct methods
.method constructor <init>(Lcom/google/common/base/c;Lcom/google/common/base/c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.or("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/base/r;-><init>(Lcom/google/common/base/c;Lcom/google/common/base/c;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/c;Lcom/google/common/base/c;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/google/common/base/c;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/c;

    iput-object v0, p0, Lcom/google/common/base/r;->p:Lcom/google/common/base/c;

    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/c;

    iput-object v0, p0, Lcom/google/common/base/r;->q:Lcom/google/common/base/c;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/common/base/c;
    .locals 3

    new-instance v0, Lcom/google/common/base/r;

    iget-object v1, p0, Lcom/google/common/base/r;->p:Lcom/google/common/base/c;

    iget-object v2, p0, Lcom/google/common/base/r;->q:Lcom/google/common/base/c;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/base/r;-><init>(Lcom/google/common/base/c;Lcom/google/common/base/c;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/c;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/r;->p:Lcom/google/common/base/c;

    invoke-virtual {v0, p1}, Lcom/google/common/base/c;->b(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/r;->q:Lcom/google/common/base/c;

    invoke-virtual {v0, p1}, Lcom/google/common/base/c;->b(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
