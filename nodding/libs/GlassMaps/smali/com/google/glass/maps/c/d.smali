.class public final Lcom/google/glass/maps/c/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_miles_abbreviated:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->a:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_feet_abbreviated:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->b:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_yards_abbreviated:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->c:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_kilometers_abbreviated:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->d:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_meters_abbreviated:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->e:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_miles_compressed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->f:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_feet_compressed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->g:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_yards_compressed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->h:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_kilometers_compressed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->i:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_meters_compressed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->j:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_miles_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->k:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_feet_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->l:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_yards_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->m:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_kilometers_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->n:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_meters_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->o:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_separator:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/c/d;->p:Ljava/lang/String;

    sget v0, Lcom/google/glass/maps/bs;->da_distance_format_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imperial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/glass/maps/c/d;->q:I

    :goto_0
    return-void

    :cond_0
    const-string v1, "imperial_yards"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/glass/maps/c/d;->q:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/c/d;->q:I

    goto :goto_0
.end method

.method private static a(II)I
    .locals 1

    shr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method

.method private static a(JI)I
    .locals 5

    const/16 v4, 0x8

    shl-long v0, p0, v4

    shl-int/lit8 v2, p2, 0x7

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p2

    div-long/2addr v0, v2

    shr-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method private a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    int-to-long v0, p1

    const-wide/32 v2, 0x8028

    mul-long v4, v0, v2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    const-wide/32 v0, 0x4c9960

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    const-wide/16 v0, 0x3

    div-long v1, v4, v0

    long-to-int v0, v1

    div-int/lit16 v0, v0, 0x2710

    mul-int/lit16 v3, v0, 0x2710

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz p3, :cond_1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/glass/maps/c/d;->a(II)I

    move-result v0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcom/google/glass/maps/c/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    const-wide/32 v0, 0x4c9960

    cmp-long v0, v4, v0

    if-gez v0, :cond_5

    long-to-int v0, v4

    div-int/lit16 v0, v0, 0x2710

    mul-int/lit16 v1, v0, 0x2710

    int-to-long v1, v1

    sub-long v1, v4, v1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-eqz p3, :cond_4

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/google/glass/maps/c/d;->a(II)I

    move-result v0

    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcom/google/glass/maps/c/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-wide/32 v0, 0x2fd6180

    cmp-long v0, v4, v0

    if-gez v0, :cond_6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/c/d;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x509100

    invoke-static {v4, v5, v3}, Lcom/google/glass/maps/c/d;->a(JI)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcom/google/glass/maps/c/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-wide/32 v0, 0x325aa00

    cmp-long v0, v4, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/c/d;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcom/google/glass/maps/c/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-wide/32 v0, 0x325aa00

    div-long v2, v4, v0

    const-wide/32 v0, 0x325aa00

    rem-long v0, v4, v0

    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-ltz v4, :cond_9

    const-wide/32 v4, 0x192d500

    cmp-long v4, v0, v4

    if-ltz v4, :cond_9

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    const-wide/16 v0, 0x0

    :cond_8
    :goto_1
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-ltz v4, :cond_a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p5, v0}, Lcom/google/glass/maps/c/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const v4, 0x509100

    invoke-static {v0, v1, v4}, Lcom/google/glass/maps/c/d;->a(JI)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0xa

    cmp-long v4, v0, v4

    if-nez v4, :cond_8

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_a
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/c/d;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {p5, v4}, Lcom/google/glass/maps/c/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0xa

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x3cf

    if-ge p1, v1, :cond_2

    if-eqz p2, :cond_0

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_1

    :goto_0
    invoke-static {p1, v0}, Lcom/google/glass/maps/c/d;->a(II)I

    move-result p1

    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p3, v0}, Lcom/google/glass/maps/c/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/16 v0, 0x32

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_3

    new-array v0, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/maps/c/d;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Lcom/google/glass/maps/c/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v3, -0x3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v3, v0, :cond_5

    const/16 v4, 0x1f4

    if-lt v1, v4, :cond_5

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    :cond_4
    :goto_2
    if-lt v3, v0, :cond_6

    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Lcom/google/glass/maps/c/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    int-to-long v4, v1

    const/16 v1, 0x64

    invoke-static {v4, v5, v1}, Lcom/google/glass/maps/c/d;->a(JI)I

    move-result v1

    if-ne v1, v0, :cond_4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    goto :goto_2

    :cond_6
    new-array v0, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/maps/c/d;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p4, v0}, Lcom/google/glass/maps/c/d;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, -0x1

    const/16 v5, 0x7b

    const-string v0, "${I18N"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_1
    if-eq v0, v6, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v6, :cond_2

    sub-int v3, v1, v0

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_4

    array-length v3, p1

    if-ge v1, v3, :cond_4

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" param("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/c/d;->a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/c/d;->a(IIZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(IIZI)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-gez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    iget p2, p0, Lcom/google/glass/maps/c/d;->q:I

    :cond_1
    if-ne p2, v1, :cond_4

    if-ne p4, v1, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/c/d;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/c/d;->d:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/c/d;->a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne p4, v2, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/c/d;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/c/d;->i:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/c/d;->a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/c/d;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/c/d;->n:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/c/d;->a(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne p2, v2, :cond_7

    if-ne p4, v1, :cond_5

    iget-object v0, p0, Lcom/google/glass/maps/c/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/c/d;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/c/d;->b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-ne p4, v2, :cond_6

    iget-object v0, p0, Lcom/google/glass/maps/c/d;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/c/d;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/c/d;->b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/glass/maps/c/d;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/c/d;->k:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/c/d;->b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    if-ne p4, v1, :cond_8

    iget-object v0, p0, Lcom/google/glass/maps/c/d;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/c/d;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/c/d;->c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-ne p4, v2, :cond_9

    iget-object v0, p0, Lcom/google/glass/maps/c/d;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/c/d;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/c/d;->c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/glass/maps/c/d;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/c/d;->k:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/glass/maps/c/d;->c(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    const-string v0, ""

    goto :goto_0
.end method
