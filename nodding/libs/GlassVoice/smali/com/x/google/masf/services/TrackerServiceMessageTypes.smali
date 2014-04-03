.class public Lcom/x/google/masf/services/TrackerServiceMessageTypes;
.super Ljava/lang/Object;


# static fields
.field public static final ANALYTICS_IMPRESSION:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final EVENT:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final EVENT_LOGGING_REQUEST:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final MDSSHARED_ENUMS:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final MOBILE_PHONE:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final SESSION_ID:Lcom/x/google/common/io/protocol/ProtoBufType;

.field public static final TRACKING_SHARED_ENUMS:Lcom/x/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x11c

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x21c

    const/4 v5, 0x0

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->MDSSHARED_ENUMS:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->TRACKING_SHARED_ENUMS:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->MOBILE_PHONE:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->SESSION_ID:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->EVENT:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->ANALYTICS_IMPRESSION:Lcom/x/google/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->EVENT_LOGGING_REQUEST:Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->MOBILE_PHONE:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v7, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->SESSION_ID:Lcom/x/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v7, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->EVENT:Lcom/x/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v7, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    invoke-virtual {v0, v1, v8, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v6, v1, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v6, v1, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v6, v1, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41a

    const/16 v2, 0x9

    new-instance v3, Lcom/x/google/common/io/protocol/ProtoBufType;

    const-string v4, "HTTP_HEADER"

    invoke-direct {v3, v4}, Lcom/x/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v9, v4, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v9, v4, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v6, v1, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v6, v1, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xe

    sget-object v3, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->MOBILE_PHONE:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x18

    sget-object v3, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->ANALYTICS_IMPRESSION:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->ANALYTICS_IMPRESSION:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v9, v7, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v9, v8, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->EVENT_LOGGING_REQUEST:Lcom/x/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v7, v5}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    sget-object v2, Lcom/x/google/masf/services/TrackerServiceMessageTypes;->EVENT:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v8, v2}, Lcom/x/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/x/google/common/io/protocol/ProtoBufType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
