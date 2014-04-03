.class public final Lcom/google/android/maps/driveabout/f/i;
.super Lcom/google/android/maps/driveabout/f/h;


# instance fields
.field b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/f/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Lcom/google/android/maps/driveabout/f/i;->b:I

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/f/i;->b:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    sget v0, Lcom/google/glass/navlib/p;->da_direction_north:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/google/glass/navlib/p;->da_direction_north_west:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/google/glass/navlib/p;->da_direction_west:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/google/glass/navlib/p;->da_direction_south_west:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/google/glass/navlib/p;->da_direction_south:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/google/glass/navlib/p;->da_direction_south_east:I

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/google/glass/navlib/p;->da_direction_east:I

    goto :goto_0

    :pswitch_7
    sget v0, Lcom/google/glass/navlib/p;->da_direction_north_east:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/f/i;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/f/i;->a(I)Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/i;->a:Landroid/content/Context;

    sget v3, Lcom/google/glass/navlib/p;->da_step_depart_on:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/i;->a:Landroid/content/Context;

    sget v2, Lcom/google/glass/navlib/p;->da_step_depart:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
