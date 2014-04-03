.class public final Lcom/google/glass/maps/b/h;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/e/af;

.field protected final b:Z

.field protected final c:[I

.field protected final d:[[F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/af;[[F[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/maps/b/h;->a:Lcom/google/android/maps/driveabout/e/af;

    iput-object p3, p0, Lcom/google/glass/maps/b/h;->c:[I

    iput-boolean p4, p0, Lcom/google/glass/maps/b/h;->b:Z

    iput-object p2, p0, Lcom/google/glass/maps/b/h;->d:[[F

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/af;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/h;->a:Lcom/google/android/maps/driveabout/e/af;

    return-object v0
.end method

.method public final a(F)Lcom/google/glass/maps/b/h;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/b/h;->a:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/e/af;->a(FI)[Z

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/google/glass/maps/b/h;->c:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/google/glass/maps/b/h;->c:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    if-eq v4, v5, :cond_0

    aput-boolean v1, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    move v1, v2

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-boolean v4, v3, v0

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/b/h;->a:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    if-ne v1, v0, :cond_4

    :goto_2
    return-object p0

    :cond_4
    new-array v4, v1, [I

    mul-int/lit8 v0, v1, 0x3

    new-array v1, v0, [I

    new-instance v5, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    move v0, v2

    :goto_3
    array-length v6, v3

    if-ge v2, v6, :cond_6

    aget-boolean v6, v3, v2

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/glass/maps/b/h;->a:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v6, v2, v5}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-virtual {v5, v1, v0}, Lcom/google/android/maps/driveabout/e/ab;->a([II)V

    iget-object v6, p0, Lcom/google/glass/maps/b/h;->c:[I

    aget v6, v6, v2

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/google/glass/maps/b/h;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/af;->a([I)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/b/h;->d:[[F

    iget-boolean v3, p0, Lcom/google/glass/maps/b/h;->b:Z

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/glass/maps/b/h;-><init>(Lcom/google/android/maps/driveabout/e/af;[[F[IZ)V

    move-object p0, v0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/al;)Ljava/util/List;
    .locals 9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/e/f;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/e/f;-><init>(Lcom/google/android/maps/driveabout/e/am;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/glass/maps/b/h;->a:Lcom/google/android/maps/driveabout/e/af;

    iget-object v2, p0, Lcom/google/glass/maps/b/h;->c:[I

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/maps/driveabout/e/f;->a(Lcom/google/android/maps/driveabout/e/af;[ILjava/util/List;Ljava/util/List;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    new-instance v6, Lcom/google/glass/maps/b/h;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/af;

    iget-object v7, p0, Lcom/google/glass/maps/b/h;->d:[[F

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget-boolean v8, p0, Lcom/google/glass/maps/b/h;->b:Z

    invoke-direct {v6, v0, v7, v1, v8}, Lcom/google/glass/maps/b/h;-><init>(Lcom/google/android/maps/driveabout/e/af;[[F[IZ)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final a(Lcom/google/glass/maps/opengl/c;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/b/h;->d:[[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/h;->c:[I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/b/h;->a:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/c;->a()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    const/4 v0, 0x2

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/b/h;->d:[[F

    iget-object v1, p0, Lcom/google/glass/maps/b/h;->c:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    :goto_2
    const/4 v1, 0x6

    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/b/h;->d:[[F

    iget-object v4, p0, Lcom/google/glass/maps/b/h;->c:[I

    aget v2, v4, v2

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    :goto_3
    add-int/lit8 v2, v3, -0x1

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/google/glass/maps/b/h;->d:[[F

    iget-object v4, p0, Lcom/google/glass/maps/b/h;->c:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    invoke-virtual {p1, v2}, Lcom/google/glass/maps/opengl/c;->a([F)V

    invoke-virtual {p1, v2}, Lcom/google/glass/maps/opengl/c;->a([F)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/c;->a([F)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/b/h;->b:Z

    return v0
.end method
