.class public final Lcom/google/android/maps/driveabout/g/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/g/f;

.field private static final b:[Lcom/google/android/maps/driveabout/g/a;


# instance fields
.field private final c:I

.field private final d:J

.field private final e:[Lcom/google/android/maps/driveabout/g/f;

.field private final f:Lcom/google/android/maps/driveabout/e/af;

.field private final g:I

.field private h:[Lcom/google/android/maps/driveabout/g/a;

.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/g/f;

    const-string v1, "Unknown Road"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/g/f;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/maps/driveabout/g/e;->a:Lcom/google/android/maps/driveabout/g/f;

    new-array v0, v3, [Lcom/google/android/maps/driveabout/g/a;

    sput-object v0, Lcom/google/android/maps/driveabout/g/e;->b:[Lcom/google/android/maps/driveabout/g/a;

    return-void
.end method

.method public constructor <init>(J[Lcom/google/android/maps/driveabout/g/f;Lcom/google/android/maps/driveabout/e/af;IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segments must have at least one name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p5, p0, Lcom/google/android/maps/driveabout/g/e;->c:I

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/g/e;->d:J

    iput-object p3, p0, Lcom/google/android/maps/driveabout/g/e;->e:[Lcom/google/android/maps/driveabout/g/f;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/g/e;->f:Lcom/google/android/maps/driveabout/e/af;

    iput p6, p0, Lcom/google/android/maps/driveabout/g/e;->g:I

    sget-object v0, Lcom/google/android/maps/driveabout/g/e;->b:[Lcom/google/android/maps/driveabout/g/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->h:[Lcom/google/android/maps/driveabout/g/a;

    iput p7, p0, Lcom/google/android/maps/driveabout/g/e;->i:I

    iput p8, p0, Lcom/google/android/maps/driveabout/g/e;->j:I

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/av;I)J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private h()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/g/e;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/g/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->h:[Lcom/google/android/maps/driveabout/g/a;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(ILcom/google/android/maps/driveabout/e/ab;)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/g/e;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->f:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->f:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->f:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/maps/driveabout/g/e;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    return-void
.end method

.method public final varargs a([Lcom/google/android/maps/driveabout/g/a;)V
    .locals 1

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/g/e;->b:[Lcom/google/android/maps/driveabout/g/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->h:[Lcom/google/android/maps/driveabout/g/a;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/g/e;->h:[Lcom/google/android/maps/driveabout/g/a;

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/g/e;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/google/android/maps/driveabout/g/e;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/g/e;->c:I

    and-int/lit8 v0, v0, 0x4

    iget v1, p1, Lcom/google/android/maps/driveabout/g/e;->c:I

    and-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->f:Lcom/google/android/maps/driveabout/e/af;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/g/e;->f:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/g/e;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/g/e;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->h:[Lcom/google/android/maps/driveabout/g/a;

    array-length v0, v0

    return v0
.end method

.method public final c(I)Lcom/google/android/maps/driveabout/g/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->e:[Lcom/google/android/maps/driveabout/g/f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->f:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/e;->f:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/maps/driveabout/g/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/g/e;->d:J

    check-cast p1, Lcom/google/android/maps/driveabout/g/e;

    iget-wide v3, p1, Lcom/google/android/maps/driveabout/g/e;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/g/e;->i:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/g/e;->j:I

    return v0
.end method

.method public final hashCode()I
    .locals 7

    const-wide/16 v5, 0xff

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/g/e;->d:J

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/g/e;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/g/e;->d:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/g/e;->e:[Lcom/google/android/maps/driveabout/g/f;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unroutable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/e;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " leaves-region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/e;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enters-region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/e;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " num-points: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/e;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " first-point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " last-point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " num-arcs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/g/e;->h:[Lcom/google/android/maps/driveabout/g/a;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
