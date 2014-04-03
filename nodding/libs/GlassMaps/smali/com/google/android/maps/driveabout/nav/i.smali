.class public final Lcom/google/android/maps/driveabout/nav/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:Lcom/google/android/maps/driveabout/nav/i;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Lcom/google/android/maps/driveabout/nav/ah;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PREPARE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ACT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SUCCESS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NOTE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/nav/i;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIZLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/nav/i;->b:I

    iput p2, p0, Lcom/google/android/maps/driveabout/nav/i;->c:I

    iput p3, p0, Lcom/google/android/maps/driveabout/nav/i;->d:I

    iput p4, p0, Lcom/google/android/maps/driveabout/nav/i;->e:I

    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/nav/i;->f:Z

    iput-object p6, p0, Lcom/google/android/maps/driveabout/nav/i;->h:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/maps/driveabout/nav/i;->i:I

    iput p8, p0, Lcom/google/android/maps/driveabout/nav/i;->k:I

    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;D)Lcom/google/android/maps/driveabout/nav/i;
    .locals 13

    const/4 v8, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    if-ltz v1, :cond_0

    if-lt v1, v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v0

    int-to-double v2, v0

    mul-double v9, v2, p1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v3

    invoke-static {p0, v6}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v0

    int-to-double v6, v0

    mul-double v11, v6, p1

    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x7

    invoke-static {p0, v0, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v7

    const/16 v0, 0x8

    invoke-static {p0, v0, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v8

    new-instance v0, Lcom/google/android/maps/driveabout/nav/i;

    double-to-int v2, v9

    double-to-int v4, v11

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/nav/i;-><init>(IIIIZLjava/lang/String;II)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/i;->b:I

    return v0
.end method

.method final a(Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/i;->j:Lcom/google/android/maps/driveabout/nav/ah;

    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/nav/i;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/i;->g:Lcom/google/android/maps/driveabout/nav/i;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/i;->f:Z

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/i;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/i;->d:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/i;->e:I

    return v0
.end method

.method public final e()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/i;->j:Lcom/google/android/maps/driveabout/nav/ah;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/i;->f:Z

    return v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/nav/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/i;->g:Lcom/google/android/maps/driveabout/nav/i;

    return-object v0
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/i;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/i;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/i;->i:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/i;->i:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/i;->j:Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/i;->j:Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->t()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/i;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ak;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ak;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/i;->j:Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/i;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/i;->i:I

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/google/android/maps/driveabout/a/m;
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/i;->k:I

    if-ltz v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/a/t;

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/i;->k:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/a/t;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/nav/i;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/i;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " step:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/i;->j:Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
