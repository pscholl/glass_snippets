.class final Lcom/google/common/collect/hm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/hr;


# instance fields
.field final synthetic a:Lcom/google/common/base/v;


# direct methods
.method constructor <init>(Lcom/google/common/base/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/hm;->a:Lcom/google/common/base/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/hm;->a:Lcom/google/common/base/v;

    invoke-interface {v0, p2}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
