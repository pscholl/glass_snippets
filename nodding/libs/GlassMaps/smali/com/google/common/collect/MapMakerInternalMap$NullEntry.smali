.class final enum Lcom/google/common/collect/MapMakerInternalMap$NullEntry;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/common/collect/gu;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

.field public static final enum INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->$VALUES:[Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMakerInternalMap$NullEntry;
    .locals 1

    const-class v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/MapMakerInternalMap$NullEntry;
    .locals 1

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->$VALUES:[Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    return-object v0
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getHash()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNext()Lcom/google/common/collect/gu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNextEvictable()Lcom/google/common/collect/gu;
    .locals 0

    return-object p0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/gu;
    .locals 0

    return-object p0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/gu;
    .locals 0

    return-object p0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/gu;
    .locals 0

    return-object p0
.end method

.method public final getValueReference()Lcom/google/common/collect/hc;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 0

    return-void
.end method

.method public final setNextEvictable(Lcom/google/common/collect/gu;)V
    .locals 0

    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/gu;)V
    .locals 0

    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/gu;)V
    .locals 0

    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/gu;)V
    .locals 0

    return-void
.end method

.method public final setValueReference(Lcom/google/common/collect/hc;)V
    .locals 0

    return-void
.end method
