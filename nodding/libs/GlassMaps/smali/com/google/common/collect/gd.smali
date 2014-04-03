.class final Lcom/google/common/collect/gd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/bo;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gd;->b:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iput-object p2, p0, Lcom/google/common/collect/gd;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/gd;->b:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iget-object v0, v0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/fr;

    iget-object v1, p0, Lcom/google/common/collect/gd;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/fr;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
