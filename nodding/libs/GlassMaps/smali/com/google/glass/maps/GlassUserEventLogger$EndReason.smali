.class public final enum Lcom/google/glass/maps/GlassUserEventLogger$EndReason;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum CANCEL_EARLY_IN_ROUTE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum CANCEL_GETTING_DIRECTIONS:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum CANCEL_SELECT_DESTINATION:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum CHANGE_TRAVEL_MODE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum DESTINATION_NOT_FOUND:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum MANUAL_STOP:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum NETWORK_ERROR:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum ROUTE_COMPLETE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum ROUTING_ERROR:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum UNKNOWN:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum UNKNOWN_CANCELLATION:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

.field public static final enum UNKNOWN_FAILURE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;


# instance fields
.field private final reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->UNKNOWN:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "ROUTE_COMPLETE"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->ROUTE_COMPLETE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "MANUAL_STOP"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v6, v2}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->MANUAL_STOP:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "CHANGE_TRAVEL_MODE"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v7, v2}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CHANGE_TRAVEL_MODE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "UNKNOWN_CANCELLATION"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v8, v2}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->UNKNOWN_CANCELLATION:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "CANCEL_GETTING_DIRECTIONS"

    const/4 v2, 0x5

    const/16 v3, 0xc9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_GETTING_DIRECTIONS:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "CANCEL_SELECT_DESTINATION"

    const/4 v2, 0x6

    const/16 v3, 0xca

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_SELECT_DESTINATION:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "CANCEL_EARLY_IN_ROUTE"

    const/4 v2, 0x7

    const/16 v3, 0xcb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_EARLY_IN_ROUTE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "UNKNOWN_FAILURE"

    const/16 v2, 0x8

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->UNKNOWN_FAILURE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x9

    const/16 v3, 0x12d

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->NETWORK_ERROR:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "DESTINATION_NOT_FOUND"

    const/16 v2, 0xa

    const/16 v3, 0x12e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->DESTINATION_NOT_FOUND:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    new-instance v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const-string v1, "ROUTING_ERROR"

    const/16 v2, 0xb

    const/16 v3, 0x12f

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->ROUTING_ERROR:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->UNKNOWN:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->ROUTE_COMPLETE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->MANUAL_STOP:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CHANGE_TRAVEL_MODE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->UNKNOWN_CANCELLATION:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_GETTING_DIRECTIONS:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_SELECT_DESTINATION:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_EARLY_IN_ROUTE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->UNKNOWN_FAILURE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->NETWORK_ERROR:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->DESTINATION_NOT_FOUND:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->ROUTING_ERROR:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->$VALUES:[Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->reason:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/GlassUserEventLogger$EndReason;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->reason:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/maps/GlassUserEventLogger$EndReason;
    .locals 1

    const-class v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/maps/GlassUserEventLogger$EndReason;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->$VALUES:[Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    invoke-virtual {v0}, [Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    return-object v0
.end method
