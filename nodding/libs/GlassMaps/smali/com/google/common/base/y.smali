.class final Lcom/google/common/base/y;
.super Lcom/google/common/base/x;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/common/base/x;


# direct methods
.method constructor <init>(Lcom/google/common/base/x;Lcom/google/common/base/x;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/base/y;->b:Lcom/google/common/base/x;

    iput-object p3, p0, Lcom/google/common/base/y;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/x;-><init>(Lcom/google/common/base/x;Lcom/google/common/base/y;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/common/base/y;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/y;->b:Lcom/google/common/base/x;

    invoke-virtual {v0, p1}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/common/base/x;
    .locals 2

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
