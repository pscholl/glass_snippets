.class final enum Lcom/google/common/hash/Funnels$LongFunnel;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/common/hash/Funnel;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/Funnels$LongFunnel;

.field public static final enum INSTANCE:Lcom/google/common/hash/Funnels$LongFunnel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/common/hash/Funnels$LongFunnel;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$LongFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$LongFunnel;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$LongFunnel;

    sget-object v1, Lcom/google/common/hash/Funnels$LongFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$LongFunnel;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$LongFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$LongFunnel;
    .locals 1

    const-class v0, Lcom/google/common/hash/Funnels$LongFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$LongFunnel;
    .locals 1

    sget-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$LongFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$LongFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method


# virtual methods
.method public final funnel(Ljava/lang/Long;Lcom/google/common/hash/q;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/hash/q;->b(J)Lcom/google/common/hash/q;

    return-void
.end method

.method public final bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/q;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$LongFunnel;->funnel(Ljava/lang/Long;Lcom/google/common/hash/q;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Funnels.longFunnel()"

    return-object v0
.end method
