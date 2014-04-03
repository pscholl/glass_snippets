.class Lcom/google/common/reflect/TypeResolver;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeResolver$WildcardCapturer;,
        Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;
    }
.end annotation


# instance fields
.field private final typeTable:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    .line 58
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, typeTable:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/reflect/TypeResolver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method static accordingTo(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .locals 2
    .parameter "type"

    .prologue
    .line 65
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    invoke-static {p0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->getTypeMappings(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    return-object v0
.end method

.method private static varargs checkNonNullArgument(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "format"
    .parameter "messageParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, arg:Ljava/lang/Object;,"TT;"
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 231
    return-object p0

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static expectArgument(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 17
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, mappings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 145
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local p1
    :cond_1
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v12, :cond_2

    .line 111
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1
    invoke-interface/range {p0 .. p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    .restart local p1
    :cond_2
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v12, :cond_3

    .line 113
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    const-string v14, "%s is not an array type."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    invoke-static {v12, v14, v15}, Lcom/google/common/reflect/TypeResolver;->checkNonNullArgument(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Type;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v12}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 115
    .restart local p1
    :cond_3
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v12, :cond_5

    move-object/from16 v3, p1

    .line 116
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 117
    .local v3, fromParameterizedType:Ljava/lang/reflect/ParameterizedType;
    const-class v12, Ljava/lang/reflect/ParameterizedType;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/google/common/reflect/TypeResolver;->expectArgument(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    .line 118
    .local v9, toParameterizedType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "Inconsistent raw type: %s vs. %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 121
    .local v1, fromArgs:[Ljava/lang/reflect/Type;
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 122
    .local v7, toArgs:[Ljava/lang/reflect/Type;
    array-length v12, v1

    array-length v13, v7

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 123
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v12, v1

    if-ge v6, v12, :cond_0

    .line 124
    aget-object v12, v1, v6

    aget-object v13, v7, v6

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 123
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 122
    .end local v6           #i:I
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 126
    .end local v1           #fromArgs:[Ljava/lang/reflect/Type;
    .end local v3           #fromParameterizedType:Ljava/lang/reflect/ParameterizedType;
    .end local v7           #toArgs:[Ljava/lang/reflect/Type;
    .end local v9           #toParameterizedType:Ljava/lang/reflect/ParameterizedType;
    :cond_5
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v12, :cond_8

    move-object/from16 v5, p1

    .line 127
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 128
    .local v5, fromWildcardType:Ljava/lang/reflect/WildcardType;
    const-class v12, Ljava/lang/reflect/WildcardType;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/google/common/reflect/TypeResolver;->expectArgument(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/WildcardType;

    .line 129
    .local v11, toWildcardType:Ljava/lang/reflect/WildcardType;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 130
    .local v4, fromUpperBounds:[Ljava/lang/reflect/Type;
    invoke-interface {v11}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    .line 131
    .local v10, toUpperBounds:[Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 132
    .local v2, fromLowerBounds:[Ljava/lang/reflect/Type;
    invoke-interface {v11}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 133
    .local v8, toLowerBounds:[Ljava/lang/reflect/Type;
    array-length v12, v4

    array-length v13, v10

    if-ne v12, v13, :cond_6

    array-length v12, v2

    array-length v13, v8

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    :goto_3
    const-string v13, "Incompatible type: %s vs. %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_4
    array-length v12, v4

    if-ge v6, v12, :cond_7

    .line 137
    aget-object v12, v4, v6

    aget-object v13, v10, v6

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 136
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 133
    .end local v6           #i:I
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 139
    .restart local v6       #i:I
    :cond_7
    const/4 v6, 0x0

    :goto_5
    array-length v12, v2

    if-ge v6, v12, :cond_0

    .line 140
    aget-object v12, v2, v6

    aget-object v13, v8, v6

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 139
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 143
    .end local v2           #fromLowerBounds:[Ljava/lang/reflect/Type;
    .end local v4           #fromUpperBounds:[Ljava/lang/reflect/Type;
    .end local v5           #fromWildcardType:Ljava/lang/reflect/WildcardType;
    .end local v6           #i:I
    .end local v8           #toLowerBounds:[Ljava/lang/reflect/Type;
    .end local v10           #toUpperBounds:[Ljava/lang/reflect/Type;
    .end local v11           #toWildcardType:Ljava/lang/reflect/WildcardType;
    :cond_8
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No type mapping from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method private resolveGenericArrayType(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 2
    .parameter "type"

    .prologue
    .line 178
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 179
    .local v0, componentType:Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method private resolveParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 7
    .parameter "type"

    .prologue
    .line 216
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 217
    .local v1, owner:Ljava/lang/reflect/Type;
    if-nez v1, :cond_0

    const/4 v3, 0x0

    .line 218
    .local v3, resolvedOwner:Ljava/lang/reflect/Type;
    :goto_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 220
    .local v4, resolvedRawType:Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 221
    .local v5, vars:[Ljava/lang/reflect/Type;
    array-length v6, v5

    new-array v2, v6, [Ljava/lang/reflect/Type;

    .line 222
    .local v2, resolvedArgs:[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 223
    aget-object v6, v5, v0

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    aput-object v6, v2, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    .end local v0           #i:I
    .end local v2           #resolvedArgs:[Ljava/lang/reflect/Type;
    .end local v3           #resolvedOwner:Ljava/lang/reflect/Type;
    .end local v4           #resolvedRawType:Ljava/lang/reflect/Type;
    .end local v5           #vars:[Ljava/lang/reflect/Type;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_0

    .line 225
    .restart local v0       #i:I
    .restart local v2       #resolvedArgs:[Ljava/lang/reflect/Type;
    .restart local v3       #resolvedOwner:Ljava/lang/reflect/Type;
    .restart local v4       #resolvedRawType:Ljava/lang/reflect/Type;
    .restart local v5       #vars:[Ljava/lang/reflect/Type;
    :cond_1
    check-cast v4, Ljava/lang/Class;

    .end local v4           #resolvedRawType:Ljava/lang/reflect/Type;
    invoke-static {v3, v4, v2}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v6

    return-object v6
.end method

.method private resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, var:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    move-object v1, p0

    .line 184
    .local v1, unguarded:Lcom/google/common/reflect/TypeResolver;
    new-instance v0, Lcom/google/common/reflect/TypeResolver$1;

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/google/common/reflect/TypeResolver$1;-><init>(Lcom/google/common/reflect/TypeResolver;Lcom/google/common/collect/ImmutableMap;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver;)V

    .line 193
    .local v0, guarded:Lcom/google/common/reflect/TypeResolver;
    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/TypeResolver;->resolveTypeVariable(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method

.method private resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3
    .parameter "types"

    .prologue
    .line 170
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/reflect/Type;

    .line 171
    .local v1, result:[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 172
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .parameter "type"

    .prologue
    .line 152
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_1

    .line 154
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 165
    :cond_0
    :goto_0
    return-object p1

    .line 155
    .restart local p1
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 156
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_0

    .line 157
    .restart local p1
    :cond_2
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_3

    .line 158
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveGenericArrayType(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    .line 159
    .restart local p1
    :cond_3
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 160
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 161
    .local v0, wildcardType:Ljava/lang/reflect/WildcardType;
    new-instance p1, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    .end local p1
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method

.method resolveTypeVariable(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver;)Ljava/lang/reflect/Type;
    .locals 5
    .parameter
    .parameter "guardedResolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lcom/google/common/reflect/TypeResolver;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, var:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 204
    .local v1, type:Ljava/lang/reflect/Type;
    if-nez v1, :cond_1

    .line 205
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 206
    .local v0, bounds:[Ljava/lang/reflect/Type;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 212
    .end local v0           #bounds:[Ljava/lang/reflect/Type;
    .end local p1           #var:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    :goto_0
    return-object p1

    .line 209
    .restart local v0       #bounds:[Ljava/lang/reflect/Type;
    .restart local p1       #var:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/common/reflect/Types;->newTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto :goto_0

    .line 212
    .end local v0           #bounds:[Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual {p2, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0
.end method

.method public final where(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .locals 3
    .parameter "formal"
    .parameter "actual"

    .prologue
    .line 88
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 89
    .local v0, mappings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-static {v0, v1, v2}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v1

    return-object v1
.end method

.method final where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/TypeResolver;"
        }
    .end annotation

    .prologue
    .local p1, mappings:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/reflect/TypeVariable<*>;+Ljava/lang/reflect/Type;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 95
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 96
    .local v0, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    iget-object v5, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 97
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 98
    .local v2, mapping:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+Ljava/lang/reflect/TypeVariable<*>;+Ljava/lang/reflect/Type;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .line 99
    .local v4, variable:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    .line 100
    .local v3, type:Ljava/lang/reflect/Type;
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_1
    const-string v8, "Type variable %s bound to itself"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v7

    invoke-static {v5, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_0
    move v5, v7

    .line 100
    goto :goto_1

    .line 103
    .end local v2           #mapping:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+Ljava/lang/reflect/TypeVariable<*>;+Ljava/lang/reflect/Type;>;"
    .end local v3           #type:Ljava/lang/reflect/Type;
    .end local v4           #variable:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    new-instance v5, Lcom/google/common/reflect/TypeResolver;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v5
.end method
