.class final Lcom/google/common/collect/fh;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/common/collect/fm;

.field b:Lcom/google/common/collect/fm;

.field c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/fm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/fm;

    iput-object p1, p0, Lcom/google/common/collect/fh;->b:Lcom/google/common/collect/fm;

    iput-object v0, p1, Lcom/google/common/collect/fm;->f:Lcom/google/common/collect/fm;

    iput-object v0, p1, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fm;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fh;->c:I

    return-void
.end method
