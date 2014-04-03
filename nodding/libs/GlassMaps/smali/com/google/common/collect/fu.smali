.class final Lcom/google/common/collect/fu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/bo;


# instance fields
.field final synthetic a:Lcom/google/common/collect/ft;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ft;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/fu;->a:Lcom/google/common/collect/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/fu;->a:Lcom/google/common/collect/ft;

    iget-object v0, v0, Lcom/google/common/collect/ft;->b:Lcom/google/common/collect/fr;

    iget-object v1, p0, Lcom/google/common/collect/fu;->a:Lcom/google/common/collect/ft;

    invoke-virtual {v1}, Lcom/google/common/collect/ft;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/fr;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
