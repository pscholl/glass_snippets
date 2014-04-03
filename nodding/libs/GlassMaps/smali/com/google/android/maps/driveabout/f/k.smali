.class public final Lcom/google/android/maps/driveabout/f/k;
.super Lcom/google/android/maps/driveabout/f/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/f/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/maps/driveabout/f/k;->a(I)Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/k;->a:Landroid/content/Context;

    sget v2, Lcom/google/glass/navlib/p;->da_step_continue_onto:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/k;->a:Landroid/content/Context;

    sget v1, Lcom/google/glass/navlib/p;->da_step_continue_straight:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
