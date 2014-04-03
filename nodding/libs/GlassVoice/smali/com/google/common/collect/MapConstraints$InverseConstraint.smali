.class Lcom/google/common/collect/MapConstraints$InverseConstraint;
.super Ljava/lang/Object;
.source "MapConstraints.java"

# interfaces
.implements Lcom/google/common/collect/MapConstraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InverseConstraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapConstraint",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final constraint:Lcom/google/common/collect/MapConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapConstraint",
            "<-TV;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapConstraint;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapConstraint",
            "<-TV;-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, this:Lcom/google/common/collect/MapConstraints$InverseConstraint;,"Lcom/google/common/collect/MapConstraints$InverseConstraint<TK;TV;>;"
    .local p1, constraint:Lcom/google/common/collect/MapConstraint;,"Lcom/google/common/collect/MapConstraint<-TV;-TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapConstraint;

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$InverseConstraint;->constraint:Lcom/google/common/collect/MapConstraint;

    .line 393
    return-void
.end method


# virtual methods
.method public checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, this:Lcom/google/common/collect/MapConstraints$InverseConstraint;,"Lcom/google/common/collect/MapConstraints$InverseConstraint<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$InverseConstraint;->constraint:Lcom/google/common/collect/MapConstraint;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 397
    return-void
.end method
