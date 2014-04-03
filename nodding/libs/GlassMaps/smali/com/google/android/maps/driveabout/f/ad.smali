.class public final Lcom/google/android/maps/driveabout/f/ad;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/f/aa;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/f/aa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/ad;->a:Lcom/google/android/maps/driveabout/f/aa;

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/f/ac;)D
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/ac;->i()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/ac;->j()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/ac;->i()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private a(Ljava/util/ListIterator;)V
    .locals 12

    const/4 v7, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/maps/driveabout/f/ac;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/f/ac;->b()I

    move-result v0

    if-ne v0, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v11

    move v10, v9

    :goto_0
    if-gt v10, v8, :cond_4

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/maps/driveabout/f/ac;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/f/ac;->h()Lcom/google/android/maps/driveabout/g/e;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/f/ac;->h()Lcom/google/android/maps/driveabout/g/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4325

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/f/ac;->h()Lcom/google/android/maps/driveabout/g/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/g/e;->c(I)Lcom/google/android/maps/driveabout/g/f;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/f/ac;->g()Lcom/google/android/maps/driveabout/g/e;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/maps/driveabout/g/e;->c(I)Lcom/google/android/maps/driveabout/g/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/g/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/maps/driveabout/f/ac;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/ad;->a:Lcom/google/android/maps/driveabout/f/aa;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/f/ac;->f()I

    move-result v2

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/f/ac;->f()I

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/f/ac;->j()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/f/ac;->j()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/f/ac;->d()[Lcom/google/android/maps/driveabout/g/f;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/f/ac;-><init>(Lcom/google/android/maps/driveabout/f/aa;IILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;[Lcom/google/android/maps/driveabout/g/f;II)V

    move v1, v9

    :goto_1
    if-gt v1, v10, :cond_3

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "Describer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created u-turn maneuver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    move v0, v9

    :goto_2
    sub-int v2, v1, v11

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v6}, Lcom/google/android/maps/driveabout/f/ad;->a(Lcom/google/android/maps/driveabout/f/ac;)D

    move-result-wide v0

    const-wide v2, 0x4052c00000000000L

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_4

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_0
.end method

.method private b(Ljava/util/LinkedList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/f/ad;->a(Ljava/util/ListIterator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Ljava/util/LinkedList;)V
    .locals 11

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_0
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/ac;

    :goto_0
    move-object v9, v0

    :goto_1
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/maps/driveabout/f/ac;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/f/ac;->a()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_3

    new-instance v0, Lcom/google/android/maps/driveabout/f/ac;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/ad;->a:Lcom/google/android/maps/driveabout/f/aa;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/f/ac;->e()I

    move-result v2

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/f/ac;->f()I

    move-result v3

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/f/ac;->i()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/f/ac;->j()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/f/ac;->d()[Lcom/google/android/maps/driveabout/g/f;

    move-result-object v6

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/f/ac;->b()I

    move-result v7

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/f/ac;->c()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/f/ac;-><init>(Lcom/google/android/maps/driveabout/f/aa;IILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;[Lcom/google/android/maps/driveabout/g/f;II)V

    const-string v1, "Describer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping short sub-path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v10, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :goto_2
    move-object v9, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move-object v0, v8

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/f/ad;->b(Ljava/util/LinkedList;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/f/ad;->c(Ljava/util/LinkedList;)V

    return-void
.end method
