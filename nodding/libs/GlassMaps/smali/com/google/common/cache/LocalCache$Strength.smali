.class abstract enum Lcom/google/common/cache/LocalCache$Strength;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/LocalCache$Strength;

.field public static final enum SOFT:Lcom/google/common/cache/LocalCache$Strength;

.field public static final enum STRONG:Lcom/google/common/cache/LocalCache$Strength;

.field public static final enum WEAK:Lcom/google/common/cache/LocalCache$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/common/cache/LocalCache$Strength$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/LocalCache$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    new-instance v0, Lcom/google/common/cache/LocalCache$Strength$2;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lcom/google/common/cache/LocalCache$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/LocalCache$Strength;->SOFT:Lcom/google/common/cache/LocalCache$Strength;

    new-instance v0, Lcom/google/common/cache/LocalCache$Strength$3;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v4}, Lcom/google/common/cache/LocalCache$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->SOFT:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/cache/LocalCache$Strength;->$VALUES:[Lcom/google/common/cache/LocalCache$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/LocalCache$Strength;
    .locals 1

    const-class v0, Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method public static values()[Lcom/google/common/cache/LocalCache$Strength;
    .locals 1

    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->$VALUES:[Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v0}, [Lcom/google/common/cache/LocalCache$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method


# virtual methods
.method abstract defaultEquivalence()Lcom/google/common/base/Equivalence;
.end method

.method abstract referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/y;Ljava/lang/Object;I)Lcom/google/common/cache/ah;
.end method
