.class Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;


# static fields
.field static final MAX_LOAD_FACTOR:D = 1.2


# instance fields
.field private final transient entries:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

.field private final transient hashCode:I

.field private transient inverse:Lcom/google/common/collect/ImmutableBiMap;

.field private final transient kToVTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

.field private final transient mask:I

.field private final transient vToKTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v1

    const-wide v2, 0x3ff3333333333333L

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/db;->a(ID)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v7

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v8

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v3, v2

    move v2, v1

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v13}, Lcom/google/common/collect/db;->a(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int v15, v4, v5

    invoke-static {v14}, Lcom/google/common/collect/db;->a(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int v16, v4, v5

    aget-object v6, v7, v15

    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple entries with same key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v4}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getNextInKToVBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v4

    goto :goto_1

    :cond_1
    aget-object v5, v8, v16

    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple entries with same value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {v4}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getNextInVToKBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v4

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    if-nez v5, :cond_4

    new-instance v1, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    invoke-direct {v1, v11, v12}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    aput-object v1, v7, v15

    aput-object v1, v8, v16

    add-int/lit8 v4, v3, 0x1

    aput-object v1, v9, v3

    xor-int v1, v13, v14

    add-int/2addr v1, v2

    move v2, v1

    move v3, v4

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v1, v11, v12, v6, v5}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/common/collect/RegularImmutableBiMap;->kToVTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/common/collect/RegularImmutableBiMap;->vToKTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->vToKTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method

.method private static createEntryArray(I)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1

    new-array v0, p0, [Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$1;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/db;->a(I)I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->kToVTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    aget-object v1, v2, v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getNextInKToVBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v1

    goto :goto_1
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/az;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    array-length v0, v0

    return v0
.end method
