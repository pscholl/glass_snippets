.class public Lcom/google/glass/util/ProtoEnumUtils;
.super Ljava/lang/Object;
.source "ProtoEnumUtils.java"


# static fields
.field public static final UNSET:I = -0x80000000

.field private static enumInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ProtoEnumUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/util/ProtoEnumUtils;->enumInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEnumInfo(Ljava/lang/Class;)Ljava/util/Map;
    .locals 14
    .parameter "enumClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 30
    sget-object v9, Lcom/google/glass/util/ProtoEnumUtils;->enumInfoMap:Ljava/util/Map;

    invoke-interface {v9, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 31
    sget-object v8, Lcom/google/glass/util/ProtoEnumUtils;->enumInfoMap:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 52
    :goto_0
    return-object v8

    .line 33
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v2, enumInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 36
    .local v4, fields:[Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .line 37
    .local v5, foundOne:Z
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v3, v0, v6

    .line 38
    .local v3, field:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 41
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const/4 v5, 0x1

    .line 37
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 47
    .end local v3           #field:Ljava/lang/reflect/Field;
    :cond_2
    invoke-static {v5}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 48
    sget-object v9, Lcom/google/glass/util/ProtoEnumUtils;->enumInfoMap:Ljava/util/Map;

    invoke-interface {v9, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v2

    .line 49
    goto :goto_0

    .line 50
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v4           #fields:[Ljava/lang/reflect/Field;
    .end local v5           #foundOne:Z
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/IllegalAccessException;
    sget-object v9, Lcom/google/glass/util/ProtoEnumUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Error getting enum info for %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v9, v1, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static declared-synchronized getEnumName(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 9
    .parameter "enumClass"
    .parameter "lookupValue"

    .prologue
    .line 78
    const-class v4, Lcom/google/glass/util/ProtoEnumUtils;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/google/glass/util/ProtoEnumUtils;->getEnumInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 79
    .local v1, enumInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit v4

    return-object v3

    .line 85
    :cond_1
    :try_start_1
    sget-object v3, Lcom/google/glass/util/ProtoEnumUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error getting enum name %s for %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    const/4 v3, 0x0

    goto :goto_0

    .line 78
    .end local v1           #enumInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getEnumValue(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 7
    .parameter "enumClass"
    .parameter "lookupName"

    .prologue
    .line 67
    const-class v2, Lcom/google/glass/util/ProtoEnumUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/google/glass/util/ProtoEnumUtils;->getEnumInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 68
    .local v0, enumInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/google/glass/util/ProtoEnumUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No enum value %s for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const/high16 v1, -0x8000

    .line 72
    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 67
    .end local v0           #enumInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getEnumValues(Ljava/lang/Class;)[I
    .locals 4
    .parameter "enumClass"

    .prologue
    .line 59
    const-class v3, Lcom/google/glass/util/ProtoEnumUtils;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/google/glass/util/ProtoEnumUtils;->getEnumInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 60
    .local v0, enumInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    .line 61
    .local v1, values:[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v3

    return-object v1

    .line 59
    .end local v0           #enumInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1           #values:[I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
