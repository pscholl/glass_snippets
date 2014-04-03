.class final Lcom/google/common/base/p;
.super Lcom/google/common/base/q;


# instance fields
.field final synthetic p:C


# direct methods
.method constructor <init>(Ljava/lang/String;C)V
    .locals 0

    iput-char p2, p0, Lcom/google/common/base/p;->p:C

    invoke-direct {p0, p1}, Lcom/google/common/base/q;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/base/c;)Lcom/google/common/base/c;
    .locals 1

    iget-char v0, p0, Lcom/google/common/base/p;->p:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/c;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/c;)Lcom/google/common/base/c;

    move-result-object p1

    goto :goto_0
.end method

.method public final b(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/common/base/p;->p:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
