.class public final Lcom/google/android/maps/driveabout/b/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/ArrayList;

.field private final j:Ljava/util/ArrayList;

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->j:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/m;->a:Landroid/content/Context;

    sget v0, Lcom/google/glass/navlib/p;->da_distance_format_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imperial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/b/m;->k:I

    :goto_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/m;->a()V

    return-void

    :cond_0
    const-string v1, "imperial_yards"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/b/m;->k:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/m;->k:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/b/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/b/o;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/b/o;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/b/o;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private a()V
    .locals 13

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->b:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->c:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->d:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    sget v3, Lcom/google/glass/navlib/p;->da_speech_in_x_meters:I

    aput v3, v2, v0

    const/4 v0, 0x1

    sget v3, Lcom/google/glass/navlib/p;->da_speech_continue_for_x_meters:I

    aput v3, v2, v0

    const/4 v0, 0x2

    sget v3, Lcom/google/glass/navlib/p;->da_speech_continue_on_road_for_x_meters:I

    aput v3, v2, v0

    const/4 v0, 0x3

    new-array v3, v0, [I

    const/4 v0, 0x0

    sget v4, Lcom/google/glass/navlib/n;->da_speech_in_x_kilometers:I

    aput v4, v3, v0

    const/4 v0, 0x1

    sget v4, Lcom/google/glass/navlib/n;->da_speech_continue_for_x_kilometers:I

    aput v4, v3, v0

    const/4 v0, 0x2

    sget v4, Lcom/google/glass/navlib/n;->da_speech_continue_on_road_for_x_kilometers:I

    aput v4, v3, v0

    const/4 v0, 0x3

    new-array v4, v0, [I

    const/4 v0, 0x0

    sget v5, Lcom/google/glass/navlib/p;->da_speech_in_one_and_a_half_kilometers:I

    aput v5, v4, v0

    const/4 v0, 0x1

    sget v5, Lcom/google/glass/navlib/p;->da_speech_continue_for_one_and_a_half_kilometers:I

    aput v5, v4, v0

    const/4 v0, 0x2

    sget v5, Lcom/google/glass/navlib/p;->da_speech_continue_on_road_for_one_and_a_half_kilometers:I

    aput v5, v4, v0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x5f

    aget v8, v2, v0

    const-string v9, "50"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x91

    aget v8, v2, v0

    const-string v9, "100"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0xbe

    aget v8, v2, v0

    const-string v9, "150"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x118

    aget v8, v2, v0

    const-string v9, "200"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x172

    aget v8, v2, v0

    const-string v9, "300"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x1cc

    aget v8, v2, v0

    const-string v9, "400"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x226

    aget v8, v2, v0

    const-string v9, "500"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x2ee

    aget v8, v2, v0

    const-string v9, "600"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x3b6

    aget v8, v2, v0

    const-string v9, "800"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/p;

    const/16 v7, 0x514

    aget v8, v3, v0

    const/high16 v9, 0x447a

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;IIF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x73a

    aget v8, v4, v0

    const/4 v9, 0x0

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/p;

    const v7, 0x7fffffff

    aget v8, v3, v0

    const/high16 v9, 0x447a

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;IIF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->e:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->f:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->g:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    sget v3, Lcom/google/glass/navlib/p;->da_speech_in_x_feet:I

    aput v3, v2, v0

    const/4 v0, 0x1

    sget v3, Lcom/google/glass/navlib/p;->da_speech_continue_for_x_feet:I

    aput v3, v2, v0

    const/4 v0, 0x2

    sget v3, Lcom/google/glass/navlib/p;->da_speech_continue_on_road_for_x_feet:I

    aput v3, v2, v0

    const/4 v0, 0x3

    new-array v3, v0, [I

    const/4 v0, 0x0

    sget v4, Lcom/google/glass/navlib/n;->da_speech_in_x_miles:I

    aput v4, v3, v0

    const/4 v0, 0x1

    sget v4, Lcom/google/glass/navlib/n;->da_speech_continue_for_x_miles:I

    aput v4, v3, v0

    const/4 v0, 0x2

    sget v4, Lcom/google/glass/navlib/n;->da_speech_continue_on_road_for_x_miles:I

    aput v4, v3, v0

    const/4 v0, 0x3

    new-array v4, v0, [I

    const/4 v0, 0x0

    sget v5, Lcom/google/glass/navlib/p;->da_speech_in_a_quarter_mile:I

    aput v5, v4, v0

    const/4 v0, 0x1

    sget v5, Lcom/google/glass/navlib/p;->da_speech_continue_for_a_quarter_mile:I

    aput v5, v4, v0

    const/4 v0, 0x2

    sget v5, Lcom/google/glass/navlib/p;->da_speech_continue_on_road_for_a_quarter_mile:I

    aput v5, v4, v0

    const/4 v0, 0x3

    new-array v5, v0, [I

    const/4 v0, 0x0

    sget v6, Lcom/google/glass/navlib/p;->da_speech_in_a_half_mile:I

    aput v6, v5, v0

    const/4 v0, 0x1

    sget v6, Lcom/google/glass/navlib/p;->da_speech_continue_for_a_half_mile:I

    aput v6, v5, v0

    const/4 v0, 0x2

    sget v6, Lcom/google/glass/navlib/p;->da_speech_continue_on_road_for_a_half_mile:I

    aput v6, v5, v0

    const/4 v0, 0x3

    new-array v6, v0, [I

    const/4 v0, 0x0

    sget v7, Lcom/google/glass/navlib/p;->da_speech_in_three_quarters_of_a_mile:I

    aput v7, v6, v0

    const/4 v0, 0x1

    sget v7, Lcom/google/glass/navlib/p;->da_speech_continue_for_three_quarters_of_a_mile:I

    aput v7, v6, v0

    const/4 v0, 0x2

    sget v7, Lcom/google/glass/navlib/p;->da_speech_continue_on_road_for_three_quarters_of_a_mile:I

    aput v7, v6, v0

    const/4 v0, 0x3

    new-array v7, v0, [I

    const/4 v0, 0x0

    sget v8, Lcom/google/glass/navlib/p;->da_speech_in_one_and_a_half_miles:I

    aput v8, v7, v0

    const/4 v0, 0x1

    sget v8, Lcom/google/glass/navlib/p;->da_speech_continue_for_one_and_a_half_miles:I

    aput v8, v7, v0

    const/4 v0, 0x2

    sget v8, Lcom/google/glass/navlib/p;->da_speech_continue_on_road_for_one_and_a_half_miles:I

    aput v8, v7, v0

    const/4 v0, 0x0

    :goto_1
    array-length v8, v1

    if-ge v0, v8, :cond_1

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x41e7a5e4

    aget v11, v2, v0

    const-string v12, "50"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x4230c8b4

    aget v11, v2, v0

    const-string v12, "100"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x4267a5e4

    aget v11, v2, v0

    const-string v12, "150"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x42aab021

    aget v11, v2, v0

    const-string v12, "200"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x42e18d50

    aget v11, v2, v0

    const-string v12, "300"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x430c3540

    aget v11, v2, v0

    const-string v12, "400"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x4327a3d7

    aget v11, v2, v0

    const-string v12, "500"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x43618d50

    aget v11, v2, v0

    const-string v12, "600"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x4390c7ae

    aget v11, v2, v0

    const-string v12, "800"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x43c61eb8

    aget v11, v2, v0

    const-string v12, "1000"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x44350d1b

    aget v11, v4, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x448cd14e

    aget v11, v5, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x44bf1c0f

    aget v11, v6, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/p;

    const v10, 0x4502c25b

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;FIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x45350d1b

    aget v11, v7, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/p;

    const v10, 0x7fffffff

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;IIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->h:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->i:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->j:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    sget v8, Lcom/google/glass/navlib/p;->da_speech_in_x_yards:I

    aput v8, v2, v0

    const/4 v0, 0x1

    sget v8, Lcom/google/glass/navlib/p;->da_speech_continue_for_x_yards:I

    aput v8, v2, v0

    const/4 v0, 0x2

    sget v8, Lcom/google/glass/navlib/p;->da_speech_continue_on_road_for_x_yards:I

    aput v8, v2, v0

    const/4 v0, 0x0

    :goto_2
    array-length v8, v1

    if-ge v0, v8, :cond_2

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x42adbc6b

    aget v11, v2, v0

    const-string v12, "50"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x43049688

    aget v11, v2, v0

    const-string v12, "100"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x432dbc6b

    aget v11, v2, v0

    const-string v12, "150"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x43800419

    aget v11, v2, v0

    const-string v12, "200"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x43a929fc

    aget v11, v2, v0

    const-string v12, "300"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x44350d1b

    aget v11, v4, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x448cd14e

    aget v11, v5, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x44bf1c0f

    aget v11, v6, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/p;

    const v10, 0x4502c25b

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;FIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x45350d1b

    aget v11, v7, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/p;

    const v10, 0x7fffffff

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;IIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/android/maps/driveabout/a/at;
    .locals 3

    if-nez p2, :cond_0

    iget p2, p0, Lcom/google/android/maps/driveabout/b/m;->k:I

    :cond_0
    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->b:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/google/android/maps/driveabout/b/m;->a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/maps/driveabout/a/q;

    invoke-direct {v2, p1, p2}, Lcom/google/android/maps/driveabout/a/q;-><init>(II)V

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/a/at;->a(ILjava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->e:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->h:Ljava/util/ArrayList;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/i;II)Lcom/google/android/maps/driveabout/a/at;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    packed-switch p3, :pswitch_data_0

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->c:Ljava/util/ArrayList;

    :goto_1
    invoke-static {v0, p2, v1}, Lcom/google/android/maps/driveabout/b/m;->a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/a/s;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/a/s;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/a/at;->a(Lcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->f:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->g:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->i:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->j:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->d:Ljava/util/ArrayList;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
