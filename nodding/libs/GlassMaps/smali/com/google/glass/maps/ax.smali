.class final synthetic Lcom/google/glass/maps/ax;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->values()[Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/maps/ax;->b:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/maps/ax;->b:[I

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NETWORK_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-virtual {v1}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/glass/maps/ax;->b:[I

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->OFFLINE_ROUTING_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-virtual {v1}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/glass/maps/ax;->b:[I

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NAVIGATION_NOT_SUPPORTED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-virtual {v1}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/glass/maps/ax;->b:[I

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->DESTINATION_NOT_FOUND:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-virtual {v1}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/glass/maps/ax;->b:[I

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ROUTING_ERROR:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-virtual {v1}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    invoke-static {}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->values()[Lcom/google/glass/maps/NavigationManager$GuidanceState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/maps/ax;->a:[I

    :try_start_5
    sget-object v0, Lcom/google/glass/maps/ax;->a:[I

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v0, Lcom/google/glass/maps/ax;->a:[I

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/glass/maps/ax;->a:[I

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v0, Lcom/google/glass/maps/ax;->a:[I

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v0, Lcom/google/glass/maps/ax;->a:[I

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_0
.end method
