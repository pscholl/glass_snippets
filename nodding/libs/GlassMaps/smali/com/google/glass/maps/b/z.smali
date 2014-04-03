.class public final Lcom/google/glass/maps/b/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/maps/b/an;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/e/bf;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(F)I
    .locals 1

    const v0, 0x41533333

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/16 v0, 0xe

    :goto_0
    return v0

    :cond_0
    const v0, 0x3f19999a

    add-float/2addr v0, p0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/bf;Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->e()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/e/bf;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-lt v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/glass/maps/b/f;)Ljava/util/List;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->k()Lcom/google/android/maps/driveabout/e/bf;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/maps/b/z;->a:Lcom/google/android/maps/driveabout/e/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/z;->a:Lcom/google/android/maps/driveabout/e/bf;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/e/bf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/z;->b:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/bf;->a()Lcom/google/android/maps/driveabout/e/bg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->g()F

    move-result v2

    invoke-static {v2}, Lcom/google/glass/maps/b/z;->a(F)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/e/av;->a(Lcom/google/android/maps/driveabout/e/bg;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->f()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->e()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    invoke-static {v1, v2}, Lcom/google/glass/maps/b/z;->a(Lcom/google/android/maps/driveabout/e/bf;Ljava/util/ArrayList;)V

    :cond_1
    iput-object v2, p0, Lcom/google/glass/maps/b/z;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/google/glass/maps/b/z;->a:Lcom/google/android/maps/driveabout/e/bf;

    iget-object v0, p0, Lcom/google/glass/maps/b/z;->b:Ljava/util/List;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
