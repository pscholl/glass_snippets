.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$1;,
        Lcom/google/common/collect/RegularImmutableMap$EntrySet;,
        Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;,
        Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;,
        Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final MAX_LOAD_FACTOR:D = 1.2

.field private static final serialVersionUID:J


# instance fields
.field private final transient entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    .local p1, immutableEntries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 46
    array-length v6, p1

    .line 47
    .local v6, size:I
    invoke-direct {p0, v6}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v9

    iput-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .line 49
    const-wide v12, 0x3ff3333333333333L

    invoke-static {v6, v12, v13}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v8

    .line 50
    .local v8, tableSize:I
    invoke-direct {p0, v8}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v9

    iput-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .line 51
    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    .line 53
    const/4 v1, 0x0

    .local v1, entryIndex:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 56
    aget-object v0, p1, v1

    .line 57
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 58
    .local v3, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 59
    .local v4, keyHashCode:I
    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v9

    iget v12, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int v7, v9, v12

    .line 61
    .local v7, tableIndex:I
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aget-object v2, v9, v7

    .line 63
    .local v2, existing:Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;,"Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v3, v9, v2}, Lcom/google/common/collect/RegularImmutableMap;->newLinkedEntry(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v5

    .line 64
    .local v5, linkedEntry:Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;,"Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aput-object v5, v9, v7

    .line 65
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aput-object v5, v9, v1

    .line 66
    :goto_1
    if-eqz v2, :cond_1

    .line 67
    invoke-interface {v2}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v10

    :goto_2
    const-string v12, "duplicate key: %s"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v3, v13, v11

    invoke-static {v9, v12, v13}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-interface {v2}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->next()Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v2

    goto :goto_1

    :cond_0
    move v9, v11

    .line 67
    goto :goto_2

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2           #existing:Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;,"Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    .end local v3           #key:Ljava/lang/Object;,"TK;"
    .end local v4           #keyHashCode:I
    .end local v5           #linkedEntry:Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;,"Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    .end local v7           #tableIndex:I
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    return-object v0
.end method

.method private createEntryArray(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-array v0, p1, [Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    return-object v0
.end method

.method private static newLinkedEntry(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, key:Ljava/lang/Object;,"TK;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    .local p2, next:Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;,"Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    if-nez p2, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)V

    goto :goto_0
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 173
    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v4

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .local v0, arr$:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 177
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    const/4 v4, 0x1

    goto :goto_0

    .line 176
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
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
    .line 191
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;Lcom/google/common/collect/RegularImmutableMap$1;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 142
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v3

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v4

    iget v5, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int v2, v4, v5

    .line 146
    .local v2, index:I
    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aget-object v1, v4, v2

    .local v1, entry:Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;,"Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v1}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, candidateKey:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-interface {v1}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {v1}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->next()Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 168
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 186
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 163
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    array-length v0, v0

    return v0
.end method
