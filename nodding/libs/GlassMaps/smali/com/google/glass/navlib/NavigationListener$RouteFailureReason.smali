.class public final enum Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

.field public static final enum DESTINATION_NOT_FOUND:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

.field public static final enum NAVIGATION_NOT_SUPPORTED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

.field public static final enum NETWORK_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

.field public static final enum OFFLINE_ROUTING_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

.field public static final enum REFINEMENT_NEEDED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

.field public static final enum ROUTING_ERROR:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    const-string v1, "NETWORK_FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NETWORK_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    new-instance v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    const-string v1, "OFFLINE_ROUTING_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->OFFLINE_ROUTING_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    new-instance v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    const-string v1, "REFINEMENT_NEEDED"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->REFINEMENT_NEEDED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    new-instance v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    const-string v1, "NAVIGATION_NOT_SUPPORTED"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NAVIGATION_NOT_SUPPORTED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    new-instance v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    const-string v1, "DESTINATION_NOT_FOUND"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->DESTINATION_NOT_FOUND:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    new-instance v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    const-string v1, "ROUTING_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ROUTING_ERROR:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NETWORK_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->OFFLINE_ROUTING_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->REFINEMENT_NEEDED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NAVIGATION_NOT_SUPPORTED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->DESTINATION_NOT_FOUND:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ROUTING_ERROR:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->$VALUES:[Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;
    .locals 1

    const-class v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;
    .locals 1

    sget-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->$VALUES:[Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-virtual {v0}, [Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    return-object v0
.end method
