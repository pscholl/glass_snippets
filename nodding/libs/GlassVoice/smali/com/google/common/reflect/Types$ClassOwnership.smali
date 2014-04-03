.class abstract enum Lcom/google/common/reflect/Types$ClassOwnership;
.super Ljava/lang/Enum;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "ClassOwnership"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/reflect/Types$ClassOwnership;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/reflect/Types$ClassOwnership;

.field static final JVM_BEHAVIOR:Lcom/google/common/reflect/Types$ClassOwnership;

.field public static final enum LOCAL_CLASS_HAS_NO_OWNER:Lcom/google/common/reflect/Types$ClassOwnership;

.field public static final enum OWNED_BY_ENCLOSING_CLASS:Lcom/google/common/reflect/Types$ClassOwnership;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lcom/google/common/reflect/Types$ClassOwnership$1;

    const-string v1, "OWNED_BY_ENCLOSING_CLASS"

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/Types$ClassOwnership$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$ClassOwnership;->OWNED_BY_ENCLOSING_CLASS:Lcom/google/common/reflect/Types$ClassOwnership;

    .line 111
    new-instance v0, Lcom/google/common/reflect/Types$ClassOwnership$2;

    const-string v1, "LOCAL_CLASS_HAS_NO_OWNER"

    invoke-direct {v0, v1, v3}, Lcom/google/common/reflect/Types$ClassOwnership$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$ClassOwnership;->LOCAL_CLASS_HAS_NO_OWNER:Lcom/google/common/reflect/Types$ClassOwnership;

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/reflect/Types$ClassOwnership;

    sget-object v1, Lcom/google/common/reflect/Types$ClassOwnership;->OWNED_BY_ENCLOSING_CLASS:Lcom/google/common/reflect/Types$ClassOwnership;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/reflect/Types$ClassOwnership;->LOCAL_CLASS_HAS_NO_OWNER:Lcom/google/common/reflect/Types$ClassOwnership;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/reflect/Types$ClassOwnership;->$VALUES:[Lcom/google/common/reflect/Types$ClassOwnership;

    .line 126
    invoke-static {}, Lcom/google/common/reflect/Types$ClassOwnership;->detectJvmBehavior()Lcom/google/common/reflect/Types$ClassOwnership;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/Types$ClassOwnership;->JVM_BEHAVIOR:Lcom/google/common/reflect/Types$ClassOwnership;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/Types$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/Types$ClassOwnership;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static detectJvmBehavior()Lcom/google/common/reflect/Types$ClassOwnership;
    .locals 8

    .prologue
    .line 130
    new-instance v6, Lcom/google/common/reflect/Types$ClassOwnership$3;

    invoke-direct {v6}, Lcom/google/common/reflect/Types$ClassOwnership$3;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 131
    .local v5, subclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 132
    .local v4, parameterizedType:Ljava/lang/reflect/ParameterizedType;
    invoke-static {}, Lcom/google/common/reflect/Types$ClassOwnership;->values()[Lcom/google/common/reflect/Types$ClassOwnership;

    move-result-object v0

    .local v0, arr$:[Lcom/google/common/reflect/Types$ClassOwnership;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 133
    .local v1, behavior:Lcom/google/common/reflect/Types$ClassOwnership;
    const-class v6, Lcom/google/common/reflect/Types$ClassOwnership$1LocalClass;

    invoke-virtual {v1, v6}, Lcom/google/common/reflect/Types$ClassOwnership;->getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 134
    return-object v1

    .line 132
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v1           #behavior:Lcom/google/common/reflect/Types$ClassOwnership;
    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/Types$ClassOwnership;
    .locals 1
    .parameter "name"

    .prologue
    .line 102
    const-class v0, Lcom/google/common/reflect/Types$ClassOwnership;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/reflect/Types$ClassOwnership;

    return-object v0
.end method

.method public static values()[Lcom/google/common/reflect/Types$ClassOwnership;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/common/reflect/Types$ClassOwnership;->$VALUES:[Lcom/google/common/reflect/Types$ClassOwnership;

    invoke-virtual {v0}, [Lcom/google/common/reflect/Types$ClassOwnership;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/Types$ClassOwnership;

    return-object v0
.end method


# virtual methods
.method abstract getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
