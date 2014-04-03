.class Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;,
        Lcom/google/common/collect/RegularImmutableBiMap$Inverse;,
        Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;,
        Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final MAX_LOAD_FACTOR:D = 1.2


# instance fields
.field private final transient entries:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private transient inverse:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient kToVTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient vToKTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p1, entriesToAdd:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 88
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    .line 89
    .local v13, n:I
    const-wide v23, 0x3ff3333333333333L

    move-wide/from16 v0, v23

    invoke-static {v13, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v17

    .line 90
    .local v17, tableSize:I
    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    .line 91
    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v9

    .line 92
    .local v9, kToVTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v19

    .line 93
    .local v19, vToKTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    invoke-static {v13}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v2

    .line 94
    .local v2, entries:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    const/4 v5, 0x0

    .line 95
    .local v5, i:I
    const/4 v4, 0x0

    .line 97
    .local v4, hashCode:I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 98
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 99
    .local v10, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 101
    .local v20, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 102
    .local v12, keyHash:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->hashCode()I

    move-result v22

    .line 103
    .local v22, valueHash:I
    invoke-static {v12}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v24, v0

    and-int v11, v23, v24

    .line 104
    .local v11, keyBucket:I
    invoke-static/range {v22 .. v22}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    move/from16 v24, v0

    and-int v21, v23, v24

    .line 106
    .local v21, valueBucket:I
    aget-object v15, v9, v11

    .line 107
    .local v15, nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    move-object v8, v15

    .local v8, kToVEntry:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v8, :cond_1

    .line 109
    invoke-virtual {v8}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 110
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Multiple entries with same key: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " and "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 107
    :cond_0
    invoke-virtual {v8}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getNextInKToVBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v8

    goto :goto_1

    .line 114
    :cond_1
    aget-object v16, v19, v21

    .line 115
    .local v16, nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    move-object/from16 v18, v16

    .local v18, vToKEntry:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v18, :cond_3

    .line 117
    invoke-virtual/range {v18 .. v18}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 118
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Multiple entries with same value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " and "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 115
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getNextInVToKBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v18

    goto :goto_2

    .line 122
    :cond_3
    if-nez v15, :cond_4

    if-nez v16, :cond_4

    new-instance v14, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-object/from16 v0, v20

    invoke-direct {v14, v10, v0}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .local v14, newEntry:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    :goto_3
    aput-object v14, v9, v11

    .line 126
    aput-object v14, v19, v21

    .line 127
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    aput-object v14, v2, v5

    .line 128
    xor-int v23, v12, v22

    add-int v4, v4, v23

    move v5, v6

    .line 129
    .end local v6           #i:I
    .restart local v5       #i:I
    goto/16 :goto_0

    .line 122
    .end local v14           #newEntry:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    :cond_4
    new-instance v14, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v14, v10, v0, v15, v1}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;)V

    goto :goto_3

    .line 131
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v8           #kToVEntry:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    .end local v10           #key:Ljava/lang/Object;,"TK;"
    .end local v11           #keyBucket:I
    .end local v12           #keyHash:I
    .end local v15           #nextInKToVBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    .end local v16           #nextInVToKBucket:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    .end local v18           #vToKEntry:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    .end local v20           #value:Ljava/lang/Object;,"TV;"
    .end local v21           #valueBucket:I
    .end local v22           #valueHash:I
    :cond_5
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/common/collect/RegularImmutableBiMap;->kToVTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    .line 132
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/RegularImmutableBiMap;->vToKTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    .line 133
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    .line 134
    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->vToKTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method

.method private static createEntryArray(I)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;
    .locals 1
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 139
    new-array v0, p0, [Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    return-object v0
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$1;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 145
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-object v2

    .line 148
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v3

    iget v4, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int v0, v3, v4

    .line 149
    .local v0, bucket:I
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableBiMap;->kToVTable:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    aget-object v1, v3, v0

    .local v1, entry:Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;,"Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getNextInKToVBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 203
    .local v0, result:Lcom/google/common/collect/ImmutableBiMap;,"Lcom/google/common/collect/ImmutableBiMap<TV;TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    .end local v0           #result:Lcom/google/common/collect/ImmutableBiMap;,"Lcom/google/common/collect/ImmutableBiMap<TV;TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    :cond_0
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 191
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 195
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    array-length v0, v0

    return v0
.end method
