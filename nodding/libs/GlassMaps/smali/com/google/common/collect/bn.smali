.class final Lcom/google/common/collect/bn;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/common/collect/ki;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    const-string v1, "countMap"

    invoke-static {v0, v1}, Lcom/google/common/collect/kg;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ki;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/bn;->a:Lcom/google/common/collect/ki;

    return-void
.end method
