.class public final Lcom/google/android/maps/driveabout/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/aw;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/maps/driveabout/e/ab;

.field private final f:I

.field private final g:I

.field private final h:D

.field private final i:D

.field private j:Lcom/google/android/maps/driveabout/e/av;

.field private k:Lcom/google/android/maps/driveabout/e/av;

.field private l:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;II)V
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/b/s;->j:Lcom/google/android/maps/driveabout/e/av;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/s;->e:Lcom/google/android/maps/driveabout/e/ab;

    iput p3, p0, Lcom/google/android/maps/driveabout/b/s;->a:I

    if-ge p4, v0, :cond_0

    move p4, v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v2

    invoke-static {p3, v1, v2}, Lcom/google/android/maps/driveabout/e/av;->a(III)Lcom/google/android/maps/driveabout/e/av;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v3

    invoke-static {p3, v2, v3}, Lcom/google/android/maps/driveabout/e/av;->a(III)Lcom/google/android/maps/driveabout/e/av;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_1

    iput v7, p0, Lcom/google/android/maps/driveabout/b/s;->f:I

    iput p4, p0, Lcom/google/android/maps/driveabout/b/s;->g:I

    iput v7, p0, Lcom/google/android/maps/driveabout/b/s;->c:I

    iput v0, p0, Lcom/google/android/maps/driveabout/b/s;->d:I

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/b/s;->b:I

    :goto_0
    iget v0, p0, Lcom/google/android/maps/driveabout/b/s;->b:I

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/b/s;->i:D

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/b/s;->h:D

    :goto_1
    iput v7, p0, Lcom/google/android/maps/driveabout/b/s;->l:I

    return-void

    :cond_1
    iput p4, p0, Lcom/google/android/maps/driveabout/b/s;->f:I

    iput v7, p0, Lcom/google/android/maps/driveabout/b/s;->g:I

    iput v0, p0, Lcom/google/android/maps/driveabout/b/s;->c:I

    iput v7, p0, Lcom/google/android/maps/driveabout/b/s;->d:I

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/b/s;->b:I

    goto :goto_0

    :cond_2
    int-to-double v0, v3

    iget v2, p0, Lcom/google/android/maps/driveabout/b/s;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/b/s;->h:D

    int-to-double v0, v4

    iget v2, p0, Lcom/google/android/maps/driveabout/b/s;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/b/s;->i:D

    goto :goto_1
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;II)Lcom/google/android/maps/driveabout/b/s;
    .locals 4

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/b/s;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/google/android/maps/driveabout/b/s;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/av;
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/s;->j:Lcom/google/android/maps/driveabout/e/av;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/s;->j:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/s;->k:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/s;->j:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/s;->k:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/e/av;

    iget v1, p0, Lcom/google/android/maps/driveabout/b/s;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/s;->j:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/b/s;->c:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/b/s;->j:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v3

    iget v4, p0, Lcom/google/android/maps/driveabout/b/s;->d:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/av;-><init>(III)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/s;->j:Lcom/google/android/maps/driveabout/e/av;

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/s;->j:Lcom/google/android/maps/driveabout/e/av;

    :goto_1
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/b/s;->l:I

    iget v1, p0, Lcom/google/android/maps/driveabout/b/s;->b:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/s;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/b/s;->l:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/b/s;->h:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/s;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/maps/driveabout/b/s;->l:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/b/s;->i:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/b/s;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/b/s;->f:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/b/s;->g:I

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/android/maps/driveabout/e/av;->a(III)Lcom/google/android/maps/driveabout/e/av;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/b/s;->j:Lcom/google/android/maps/driveabout/e/av;

    iget v2, p0, Lcom/google/android/maps/driveabout/b/s;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/b/s;->f:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/b/s;->c:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/b/s;->g:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/b/s;->d:I

    add-int/2addr v1, v3

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/e/av;->a(III)Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/s;->k:Lcom/google/android/maps/driveabout/e/av;

    iget v0, p0, Lcom/google/android/maps/driveabout/b/s;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/s;->l:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
