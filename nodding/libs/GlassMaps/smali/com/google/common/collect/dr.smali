.class final Lcom/google/common/collect/dr;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/common/collect/ki;

.field static final b:Lcom/google/common/collect/ki;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/google/common/collect/kg;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ki;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/dr;->a:Lcom/google/common/collect/ki;

    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "size"

    invoke-static {v0, v1}, Lcom/google/common/collect/kg;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ki;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/dr;->b:Lcom/google/common/collect/ki;

    return-void
.end method
