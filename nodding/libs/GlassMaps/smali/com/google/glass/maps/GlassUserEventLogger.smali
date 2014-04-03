.class public final Lcom/google/glass/maps/GlassUserEventLogger;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_START:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=NAVIGATION_START, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "i"

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SELECT_TRIP:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=SELECT_TRIP, data=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "f"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t"

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->TRAVEL_MODE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=TRAVEL_MODE_CHANGE, data=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "i"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "t"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_SCROLL:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_SCROLL, data=%s]."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "r"

    aput-object v3, v2, v5

    #getter for: Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->reason:I
    invoke-static {p1}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->access$000(Lcom/google/glass/maps/GlassUserEventLogger$EndReason;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "d"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_END:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=NAVIGATION_END, data=%s]."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "e"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=NAVIGATION_ERROR, data=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SHOW_ROUTE_OVERVIEW:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=SHOW_ROUTE_OVERVIEW, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "i"

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SELECT_REFINEMENT:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=SELECT_REFINEMENT, data=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "s"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_RECEIVED, data=%s]."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "r"

    aput-object v3, v2, v5

    #getter for: Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->reason:I
    invoke-static {p1}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->access$000(Lcom/google/glass/maps/GlassUserEventLogger$EndReason;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "d"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_END:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_END, data=%s]."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "e"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_ERROR, data=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SHOW_STEPS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=SHOW_STEPS, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->CHANGE_TRIP:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=CHANGE_TRIP, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_START:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_START, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->g(Landroid/content/Context;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_REFINEMENTS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->a:Lcom/google/glass/logging/i;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_REFINEMENTS, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)Lcom/google/glass/userevent/a;
    .locals 1

    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->d()Lcom/google/glass/userevent/a;

    move-result-object v0

    return-object v0
.end method
