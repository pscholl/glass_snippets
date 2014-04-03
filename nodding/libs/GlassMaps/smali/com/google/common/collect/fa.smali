.class final Lcom/google/common/collect/fa;
.super Lcom/google/common/collect/aa;


# instance fields
.field final synthetic a:Lcom/google/common/collect/fm;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/fa;->a:Lcom/google/common/collect/fm;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fa;->a:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fa;->a:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/fa;->a:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/fa;->a:Lcom/google/common/collect/fm;

    iput-object p1, v1, Lcom/google/common/collect/fm;->b:Ljava/lang/Object;

    return-object v0
.end method
