.class public final Lcom/google/android/maps/driveabout/b/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/aw;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/e/aw;

.field private static final b:Lcom/google/android/maps/driveabout/e/aw;


# instance fields
.field private volatile c:I

.field private volatile d:Z

.field private e:Lcom/google/android/maps/driveabout/nav/w;

.field private f:Lcom/google/android/maps/driveabout/e/af;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/google/android/maps/driveabout/e/aw;

.field private final k:Lcom/google/android/maps/driveabout/util/g;

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/e/aw;

    new-instance v0, Lcom/google/android/maps/driveabout/b/y;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/b/y;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/e/aw;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/x;->d:Z

    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/e/aw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->k:Lcom/google/android/maps/driveabout/util/g;

    return-void
.end method

.method private static a(ILcom/google/android/maps/driveabout/e/ab;)I
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v0

    int-to-double v2, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/ab;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->c:I

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/b/x;->a(ILcom/google/android/maps/driveabout/e/ab;)I

    move-result v0

    return v0
.end method

.method private b(I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v3

    if-lt v2, v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/e/af;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/util/j;->t()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/b/x;->a(ILcom/google/android/maps/driveabout/e/ab;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    iget v6, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    int-to-double v5, v2

    cmpg-double v2, v3, v5

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 5

    const/16 v4, 0xe

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/e/aw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    iget v1, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/x;->a(Lcom/google/android/maps/driveabout/e/ab;)I

    move-result v1

    invoke-static {v0, v4, v1}, Lcom/google/android/maps/driveabout/b/s;->a(Lcom/google/android/maps/driveabout/e/ab;II)Lcom/google/android/maps/driveabout/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->l:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/x;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/x;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/e/af;

    iget v1, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/e/af;

    iget v2, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/b/s;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/x;->a(Lcom/google/android/maps/driveabout/e/ab;)I

    move-result v3

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/google/android/maps/driveabout/b/s;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->m:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/e/aw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/av;
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    sget-object v1, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/e/aw;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/e/aw;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/x;->c()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->k:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->k:Lcom/google/android/maps/driveabout/util/g;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->c:I

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/ah;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->i()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    if-gt v1, v0, :cond_1

    sget-object v1, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/e/aw;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    iput p2, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    :cond_0
    :goto_0
    iput p2, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    if-gt v0, p2, :cond_2

    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/e/aw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    iput p2, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    sget-object v1, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/e/aw;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    if-ge v0, p2, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/e/aw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/e/af;

    iput v1, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    iput v1, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    iput v1, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/e/aw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/e/af;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/e/aw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/e/aw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->k:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->a()V

    return-void
.end method
