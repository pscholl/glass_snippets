.class final enum Lcom/google/glass/maps/NavigationManager$GuidanceState;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/maps/NavigationManager$GuidanceState;

.field public static final enum GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

.field public static final enum ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

.field public static final enum REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

.field public static final enum ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

.field public static final enum SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

.field public static final enum STOPPED:Lcom/google/glass/maps/NavigationManager$GuidanceState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/maps/NavigationManager$GuidanceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->STOPPED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    new-instance v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;

    const-string v1, "GETTING_DIRECTIONS"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/maps/NavigationManager$GuidanceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    new-instance v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;

    const-string v1, "SELECT_DESTINATION"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/maps/NavigationManager$GuidanceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    new-instance v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;

    const-string v1, "ON_ROUTE"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/maps/NavigationManager$GuidanceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    new-instance v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;

    const-string v1, "REROUTING"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/maps/NavigationManager$GuidanceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    new-instance v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;

    const-string v1, "ROUTE_COMPLETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/maps/NavigationManager$GuidanceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->STOPPED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->$VALUES:[Lcom/google/glass/maps/NavigationManager$GuidanceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/maps/NavigationManager$GuidanceState;
    .locals 1

    const-class v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/maps/NavigationManager$GuidanceState;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->$VALUES:[Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v0}, [Lcom/google/glass/maps/NavigationManager$GuidanceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/NavigationManager$GuidanceState;

    return-object v0
.end method
