.class final Lcom/google/common/collect/bf;
.super Lcom/google/common/collect/bd;


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/bd;-><init>(Lcom/google/common/collect/be;)V

    iput p1, p0, Lcom/google/common/collect/bf;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/bd;
    .locals 0

    return-object p0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/bf;->a:I

    return v0
.end method
