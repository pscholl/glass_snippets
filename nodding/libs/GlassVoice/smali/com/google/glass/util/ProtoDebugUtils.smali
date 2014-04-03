.class public Lcom/google/glass/util/ProtoDebugUtils;
.super Ljava/lang/Object;
.source "ProtoDebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;,
        Lcom/google/glass/util/ProtoDebugUtils$LogOutput;
    }
.end annotation


# static fields
.field private static final PRIMITIVE_WRAPPERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ProtoDebugUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/glass/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    .line 37
    sget-object v0, Lcom/google/glass/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/google/glass/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/google/glass/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/google/glass/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/google/glass/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/google/glass/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/google/glass/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/google/glass/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method public static asciiDebug(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "object"

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;-><init>(Lcom/google/glass/util/ProtoDebugUtils$1;)V

    .line 83
    .local v1, logOutput:Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;
    const-string v2, "object"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v2, p0, v3}, Lcom/google/glass/util/ProtoDebugUtils;->debugObject(Lcom/google/glass/util/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    .line 84
    invoke-virtual {v1}, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    .end local v1           #logOutput:Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/google/glass/util/ProtoDebugUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "asciiDebug failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const-string v2, "Error: unable to output asciiDebug()"

    goto :goto_0
.end method

.method private static debugFields(Lcom/google/glass/util/ProtoDebugUtils$LogOutput;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 6
    .parameter "logOutput"
    .parameter "object"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/ProtoDebugUtils$LogOutput;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    .local p2, visitedObjects:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    const-string v5, "[already printed this object]"

    invoke-interface {p0, v5}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void

    .line 119
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 121
    .local v1, current:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 124
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 122
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    invoke-static {p0, v2, p1, p2}, Lcom/google/glass/util/ProtoDebugUtils;->debugSingleField(Lcom/google/glass/util/ProtoDebugUtils$LogOutput;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_2

    .line 136
    .end local v2           #field:Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private static debugObject(Lcom/google/glass/util/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 2
    .parameter "logOutput"
    .parameter "fieldName"
    .parameter "object"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/ProtoDebugUtils$LogOutput;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    .local p3, visitedObjects:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/glass/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 111
    .end local p2
    :goto_0
    return-void

    .line 100
    .restart local p2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/micro/ByteStringMicro;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Lcom/google/protobuf/micro/ByteStringMicro;

    .end local p2
    invoke-virtual {p2}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .restart local p2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 107
    invoke-interface {p0}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->indent()V

    .line 108
    invoke-static {p0, p2, p3}, Lcom/google/glass/util/ProtoDebugUtils;->debugFields(Lcom/google/glass/util/ProtoDebugUtils$LogOutput;Ljava/lang/Object;Ljava/util/Set;)V

    .line 109
    invoke-interface {p0}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->outdent()V

    .line 110
    const-string v0, "}"

    invoke-interface {p0, v0}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static debugSingleField(Lcom/google/glass/util/ProtoDebugUtils$LogOutput;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 6
    .parameter "logOutput"
    .parameter "field"
    .parameter "object"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/ProtoDebugUtils$LogOutput;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    .local p3, visitedObjects:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 143
    .local v3, result:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, fieldName:Ljava/lang/String;
    const-string v4, "gaiaAuthenticationToken_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    const-string v4, "gaiaAuthenticationToken_: *****"

    invoke-interface {p0, v4}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    if-nez v3, :cond_3

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/glass/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 154
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 155
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 156
    .local v0, element:Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0, p3}, Lcom/google/glass/util/ProtoDebugUtils;->debugObject(Lcom/google/glass/util/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    .line 154
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v0           #element:Ljava/lang/Object;
    .end local v2           #i:I
    :cond_6
    invoke-static {p0, v1, v3, p3}, Lcom/google/glass/util/ProtoDebugUtils;->debugObject(Lcom/google/glass/util/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method public static lazyAsciiDebug(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "object"

    .prologue
    .line 66
    new-instance v0, Lcom/google/glass/util/ProtoDebugUtils$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/ProtoDebugUtils$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
