.class public Lcom/google/android/speech/utils/ProtoBufUtils;
.super Ljava/lang/Object;
.source "ProtoBufUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final OBFUSCATE_FILEDS:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPLIT_STRING_LENGTH:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ProtoBufUtils"

.field public static final UNDEFINED_ENUM:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/speech/utils/ProtoBufUtils;->OBFUSCATE_FILEDS:Ljava/util/ArrayList;

    .line 73
    sget-object v0, Lcom/google/android/speech/utils/ProtoBufUtils;->OBFUSCATE_FILEDS:Ljava/util/ArrayList;

    const-class v1, Lcom/google/speech/s3/S3$AuthToken;

    const-string v2, "token"

    invoke-static {v1, v2}, Lcom/google/android/speech/utils/ProtoBufUtils;->getString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyOf(Lcom/google/protobuf/micro/MessageMicro;Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/micro/MessageMicro;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, src:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    .local p1, destination:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/MessageMicro;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 34
    .end local p1           #destination:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    :goto_0
    return-object p1

    .line 33
    .restart local p1       #destination:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    :catch_0
    move-exception v0

    .line 34
    .local v0, ipbme:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    goto :goto_0
.end method

.method private static fieldToString(Ljava/lang/StringBuffer;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1
    .parameter "sb"
    .parameter "prefix"
    .parameter "proto"
    .parameter "protoField"
    .parameter "fieldValue"

    .prologue
    .line 142
    instance-of v0, p4, Lcom/google/protobuf/micro/MessageMicro;

    if-eqz v0, :cond_1

    .line 143
    invoke-static {p2, p3}, Lcom/google/android/speech/utils/ProtoBufUtils;->hasFieldValue(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p3}, Lcom/google/android/speech/utils/ProtoBufUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    check-cast p4, Lcom/google/protobuf/micro/MessageMicro;

    .end local p4
    invoke-static {p0, p1, v0, p4}, Lcom/google/android/speech/utils/ProtoBufUtils;->protoToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local p4
    :cond_1
    instance-of v0, p4, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 148
    check-cast p4, Ljava/util/List;

    .end local p4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/speech/utils/ProtoBufUtils;->fieldsToString(Ljava/lang/StringBuffer;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/reflect/Field;Ljava/util/List;)V

    goto :goto_0

    .line 150
    .restart local p4
    :cond_2
    invoke-static {p2, p3}, Lcom/google/android/speech/utils/ProtoBufUtils;->hasFieldValue(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-static {p3}, Lcom/google/android/speech/utils/ProtoBufUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-static {p3}, Lcom/google/android/speech/utils/ProtoBufUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0, p4}, Lcom/google/android/speech/utils/ProtoBufUtils;->valueToString(Ljava/lang/StringBuffer;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static fieldsToString(Ljava/lang/StringBuffer;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/reflect/Field;Ljava/util/List;)V
    .locals 3
    .parameter "sb"
    .parameter "prefix"
    .parameter "proto"
    .parameter "protoField"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/micro/MessageMicro;",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p4, fieldValues:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, fieldValue:Ljava/lang/Object;
    instance-of v2, v0, Lcom/google/protobuf/micro/MessageMicro;

    if-eqz v2, :cond_0

    .line 165
    invoke-static {p3}, Lcom/google/android/speech/utils/ProtoBufUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/google/protobuf/micro/MessageMicro;

    .end local v0           #fieldValue:Ljava/lang/Object;
    invoke-static {p0, p1, v2, v0}, Lcom/google/android/speech/utils/ProtoBufUtils;->protoToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 168
    .restart local v0       #fieldValue:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-static {p3}, Lcom/google/android/speech/utils/ProtoBufUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-static {p3}, Lcom/google/android/speech/utils/ProtoBufUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2, v2, v0}, Lcom/google/android/speech/utils/ProtoBufUtils;->valueToString(Ljava/lang/StringBuffer;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 175
    .end local v0           #fieldValue:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private static getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .parameter "protoField"

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, fieldName:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getIntFieldValue(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "proto"
    .parameter "fieldName"
    .parameter "fieldValue"

    .prologue
    .line 207
    instance-of v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    if-eqz v0, :cond_0

    const-string v0, "eventType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/speech/utils/DebugEnumUtils;->getClientEventTypeLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 211
    .restart local p2
    :cond_0
    instance-of v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    if-eqz v0, :cond_1

    const-string v0, "event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/speech/utils/DebugEnumUtils;->getLatencyBreakDownLabel(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getProtoFields(Lcom/google/protobuf/micro/MessageMicro;)Ljava/util/ArrayList;
    .locals 8
    .parameter "proto"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/micro/MessageMicro;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v5, protoFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 105
    .local v2, fields:[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 106
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 108
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_1
    return-object v5
.end method

.method private static getString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/protobuf/micro/MessageMicro;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/micro/MessageMicro;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasFieldValue(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/reflect/Field;)Z
    .locals 7
    .parameter "proto"
    .parameter "field"

    .prologue
    const/4 v4, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, hasFieldName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 125
    .local v1, hasField:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 135
    .end local v1           #hasField:Ljava/lang/reflect/Field;
    .end local v2           #hasFieldName:Ljava/lang/String;
    :goto_0
    return v3

    .line 127
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NoSuchFieldException;
    move v3, v4

    .line 129
    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v3, v4

    .line 132
    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .local v0, e:Ljava/lang/IllegalAccessException;
    move v3, v4

    .line 135
    goto :goto_0
.end method

.method private static protoToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;)V
    .locals 7
    .parameter "sb"
    .parameter "prefix"
    .parameter "messageName"
    .parameter "proto"

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v5, " {"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v5, "\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-static {p3}, Lcom/google/android/speech/utils/ProtoBufUtils;->getProtoFields(Lcom/google/protobuf/micro/MessageMicro;)Ljava/util/ArrayList;

    move-result-object v4

    .line 86
    .local v4, protoFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 87
    .local v3, protoField:Ljava/lang/reflect/Field;
    invoke-virtual {v3, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, fieldValue:Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, p3, v3, v1}, Lcom/google/android/speech/utils/ProtoBufUtils;->fieldToString(Ljava/lang/StringBuffer;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 93
    .end local v1           #fieldValue:Ljava/lang/Object;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #protoField:Ljava/lang/reflect/Field;
    .end local v4           #protoFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to print proto buffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 100
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void

    .line 91
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #protoFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v5, "}\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 96
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #protoFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to print proto buffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static toSplittedString(Lcom/google/protobuf/micro/MessageMicro;)Ljava/util/List;
    .locals 6
    .parameter "messageMicro"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/micro/MessageMicro;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, splittedString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/android/speech/utils/ProtoBufUtils;->toString(Lcom/google/protobuf/micro/MessageMicro;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, st:Ljava/lang/String;
    const/4 v0, 0x0

    .line 46
    .local v0, offset:I
    const/4 v1, 0x0

    .line 49
    .local v1, pos:I
    :goto_0
    add-int/lit16 v4, v0, 0x3e8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 50
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-object v2
.end method

.method public static toString(Lcom/google/protobuf/micro/MessageMicro;)Ljava/lang/String;
    .locals 3
    .parameter "messageMicro"

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const-string v1, "null"

    .line 65
    :goto_0
    return-object v1

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/speech/utils/ProtoBufUtils;->protoToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static valueToString(Ljava/lang/StringBuffer;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "sb"
    .parameter "proto"
    .parameter "fieldName"
    .parameter "fieldValue"

    .prologue
    .line 180
    if-nez p3, :cond_0

    .line 181
    const-string v0, "null"

    .line 197
    .end local p3
    .local v0, value:Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/google/android/speech/utils/ProtoBufUtils;->OBFUSCATE_FILEDS:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/android/speech/utils/ProtoBufUtils;->getString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v1, "XXXXXXXX"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :goto_1
    return-void

    .line 182
    .end local v0           #value:Ljava/lang/String;
    .restart local p3
    :cond_0
    instance-of v1, p3, Lcom/google/protobuf/micro/ByteStringMicro;

    if-eqz v1, :cond_1

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p3, Lcom/google/protobuf/micro/ByteStringMicro;

    .end local p3
    invoke-virtual {p3}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0           #value:Ljava/lang/String;
    .restart local p3
    :cond_1
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 185
    invoke-static {p1, p2, p3}, Lcom/google/android/speech/utils/ProtoBufUtils;->getIntFieldValue(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v0           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local p3
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
