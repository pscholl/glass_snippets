.class public Lcom/x/google/masf/services/LogserviceMessageTypes;
.super Ljava/lang/Object;


# static fields
.field public static final LOG_CLIENT_INFO:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final LOG_DATA_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final LOG_EVENT_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final LOG_EXCEPTION_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final MOBILE_VIDEO_EVENT_INFO:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final MOBILE_VIDEO_HEAT_MAP:Lcom/x/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x213

    const/16 v6, 0x219

    const/16 v5, 0x215

    const/4 v4, 0x0

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->LOG_CLIENT_INFO:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->LOG_EXCEPTION_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->LOG_DATA_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->MOBILE_VIDEO_HEAT_MAP:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->MOBILE_VIDEO_EVENT_INFO:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->LOG_EVENT_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->LOG_CLIENT_INFO:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v8, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v6, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v6, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v7, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->LOG_EXCEPTION_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21b

    const/4 v2, 0x1

    sget-object v3, Lcom/x/google/masf/services/LogserviceMessageTypes;->LOG_CLIENT_INFO:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v6, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v6, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v6, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v6, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->LOG_DATA_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21b

    const/4 v2, 0x1

    sget-object v3, Lcom/x/google/masf/services/LogserviceMessageTypes;->LOG_CLIENT_INFO:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    new-instance v2, Lcom/x/google/common/io/protocol/ProtoBufType;

    const-string v3, "ENTRY"

    invoke-direct {v2, v3}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v2, v7, v3, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v6, v3, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v6, v3, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->MOBILE_VIDEO_HEAT_MAP:Lcom/x/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->MOBILE_VIDEO_EVENT_INFO:Lcom/x/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v5, v8, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v7, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v5, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v5, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v5, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v5, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v5, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v5, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v5, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xd

    sget-object v3, Lcom/x/google/masf/services/LogserviceMessageTypes;->MOBILE_VIDEO_HEAT_MAP:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/LogserviceMessageTypes;->LOG_EVENT_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21b

    const/16 v2, 0x12

    sget-object v3, Lcom/x/google/masf/services/LogserviceMessageTypes;->MOBILE_VIDEO_EVENT_INFO:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
