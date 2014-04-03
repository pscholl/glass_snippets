.class public final Lcom/google/android/maps/driveabout/f/n;
.super Lcom/google/android/maps/driveabout/f/h;


# static fields
.field private static final d:[I


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/glass/navlib/p;->da_step_slight_left:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/glass/navlib/p;->da_step_slight_right:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/glass/navlib/p;->da_step_turn_left:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/google/glass/navlib/p;->da_step_turn_right:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/google/glass/navlib/p;->da_step_sharp_left:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/google/glass/navlib/p;->da_step_sharp_right:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/google/glass/navlib/p;->da_step_slight_left_onto:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/google/glass/navlib/p;->da_step_slight_right_onto:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/google/glass/navlib/p;->da_step_turn_left_onto:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/google/glass/navlib/p;->da_step_turn_right_onto:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/google/glass/navlib/p;->da_step_sharp_left_onto:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/google/glass/navlib/p;->da_step_sharp_right_onto:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/f/n;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/f/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput p3, p0, Lcom/google/android/maps/driveabout/f/n;->b:I

    iput p4, p0, Lcom/google/android/maps/driveabout/f/n;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/f/n;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/f/n;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/f/n;->c:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/google/android/maps/driveabout/f/n;->b:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    add-int/lit8 v0, v0, 0x2

    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/f/n;->a(I)Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x6

    iget-object v4, p0, Lcom/google/android/maps/driveabout/f/n;->a:Landroid/content/Context;

    sget-object v5, Lcom/google/android/maps/driveabout/f/n;->d:[I

    aget v0, v5, v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/f/n;->c:I

    if-eq v0, v1, :cond_5

    move-object v0, v3

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/google/android/maps/driveabout/f/n;->b:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/google/android/maps/driveabout/f/n;->b:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    move-object v0, v3

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/n;->a:Landroid/content/Context;

    sget-object v2, Lcom/google/android/maps/driveabout/f/n;->d:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0
.end method
