.class final Lcom/google/android/maps/driveabout/location/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:D

.field b:D

.field c:D

.field d:D

.field e:D

.field f:Lcom/google/android/maps/driveabout/store/bj;

.field g:Lcom/google/android/maps/driveabout/location/h;

.field h:Lcom/google/android/maps/driveabout/nav/aa;

.field i:D

.field j:Lcom/google/android/maps/driveabout/e/ab;

.field k:I


# direct methods
.method constructor <init>(ILcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/location/h;Lcom/google/android/maps/driveabout/util/j;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/location/g;->k:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/location/g;->g:Lcom/google/android/maps/driveabout/location/h;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bj;->c()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bj;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/maps/driveabout/location/h;->d:Lcom/google/android/maps/driveabout/e/ab;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;ZLcom/google/android/maps/driveabout/e/ab;)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bj;->c()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bj;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->i:D

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bj;->b()Lcom/google/android/maps/driveabout/e/an;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p3, v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/location/h;->a(Lcom/google/android/maps/driveabout/e/ab;DLcom/google/android/maps/driveabout/e/an;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->c:D

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/util/j;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/location/g;)I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    iget-wide v2, p1, Lcom/google/android/maps/driveabout/location/g;->a:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    iget-wide v2, p1, Lcom/google/android/maps/driveabout/location/g;->a:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/text/DecimalFormat;D)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-string v0, "-inf"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    return-wide v0
.end method

.method final a(Z)D
    .locals 5

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->c:D

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/g;->g:Lcom/google/android/maps/driveabout/location/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/location/h;->a(Lcom/google/android/maps/driveabout/e/ab;D)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/g;->h:Lcom/google/android/maps/driveabout/nav/aa;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/g;->h:Lcom/google/android/maps/driveabout/nav/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/g;->g:Lcom/google/android/maps/driveabout/location/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/g;->h:Lcom/google/android/maps/driveabout/nav/aa;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/location/h;->a(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/e/ab;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->b:D

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/g;->g:Lcom/google/android/maps/driveabout/location/h;

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/location/g;->b:D

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/location/h;->b(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    return-wide v0
.end method

.method final a(D)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    return-void
.end method

.method final b()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/g;->e:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->e:D

    return-void
.end method

.method final b(D)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->e:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/location/g;->e:D

    :cond_0
    return-void
.end method

.method final c()V
    .locals 2

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/location/g;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/g;->a(Lcom/google/android/maps/driveabout/location/g;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Candidate[id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/location/g;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",L:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/g;->a:D

    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/g;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",OnRouteL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/g;->b:D

    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/g;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",EmitL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/g;->c:D

    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/g;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",TransL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/g;->d:D

    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/g;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/g;->i:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/g;->f:Lcom/google/android/maps/driveabout/store/bj;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bj;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",P:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/g;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
