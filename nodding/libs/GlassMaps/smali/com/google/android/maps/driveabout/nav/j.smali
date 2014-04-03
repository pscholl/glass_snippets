.class public final Lcom/google/android/maps/driveabout/nav/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcom/google/android/maps/driveabout/nav/k;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x3

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v0, 0x29

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/k;

    new-instance v1, Lcom/google/android/maps/driveabout/nav/k;

    sget v2, Lcom/google/glass/navlib/m;->da_depart:I

    invoke-direct {v1, v5, v6, v2}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v2, 0x10

    sget v3, Lcom/google/glass/navlib/m;->da_turn_arrive:I

    invoke-direct {v1, v2, v6, v3}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/android/maps/driveabout/nav/k;

    sget v2, Lcom/google/glass/navlib/m;->da_turn_straight:I

    invoke-direct {v1, v7, v6, v2}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/google/android/maps/driveabout/nav/k;

    sget v2, Lcom/google/glass/navlib/m;->da_turn_slight_right:I

    invoke-direct {v1, v4, v5, v2, v5}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    sget v3, Lcom/google/glass/navlib/m;->da_turn_slight_right:I

    invoke-direct {v2, v4, v7, v3}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/4 v3, 0x4

    sget v4, Lcom/google/glass/navlib/m;->da_turn_right:I

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/4 v3, 0x4

    sget v4, Lcom/google/glass/navlib/m;->da_turn_right:I

    invoke-direct {v2, v3, v7, v4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/4 v3, 0x5

    sget v4, Lcom/google/glass/navlib/m;->da_turn_sharp_right:I

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/android/maps/driveabout/nav/k;

    const/4 v2, 0x5

    sget v3, Lcom/google/glass/navlib/m;->da_turn_sharp_right:I

    invoke-direct {v1, v2, v7, v3}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v1, v0, v8

    const/16 v1, 0x9

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/4 v3, 0x6

    sget v4, Lcom/google/glass/navlib/m;->da_turn_uturn:I

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/4 v3, 0x6

    sget v4, Lcom/google/glass/navlib/m;->da_turn_uturn:I

    invoke-direct {v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/4 v3, 0x7

    sget v4, Lcom/google/glass/navlib/m;->da_turn_ramp_right:I

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/4 v3, 0x7

    sget v4, Lcom/google/glass/navlib/m;->da_turn_ramp_right:I

    invoke-direct {v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    sget v3, Lcom/google/glass/navlib/m;->da_turn_ramp_right:I

    invoke-direct {v2, v8, v7, v3}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    sget v3, Lcom/google/glass/navlib/m;->da_turn_ramp_right:I

    invoke-direct {v2, v8, v5, v3, v5}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    sget v3, Lcom/google/glass/navlib/m;->da_turn_ramp_right:I

    invoke-direct {v2, v8, v6, v3}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0x9

    sget v4, Lcom/google/glass/navlib/m;->da_turn_fork_right:I

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0x9

    sget v4, Lcom/google/glass/navlib/m;->da_turn_fork_right:I

    invoke-direct {v2, v3, v7, v4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0xa

    sget v4, Lcom/google/glass/navlib/m;->da_turn_generic_merge:I

    invoke-direct {v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0xb

    sget v4, Lcom/google/glass/navlib/m;->da_turn_generic_roundabout:I

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0xb

    sget v4, Lcom/google/glass/navlib/m;->da_turn_generic_roundabout:I

    invoke-direct {v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0x43

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_1:I

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/google/android/maps/driveabout/nav/m;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0x70

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_2:I

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/google/android/maps/driveabout/nav/m;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0x9d

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_3:I

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/google/android/maps/driveabout/nav/m;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0xca

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_4:I

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/google/android/maps/driveabout/nav/m;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0xf7

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_5:I

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/google/android/maps/driveabout/nav/m;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0x124

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_6:I

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/google/android/maps/driveabout/nav/m;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0x168

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_7:I

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/google/android/maps/driveabout/nav/m;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0x43

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_1:I

    invoke-direct {v2, v6, v3, v4}, Lcom/google/android/maps/driveabout/nav/m;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0x70

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_2:I

    invoke-direct {v2, v6, v3, v4}, Lcom/google/android/maps/driveabout/nav/m;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0x9d

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_3:I

    invoke-direct {v2, v6, v3, v4}, Lcom/google/android/maps/driveabout/nav/m;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0xca

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_4:I

    invoke-direct {v2, v6, v3, v4}, Lcom/google/android/maps/driveabout/nav/m;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0xf7

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_5:I

    invoke-direct {v2, v6, v3, v4}, Lcom/google/android/maps/driveabout/nav/m;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0x124

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_6:I

    invoke-direct {v2, v6, v3, v4}, Lcom/google/android/maps/driveabout/nav/m;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/google/android/maps/driveabout/nav/m;

    const/16 v3, 0x168

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_7:I

    invoke-direct {v2, v6, v3, v4}, Lcom/google/android/maps/driveabout/nav/m;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0xc

    sget v4, Lcom/google/glass/navlib/m;->da_turn_generic_roundabout:I

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0xc

    sget v4, Lcom/google/glass/navlib/m;->da_turn_generic_roundabout:I

    invoke-direct {v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0x11

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_exit:I

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0x11

    sget v4, Lcom/google/glass/navlib/m;->da_turn_roundabout_exit:I

    invoke-direct {v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0xd

    sget v4, Lcom/google/glass/navlib/m;->da_turn_straight:I

    invoke-direct {v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/google/android/maps/driveabout/nav/k;

    const/16 v3, 0xe

    sget v4, Lcom/google/glass/navlib/m;->da_turn_ferry:I

    invoke-direct {v2, v3, v6, v4}, Lcom/google/android/maps/driveabout/nav/k;-><init>(III)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/nav/j;->a:[Lcom/google/android/maps/driveabout/nav/k;

    return-void
.end method

.method public static a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/nav/j;->a(III)Lcom/google/android/maps/driveabout/nav/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/nav/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/navlib/m;->da_turn_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(III)Lcom/google/android/maps/driveabout/nav/k;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/android/maps/driveabout/nav/j;->a:[Lcom/google/android/maps/driveabout/nav/k;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/maps/driveabout/nav/j;->a:[Lcom/google/android/maps/driveabout/nav/k;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/android/maps/driveabout/nav/k;->a(III)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/maps/driveabout/nav/j;->a:[Lcom/google/android/maps/driveabout/nav/k;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
