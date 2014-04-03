.class abstract enum Lcom/google/common/hash/BloomFilterStrategies;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/common/hash/BloomFilter$Strategy;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/BloomFilterStrategies;

.field public static final enum MURMUR128_MITZ_32:Lcom/google/common/hash/BloomFilterStrategies;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/common/hash/BloomFilterStrategies$1;

    const-string v1, "MURMUR128_MITZ_32"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/BloomFilterStrategies$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/BloomFilterStrategies;->MURMUR128_MITZ_32:Lcom/google/common/hash/BloomFilterStrategies;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/BloomFilterStrategies;

    sget-object v1, Lcom/google/common/hash/BloomFilterStrategies;->MURMUR128_MITZ_32:Lcom/google/common/hash/BloomFilterStrategies;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/hash/BloomFilterStrategies;->$VALUES:[Lcom/google/common/hash/BloomFilterStrategies;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/BloomFilterStrategies;
    .locals 1

    const-class v0, Lcom/google/common/hash/BloomFilterStrategies;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/BloomFilterStrategies;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/BloomFilterStrategies;
    .locals 1

    sget-object v0, Lcom/google/common/hash/BloomFilterStrategies;->$VALUES:[Lcom/google/common/hash/BloomFilterStrategies;

    invoke-virtual {v0}, [Lcom/google/common/hash/BloomFilterStrategies;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/BloomFilterStrategies;

    return-object v0
.end method
