.class final Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardCapturer"
.end annotation


# instance fields
.field private final id:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeResolver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>()V

    return-void
.end method

.method private capture([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3
    .parameter "types"

    .prologue
    .line 375
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/reflect/Type;

    .line 376
    .local v1, result:[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 377
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v1, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-object v1
.end method

.method private captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .parameter "type"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 9
    .parameter "type"

    .prologue
    .line 333
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    instance-of v6, p1, Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 361
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 337
    .restart local p1
    :cond_1
    instance-of v6, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v6, :cond_0

    .line 340
    instance-of v6, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 341
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 342
    .local v0, arrayType:Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    .line 344
    .end local v0           #arrayType:Ljava/lang/reflect/GenericArrayType;
    :cond_2
    instance-of v6, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    move-object v3, p1

    .line 345
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 346
    .local v3, parameterizedType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_0

    .line 351
    .end local v3           #parameterizedType:Ljava/lang/reflect/ParameterizedType;
    :cond_3
    instance-of v6, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_4

    move-object v5, p1

    .line 352
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 353
    .local v5, wildcardType:Ljava/lang/reflect/WildcardType;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 354
    .local v1, lowerBounds:[Ljava/lang/reflect/Type;
    array-length v6, v1

    if-nez v6, :cond_0

    .line 355
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 356
    .local v4, upperBounds:[Ljava/lang/reflect/Type;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "capture#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-of ? extends "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x26

    invoke-static {v7}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, name:Ljava/lang/String;
    const-class v6, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/google/common/reflect/Types;->newTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto/16 :goto_0

    .line 364
    .end local v1           #lowerBounds:[Ljava/lang/reflect/Type;
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #upperBounds:[Ljava/lang/reflect/Type;
    .end local v5           #wildcardType:Ljava/lang/reflect/WildcardType;
    :cond_4
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "must have been one of the known types"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method
