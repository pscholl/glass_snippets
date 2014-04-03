.class final Lcom/google/common/base/g;
.super Lcom/google/common/base/q;


# instance fields
.field final synthetic p:C

.field final synthetic q:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    iput-char p2, p0, Lcom/google/common/base/g;->p:C

    iput-char p3, p0, Lcom/google/common/base/g;->q:C

    invoke-direct {p0, p1}, Lcom/google/common/base/q;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/common/base/g;->p:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/google/common/base/g;->q:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
