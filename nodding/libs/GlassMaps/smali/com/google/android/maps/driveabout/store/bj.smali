.class public final Lcom/google/android/maps/driveabout/store/bj;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/an;

.field private final b:Lcom/google/android/maps/driveabout/e/ab;

.field private final c:Lcom/google/android/maps/driveabout/e/ab;

.field private final d:Lcom/google/android/maps/driveabout/e/al;

.field private final e:F

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:Ljava/util/ArrayList;

.field private j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/e/an;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;ZZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/e/an;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/bj;->b:Lcom/google/android/maps/driveabout/e/ab;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/bj;->c:Lcom/google/android/maps/driveabout/e/ab;

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/store/bj;->f:Z

    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/store/bj;->g:Z

    iput p6, p0, Lcom/google/android/maps/driveabout/store/bj;->h:I

    invoke-static {p2, p3}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/bj;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/al;->b(I)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->d:Lcom/google/android/maps/driveabout/e/al;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bj;->c:Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ad;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/bj;->e:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->i:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->c:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method static a(Lcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/store/bj;)Z
    .locals 7

    const/16 v6, 0x80

    const/16 v5, 0x50

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/bj;->e:F

    iget v2, p1, Lcom/google/android/maps/driveabout/store/bj;->e:F

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/e/ad;->a(FF)F

    move-result v1

    const/high16 v2, 0x4307

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/e/an;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/an;->g()I

    move-result v1

    iget-object v2, p1, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/e/an;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/an;->g()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/e/an;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/an;->i()Z

    move-result v3

    iget-object v4, p1, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/e/an;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/an;->i()Z

    move-result v4

    if-lt v1, v6, :cond_2

    if-gt v2, v5, :cond_2

    if-eqz v4, :cond_0

    :cond_2
    if-lt v2, v6, :cond_3

    if-gt v1, v5, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/bj;->g:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/bj;->f:Z

    if-eqz v1, :cond_0

    :cond_4
    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    iget-boolean v1, p1, Lcom/google/android/maps/driveabout/store/bj;->g:Z

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/google/android/maps/driveabout/store/bj;->f:Z

    if-eqz v1, :cond_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->b:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/an;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/e/an;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/store/bj;)F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/bj;->e:F

    return v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/al;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->d:Lcom/google/android/maps/driveabout/e/al;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/store/bj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/bj;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/store/bj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/bj;->f:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/store/bj;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->i:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bj;->j:Ljava/lang/Object;

    return-void
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/an;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->a:Lcom/google/android/maps/driveabout/e/an;

    return-object v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->b:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->c:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/bj;->e:F

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bj;->j:Ljava/lang/Object;

    return-object v0
.end method
