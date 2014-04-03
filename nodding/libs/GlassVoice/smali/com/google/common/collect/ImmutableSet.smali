.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSet$Builder;,
        Lcom/google/common/collect/ImmutableSet$SerializedForm;,
        Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CUTOFF:I = 0x0

.field private static final DESIRED_LOAD_FACTOR:D = 0.7

.field static final MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 235
    const-wide v0, 0x41c6666666666666L

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/google/common/collect/ImmutableSet;->CUTOFF:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 391
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method static synthetic access$000(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method static chooseTableSize(I)I
    .locals 5
    .parameter "setSize"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v0, 0x4000

    .line 248
    sget v1, Lcom/google/common/collect/ImmutableSet;->CUTOFF:I

    if-ge p0, v1, :cond_0

    .line 250
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 251
    .local v0, tableSize:I
    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 252
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v0           #tableSize:I
    :cond_0
    if-ge p0, v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    const-string v2, "collection too large"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 259
    :cond_1
    return v0

    .line 258
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static varargs construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 20
    .parameter "n"
    .parameter "elements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 178
    packed-switch p0, :pswitch_data_0

    .line 188
    invoke-static/range {p0 .. p0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v14

    .line 189
    .local v14, tableSize:I
    new-array v13, v14, [Ljava/lang/Object;

    .line 190
    .local v13, table:[Ljava/lang/Object;
    add-int/lit8 v12, v14, -0x1

    .line 191
    .local v12, mask:I
    const/4 v8, 0x0

    .line 192
    .local v8, hashCode:I
    const/16 v16, 0x0

    .line 193
    .local v16, uniques:I
    const/4 v9, 0x0

    .local v9, i:I
    move/from16 v17, v16

    .end local v16           #uniques:I
    .local v17, uniques:I
    :goto_0
    move/from16 v0, p0

    if-ge v9, v0, :cond_2

    .line 194
    aget-object v19, p1, v9

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/google/common/collect/ObjectArrays;->checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 195
    .local v5, element:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 196
    .local v7, hash:I
    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v11

    .line 197
    .local v11, j:I
    :goto_1
    and-int v10, v11, v12

    .line 198
    .local v10, index:I
    aget-object v18, v13, v10

    .line 199
    .local v18, value:Ljava/lang/Object;
    if-nez v18, :cond_0

    .line 201
    add-int/lit8 v16, v17, 0x1

    .end local v17           #uniques:I
    .restart local v16       #uniques:I
    aput-object v5, p1, v17

    .line 202
    aput-object v5, v13, v10

    .line 203
    add-int/2addr v8, v7

    .line 193
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v16

    .end local v16           #uniques:I
    .restart local v17       #uniques:I
    goto :goto_0

    .line 180
    .end local v5           #element:Ljava/lang/Object;
    .end local v7           #hash:I
    .end local v8           #hashCode:I
    .end local v9           #i:I
    .end local v10           #index:I
    .end local v11           #j:I
    .end local v12           #mask:I
    .end local v13           #table:[Ljava/lang/Object;
    .end local v14           #tableSize:I
    .end local v17           #uniques:I
    .end local v18           #value:Ljava/lang/Object;
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v19

    .line 224
    :goto_3
    return-object v19

    .line 183
    :pswitch_1
    const/16 v19, 0x0

    aget-object v4, p1, v19

    .line 184
    .local v4, elem:Ljava/lang/Object;,"TE;"
    invoke-static {v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v19

    goto :goto_3

    .line 205
    .end local v4           #elem:Ljava/lang/Object;,"TE;"
    .restart local v5       #element:Ljava/lang/Object;
    .restart local v7       #hash:I
    .restart local v8       #hashCode:I
    .restart local v9       #i:I
    .restart local v10       #index:I
    .restart local v11       #j:I
    .restart local v12       #mask:I
    .restart local v13       #table:[Ljava/lang/Object;
    .restart local v14       #tableSize:I
    .restart local v17       #uniques:I
    .restart local v18       #value:Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    move/from16 v16, v17

    .line 206
    .end local v17           #uniques:I
    .restart local v16       #uniques:I
    goto :goto_2

    .line 196
    .end local v16           #uniques:I
    .restart local v17       #uniques:I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 210
    .end local v5           #element:Ljava/lang/Object;
    .end local v7           #hash:I
    .end local v10           #index:I
    .end local v11           #j:I
    .end local v18           #value:Ljava/lang/Object;
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, p0

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 211
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 215
    const/16 v19, 0x0

    aget-object v6, p1, v19

    .line 216
    .local v6, element:Ljava/lang/Object;,"TE;"
    new-instance v19, Lcom/google/common/collect/SingletonImmutableSet;

    move-object/from16 v0, v19

    invoke-direct {v0, v6, v8}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    goto :goto_3

    .line 217
    .end local v6           #element:Ljava/lang/Object;,"TE;"
    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v19

    move/from16 v0, v19

    if-eq v14, v0, :cond_4

    .line 220
    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v19

    goto :goto_3

    .line 222
    :cond_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v15

    .line 224
    .local v15, uniqueElements:[Ljava/lang/Object;
    :goto_4
    new-instance v19, Lcom/google/common/collect/RegularImmutableSet;

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v8, v13, v12}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_3

    .end local v15           #uniqueElements:[Ljava/lang/Object;
    :cond_5
    move-object/from16 v15, p1

    .line 222
    goto :goto_4

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 376
    .local v0, elements:[Ljava/lang/Object;
    array-length v2, v0

    packed-switch v2, :pswitch_data_0

    .line 387
    array-length v2, v0

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    :goto_0
    return-object v2

    .line 378
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    goto :goto_0

    .line 382
    :pswitch_1
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 383
    .local v1, onlyElement:Ljava/lang/Object;,"TE;"
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    instance-of v3, p0, Lcom/google/common/collect/ImmutableSet;

    if-eqz v3, :cond_0

    instance-of v3, p0, Lcom/google/common/collect/ImmutableSortedSet;

    if-nez v3, :cond_0

    move-object v2, p0

    .line 360
    check-cast v2, Lcom/google/common/collect/ImmutableSet;

    .line 361
    .local v2, set:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->isPartialView()Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    .end local v2           #set:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    :goto_0
    return-object v2

    .line 364
    :cond_0
    instance-of v3, p0, Ljava/util/EnumSet;

    if-eqz v3, :cond_1

    .line 365
    check-cast p0, Ljava/util/EnumSet;

    .end local p0           #elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    .line 368
    .local v0, enumSet:Ljava/util/EnumSet;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .local v1, result:Lcom/google/common/collect/ImmutableSet;
    move-object v2, v1

    .line 369
    goto :goto_0

    .line 371
    .end local v0           #enumSet:Ljava/util/EnumSet;
    .end local v1           #result:Lcom/google/common/collect/ImmutableSet;
    .restart local p0       #elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    .line 317
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 318
    .local v0, first:Ljava/lang/Object;,"TE;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    goto :goto_0

    .line 321
    :cond_1
    new-instance v1, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    goto :goto_0
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 279
    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 275
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 277
    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static of()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSet;->INSTANCE:Lcom/google/common/collect/EmptyImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    const/4 v2, 0x2

    .line 105
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    const/4 v2, 0x3

    .line 116
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    const/4 v2, 0x4

    .line 127
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    const/4 v2, 0x5

    .line 138
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    .local p5, e6:Ljava/lang/Object;,"TE;"
    .local p6, others:[Ljava/lang/Object;,"[TE;"
    const/4 v4, 0x0

    .line 150
    const/4 v1, 0x6

    .line 151
    .local v1, paramCount:I
    array-length v2, p6

    add-int/lit8 v2, v2, 0x6

    new-array v0, v2, [Ljava/lang/Object;

    .line 152
    .local v0, elements:[Ljava/lang/Object;
    aput-object p0, v0, v4

    .line 153
    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 154
    const/4 v2, 0x2

    aput-object p2, v0, v2

    .line 155
    const/4 v2, 0x3

    aput-object p3, v0, v2

    .line 156
    const/4 v2, 0x4

    aput-object p4, v0, v2

    .line 157
    const/4 v2, 0x5

    aput-object p5, v0, v2

    .line 158
    const/4 v2, 0x6

    array-length v3, p6

    invoke-static {p6, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    array-length v2, v0

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 400
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    if-ne p1, p0, :cond_0

    .line 401
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    .line 403
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 405
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 412
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 395
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 72
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 505
    .local p0, this:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
