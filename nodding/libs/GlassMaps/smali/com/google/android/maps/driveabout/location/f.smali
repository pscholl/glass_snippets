.class public final Lcom/google/android/maps/driveabout/location/f;
.super Lcom/google/android/maps/driveabout/location/d;

# interfaces
.implements Lcom/google/android/maps/driveabout/location/c;


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field c:Ljava/util/ArrayList;

.field private final e:Lcom/google/android/maps/driveabout/store/bn;

.field private final f:Ljava/util/ArrayList;

.field private g:Lcom/google/android/maps/driveabout/location/h;

.field private h:Lcom/google/android/maps/driveabout/nav/w;

.field private i:I

.field private j:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "      "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "        "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "          "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "            "

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/location/f;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/store/bn;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/store/bx;->c(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/store/bv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/bn;-><init>(Lcom/google/android/maps/driveabout/store/bv;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/location/f;-><init>(Lcom/google/android/maps/driveabout/location/b;Lcom/google/android/maps/driveabout/store/bn;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/location/b;Lcom/google/android/maps/driveabout/store/bn;)V
    .locals 2

    const-string v0, "driveabout_hmm"

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/location/d;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/f;->i:I

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/j;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/f;->j:D

    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/f;->e:Lcom/google/android/maps/driveabout/store/bn;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(D)D
    .locals 2

    const-wide v0, 0x3fb015bf9217271aL

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private static a(Landroid/location/Location;Lcom/google/android/maps/driveabout/location/h;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
    .locals 3

    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/location/h;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    iget-wide v1, p1, Lcom/google/android/maps/driveabout/location/h;->g:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/location/Location;Lcom/google/android/maps/driveabout/location/h;Lcom/google/android/maps/driveabout/util/j;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
    .locals 12

    instance-of v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/f;->g:Lcom/google/android/maps/driveabout/location/h;

    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget v1, p0, Lcom/google/android/maps/driveabout/location/f;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b(I)V

    iget-wide v0, p2, Lcom/google/android/maps/driveabout/location/h;->a:D

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/maps/driveabout/location/f;->a(Landroid/location/Location;Lcom/google/android/maps/driveabout/util/j;D)Lcom/google/android/maps/driveabout/store/bm;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/location/f;->a(Landroid/location/Location;Lcom/google/android/maps/driveabout/location/h;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/maps/driveabout/store/bh;

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/util/j;->e()I

    move-result v1

    iget v3, p0, Lcom/google/android/maps/driveabout/location/f;->i:I

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/maps/driveabout/store/bh;-><init>(Lcom/google/android/maps/driveabout/store/bm;II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bh;->a()I

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/location/f;->a(Landroid/location/Location;Lcom/google/android/maps/driveabout/location/h;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_4

    new-instance v1, Lcom/google/android/maps/driveabout/location/g;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/store/bh;->a(I)Lcom/google/android/maps/driveabout/store/bj;

    move-result-object v3

    invoke-direct {v1, v0, v3, p2, p3}, Lcom/google/android/maps/driveabout/location/g;-><init>(ILcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/location/h;Lcom/google/android/maps/driveabout/util/j;)V

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/store/bh;->a(I)Lcom/google/android/maps/driveabout/store/bj;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/store/bj;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v0, p2, Lcom/google/android/maps/driveabout/location/h;->i:Z

    if-eqz v0, :cond_5

    iget-wide v0, p2, Lcom/google/android/maps/driveabout/location/h;->c:D

    const-wide/high16 v3, 0x4024

    cmpg-double v0, v0, v3

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lcom/google/android/maps/driveabout/location/f;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/g;

    invoke-direct {p0, v0, v2, p2}, Lcom/google/android/maps/driveabout/location/f;->a(Lcom/google/android/maps/driveabout/location/g;Lcom/google/android/maps/driveabout/store/bh;Lcom/google/android/maps/driveabout/location/h;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v7, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/g;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v7, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/location/g;->a(Z)D

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move-wide v5, v3

    move-wide v3, v1

    move v2, v0

    :goto_5
    if-ge v2, v7, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/g;

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/util/j;->c()I

    move-result v1

    sub-int v1, v7, v1

    if-lt v2, v1, :cond_8

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/g;->a(Z)D

    move-result-wide v8

    add-double/2addr v5, v8

    iget-wide v0, v0, Lcom/google/android/maps/driveabout/location/g;->b:D

    mul-double/2addr v0, v8

    add-double/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    const-wide/16 v0, 0x0

    const-wide/high16 v8, 0x3ff0

    sub-double/2addr v8, v5

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide v8, 0x3fe999999999999aL

    iget-wide v10, p0, Lcom/google/android/maps/driveabout/location/f;->j:D

    mul-double/2addr v8, v10

    const-wide v10, 0x3fc999999999999aL

    mul-double/2addr v0, v10

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/f;->j:D

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/util/j;->c()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    sub-int v8, v7, v1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/g;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/maps/driveabout/location/g;->a(D)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/g;->a()D

    move-result-wide v8

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/util/j;->a()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_d

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/g;

    new-instance v1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    iget-wide v7, p0, Lcom/google/android/maps/driveabout/location/f;->j:D

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/util/j;->b()D

    move-result-wide v9

    cmpl-double v2, v7, v9

    if-lez v2, :cond_e

    iget-object v2, v0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bj;->b()Lcom/google/android/maps/driveabout/e/an;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/e/an;Lcom/google/android/maps/driveabout/e/ab;)V

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, p2, Lcom/google/android/maps/driveabout/location/h;->f:Z

    if-eqz v2, :cond_b

    iget-wide v2, p2, Lcom/google/android/maps/driveabout/location/h;->g:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    :cond_b
    iget-object v2, v0, Lcom/google/android/maps/driveabout/location/g;->h:Lcom/google/android/maps/driveabout/nav/aa;

    if-eqz v2, :cond_c

    iget-object v2, p2, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, v0, Lcom/google/android/maps/driveabout/location/g;->h:Lcom/google/android/maps/driveabout/nav/aa;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/aa;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v2

    float-to-double v2, v2

    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/g;->h:Lcom/google/android/maps/driveabout/nav/aa;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/nav/aa;->a(D)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/nav/aa;)V

    :cond_c
    :goto_8
    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v8, p0, Lcom/google/android/maps/driveabout/location/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_e
    iget v2, p0, Lcom/google/android/maps/driveabout/location/f;->i:I

    const/4 v7, 0x2

    if-eq v2, v7, :cond_f

    iget-object v2, v0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->b()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setLatitude(D)V

    iget-object v2, v0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->d()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setLongitude(D)V

    :cond_f
    iget-boolean v2, p2, Lcom/google/android/maps/driveabout/location/h;->f:Z

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    :cond_10
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c(Z)V

    iget-object v2, v0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bj;->b()Lcom/google/android/maps/driveabout/e/an;

    move-result-object v2

    iget-object v7, v0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/e/an;Lcom/google/android/maps/driveabout/e/ab;)V

    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/g;->h:Lcom/google/android/maps/driveabout/nav/aa;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/nav/aa;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->h:Lcom/google/android/maps/driveabout/nav/w;

    if-eqz v0, :cond_c

    const-wide/16 v7, 0x0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_c

    div-double v2, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(D)V

    goto :goto_8
.end method

.method private a(Landroid/location/Location;Lcom/google/android/maps/driveabout/util/j;D)Lcom/google/android/maps/driveabout/store/bm;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    const-wide/high16 v0, 0x4049

    mul-double/2addr v0, p3

    double-to-int v0, v0

    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;I)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-array v6, v5, [Lcom/google/android/maps/driveabout/e/ab;

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/g;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    aput-object v0, v6, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lcom/google/android/maps/driveabout/e/al;->a([Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    const-wide/high16 v5, 0x4014

    mul-double/2addr v5, p3

    double-to-int v3, v5

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/e/al;->b(I)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/util/j;->d()I

    move-result v1

    int-to-double v5, v1

    mul-double/2addr v5, p3

    double-to-int v1, v5

    invoke-static {v4, v1}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;I)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v3

    :try_start_0
    iget v1, p0, Lcom/google/android/maps/driveabout/location/f;->i:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/f;->e:Lcom/google/android/maps/driveabout/store/bn;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/e/al;->b(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/maps/driveabout/store/bn;->a(Lcom/google/android/maps/driveabout/e/al;ZJ)Lcom/google/android/maps/driveabout/store/bm;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/location/h;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->h:Lcom/google/android/maps/driveabout/nav/w;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    const-wide v1, 0x40f86a0000000000L

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/location/h;->a()D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/f;->h:Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/e/ab;D)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/nav/aa;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/location/g;Lcom/google/android/maps/driveabout/store/bh;Lcom/google/android/maps/driveabout/location/h;)V
    .locals 11

    const/4 v9, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/store/bh;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/store/bj;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bj;->c()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bj;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    float-to-double v2, v0

    const/4 v0, 0x7

    new-array v10, v0, [Lcom/google/android/maps/driveabout/store/bj;

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/g;->a()D

    move-result-wide v6

    move-object v0, p0

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/maps/driveabout/location/f;->a(Lcom/google/android/maps/driveabout/store/bj;DDDLcom/google/android/maps/driveabout/location/h;I[Lcom/google/android/maps/driveabout/store/bj;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v9, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/g;->b()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/bj;DDDLcom/google/android/maps/driveabout/location/h;I[Lcom/google/android/maps/driveabout/store/bj;)V
    .locals 19

    aput-object p1, p10, p9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/bj;->c()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/bj;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p8

    iget-wide v2, v0, Lcom/google/android/maps/driveabout/location/h;->e:D

    move-object/from16 v0, p8

    iget-wide v4, v0, Lcom/google/android/maps/driveabout/location/h;->a:D

    mul-double/2addr v2, v4

    div-double v2, v2, v16

    sub-double v3, p2, v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/bj;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/location/g;

    iget-wide v5, v2, Lcom/google/android/maps/driveabout/location/g;->i:D

    cmpl-double v5, v5, v3

    if-ltz v5, :cond_0

    iget-wide v5, v2, Lcom/google/android/maps/driveabout/location/g;->i:D

    sub-double v5, v5, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double v5, v5, v16

    move-object/from16 v0, p8

    iget-wide v7, v0, Lcom/google/android/maps/driveabout/location/h;->a:D

    div-double/2addr v5, v7

    add-double v5, v5, p4

    move-object/from16 v0, p8

    invoke-virtual {v0, v5, v6}, Lcom/google/android/maps/driveabout/location/h;->a(D)D

    move-result-wide v5

    mul-double v5, v5, p6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/maps/driveabout/location/g;->b(D)V

    :cond_0
    if-nez p9, :cond_2

    move-wide v13, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/bj;->a()Ljava/util/ArrayList;

    move-result-object v18

    const/4 v2, 0x0

    move v15, v2

    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/store/bi;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bi;->b()F

    move-result v3

    float-to-double v4, v3

    cmpl-double v3, v4, v13

    if-lez v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bi;->a()Lcom/google/android/maps/driveabout/store/bj;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v7

    invoke-static {v6, v7}, Lcom/google/android/maps/driveabout/e/ad;->a(FF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/google/android/maps/driveabout/location/f;->a(D)D

    move-result-wide v6

    sub-double v4, v4, p2

    mul-double v4, v4, v16

    move-object/from16 v0, p8

    iget-wide v8, v0, Lcom/google/android/maps/driveabout/location/h;->a:D

    div-double/2addr v4, v8

    add-double v4, v4, p4

    add-double/2addr v6, v4

    move-object/from16 v0, p8

    iget-wide v4, v0, Lcom/google/android/maps/driveabout/location/h;->j:D

    const-wide/high16 v8, 0x4010

    move-object/from16 v0, p8

    iget-wide v10, v0, Lcom/google/android/maps/driveabout/location/h;->k:D

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    const/4 v8, 0x6

    move/from16 v0, p9

    if-ge v0, v8, :cond_1

    cmpg-double v4, v6, v4

    if-gez v4, :cond_1

    move-object/from16 v0, p10

    move/from16 v1, p9

    invoke-static {v3, v0, v1}, Lcom/google/android/maps/driveabout/location/f;->a(Lcom/google/android/maps/driveabout/store/bj;[Lcom/google/android/maps/driveabout/store/bj;I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bi;->c()F

    move-result v2

    float-to-double v4, v2

    add-int/lit8 v11, p9, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/google/android/maps/driveabout/location/f;->a(Lcom/google/android/maps/driveabout/store/bj;DDDLcom/google/android/maps/driveabout/location/h;I[Lcom/google/android/maps/driveabout/store/bj;)V

    :cond_1
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_1

    :cond_2
    move-wide/from16 v13, p2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/bj;[Lcom/google/android/maps/driveabout/store/bj;I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    if-ne v2, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "driveabout_hmm"

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/location/f;->i:I

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/f;->h:Lcom/google/android/maps/driveabout/nav/w;

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v0

    new-instance v5, Lcom/google/android/maps/driveabout/location/h;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/location/f;->g:Lcom/google/android/maps/driveabout/location/h;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/location/f;->h:Lcom/google/android/maps/driveabout/nav/w;

    invoke-direct {v5, p1, v6, v0, v7}, Lcom/google/android/maps/driveabout/location/h;-><init>(Landroid/location/Location;Lcom/google/android/maps/driveabout/location/h;Lcom/google/android/maps/driveabout/util/j;Lcom/google/android/maps/driveabout/nav/w;)V

    invoke-direct {p0, p1, v5, v0}, Lcom/google/android/maps/driveabout/location/f;->a(Landroid/location/Location;Lcom/google/android/maps/driveabout/location/h;Lcom/google/android/maps/driveabout/util/j;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h()Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-direct {p0, v0, v5}, Lcom/google/android/maps/driveabout/location/f;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/location/h;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    const-wide/16 v5, 0xc8

    cmp-long v5, v1, v5

    if-lez v5, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-string v5, "HMMLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, candidates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-super {p0, v0}, Lcom/google/android/maps/driveabout/location/d;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
