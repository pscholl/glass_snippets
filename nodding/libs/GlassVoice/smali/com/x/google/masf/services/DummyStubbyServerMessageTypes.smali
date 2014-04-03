.class public Lcom/x/google/masf/services/DummyStubbyServerMessageTypes;
.super Ljava/lang/Object;


# static fields
.field public static final DUMMY_STUBBY_SERVER_REPLY:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final DUMMY_STUBBY_SERVER_REQUEST:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final MASFCLIENT_INFO_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x215

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/16 v2, 0x119

    const/4 v4, 0x0

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/DummyStubbyServerMessageTypes;->MASFCLIENT_INFO_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/DummyStubbyServerMessageTypes;->DUMMY_STUBBY_SERVER_REQUEST:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/DummyStubbyServerMessageTypes;->DUMMY_STUBBY_SERVER_REPLY:Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/DummyStubbyServerMessageTypes;->MASFCLIENT_INFO_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v2, v5, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v1, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/DummyStubbyServerMessageTypes;->DUMMY_STUBBY_SERVER_REQUEST:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v5, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x219

    invoke-virtual {v0, v1, v3, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x101

    sget-object v3, Lcom/x/google/masf/services/DummyStubbyServerMessageTypes;->MASFCLIENT_INFO_PROTO:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/DummyStubbyServerMessageTypes;->DUMMY_STUBBY_SERVER_REPLY:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v5, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
