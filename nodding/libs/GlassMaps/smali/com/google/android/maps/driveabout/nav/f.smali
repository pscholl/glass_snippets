.class public final Lcom/google/android/maps/driveabout/nav/f;
.super Lcom/google/googlenav/datarequest/a;


# static fields
.field private static k:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:[Lcom/google/android/maps/driveabout/nav/ao;

.field private final c:[Lcom/google/android/maps/driveabout/nav/b;

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:F

.field private final h:F

.field private final i:Lcom/google/android/maps/driveabout/nav/ao;

.field private final j:I

.field private l:Lcom/google/googlenav/common/io/b/a;

.field private m:I

.field private n:[Lcom/google/android/maps/driveabout/nav/w;

.field private o:[Lcom/google/android/maps/driveabout/nav/ao;

.field private p:[Lcom/google/android/maps/driveabout/nav/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.android.tts"

    sput-object v0, Lcom/google/android/maps/driveabout/nav/f;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([Lcom/google/android/maps/driveabout/nav/ao;IFFZLcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/f;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    iput p2, p0, Lcom/google/android/maps/driveabout/nav/f;->a:I

    iput p9, p0, Lcom/google/android/maps/driveabout/nav/f;->j:I

    iput p3, p0, Lcom/google/android/maps/driveabout/nav/f;->g:F

    iput p4, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/nav/f;->d:Z

    iput-object p6, p0, Lcom/google/android/maps/driveabout/nav/f;->i:Lcom/google/android/maps/driveabout/nav/ao;

    iput p8, p0, Lcom/google/android/maps/driveabout/nav/f;->f:I

    iput-object p10, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/b;

    iput p7, p0, Lcom/google/android/maps/driveabout/nav/f;->e:I

    return-void
.end method

.method synthetic constructor <init>([Lcom/google/android/maps/driveabout/nav/ao;IFFZLcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;Lcom/google/android/maps/driveabout/nav/g;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/google/android/maps/driveabout/nav/f;-><init>([Lcom/google/android/maps/driveabout/nav/ao;IFFZLcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/f;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    return p1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/google/android/maps/driveabout/nav/f;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a([Lcom/google/android/maps/driveabout/nav/ao;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/nav/f;->b([Lcom/google/android/maps/driveabout/nav/ao;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 10

    const/16 v9, 0xf

    const/4 v8, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    new-array v3, v2, [Lcom/google/android/maps/driveabout/nav/ao;

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v8, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v1}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    if-ne v0, v6, :cond_1

    new-instance v6, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v6, v5, p1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    aput-object v6, v3, v0

    :goto_1
    invoke-virtual {v4, v9}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v4, v9}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/nav/ao;->a(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    aput-object v6, v3, v0

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method private a(Lcom/google/googlenav/common/io/b/a;[Lcom/google/android/maps/driveabout/nav/ao;)[Lcom/google/android/maps/driveabout/nav/w;
    .locals 13

    const/16 v12, 0x8

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, v12}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v10

    new-array v11, v10, [Lcom/google/android/maps/driveabout/nav/w;

    const/16 v1, 0xd

    invoke-static {p1, v1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v7

    if-le v7, v2, :cond_0

    move v7, v0

    :cond_0
    if-ne v7, v2, :cond_1

    const/16 v1, 0x17

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/b/f;->e(Lcom/google/googlenav/common/io/b/a;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v7, 0x3

    :cond_1
    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_2

    invoke-virtual {p1, v12, v9}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/f;->j:I

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->g:F

    iget v4, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/nav/f;->d:Z

    iget-object v6, p0, Lcom/google/android/maps/driveabout/nav/f;->i:Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/nav/f;->p:[Lcom/google/android/maps/driveabout/nav/b;

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/googlenav/common/io/b/a;I[Lcom/google/android/maps/driveabout/nav/ao;FFZLcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    aput-object v0, v11, v9

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_2
    return-object v11
.end method

.method private b(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->l:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    return v0
.end method

.method private static b([Lcom/google/android/maps/driveabout/nav/ao;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/android/maps/driveabout/e/ab;->b(II)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/android/maps/driveabout/e/ab;->b(II)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v5

    div-double v2, v3, v5

    const-wide/high16 v4, 0x4000

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 8

    const/4 v7, 0x7

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [Lcom/google/android/maps/driveabout/nav/ao;

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    new-array v0, v3, [Lcom/google/android/maps/driveabout/nav/ao;

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v7, v1}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    new-instance v5, Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static c(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/b;
    .locals 7

    const/16 v6, 0xe

    const/4 v2, 0x0

    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    new-array v0, v3, [Lcom/google/android/maps/driveabout/nav/b;

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/b;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v5

    aput-object v5, v0, v1

    aget-object v5, v0, v1

    if-nez v5, :cond_1

    const-string v0, "DirectionsRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Option with no value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Lcom/google/android/maps/driveabout/nav/b;

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private x()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->l:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->l:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/f;->c(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->p:[Lcom/google/android/maps/driveabout/nav/b;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/f;->y()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/f;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/f;->l:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/nav/f;->a(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/f;->l:Lcom/google/googlenav/common/io/b/a;

    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/nav/f;->a(Lcom/google/googlenav/common/io/b/a;[Lcom/google/android/maps/driveabout/nav/ao;)[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:[Lcom/google/android/maps/driveabout/nav/w;

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->j:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:[Lcom/google/android/maps/driveabout/nav/w;

    array-length v0, v0

    if-ge v0, v2, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/f;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->l:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/f;->b(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->o:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->o:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->o:[Lcom/google/android/maps/driveabout/nav/ao;

    goto :goto_0

    :cond_2
    const-string v0, "DirectionsRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private y()V
    .locals 4

    const/4 v3, 0x2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->l:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    if-lt v1, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/f;->b(I)I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/f;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput v3, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    return-void
.end method

.method public final a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/f;->l:Lcom/google/googlenav/common/io/b/a;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/f;->x()V

    return-void
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/f;->r()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/google/i/a/a/b/h;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/nav/f;->a(Lcom/google/googlenav/common/io/b/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DA:DirectionsRequest"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "DirectionsRequest: Handling request failed"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "DirectionsRequest"

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "DA:DirectionsRequest"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "DirectionsRequest: Parse failed"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()[Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:[Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method

.method public final d()[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->o:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->a:I

    return v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->j:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->j:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->e:I

    return v0
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->j:I

    return v0
.end method

.method public final p()Lcom/google/googlenav/common/io/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->l:Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final r()Lcom/google/googlenav/common/io/b/a;
    .locals 9

    const v4, 0x186a0

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/i/a/a/b/h;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->a:I

    invoke-virtual {v2, v6, v0}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->j()Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->f:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->f:I

    if-le v0, v6, :cond_1

    const/16 v0, 0x16

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    :cond_1
    const/4 v0, 0x7

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0xf

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/16 v0, 0x14

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x26

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x19

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x15

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x1d

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x1f

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x17

    const/16 v3, 0x32

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/16 v0, 0x18

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->j:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    sget-object v0, Lcom/google/android/maps/driveabout/nav/f;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/16 v0, 0x23

    sget-object v3, Lcom/google/android/maps/driveabout/nav/f;->k:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->j:I

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/i/a/a/b/l;->g:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/util/f;->b(Lcom/google/android/maps/driveabout/e/m;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    invoke-virtual {v0, v8, v4}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/b;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    const/16 v5, 0xa

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/b;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->g:F

    cmpl-float v0, v0, v7

    if-gez v0, :cond_5

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_8

    :cond_5
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/h;->A:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/f;->g:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/f;->g:F

    float-to-int v1, v1

    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    :cond_6
    iget v1, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_7

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    float-to-int v1, v1

    invoke-virtual {v0, v8, v1}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    :cond_7
    const/16 v1, 0x11

    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    :cond_8
    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " mode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " action:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->j:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " startBearing:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->g:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " startSpeed:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " waypoints: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/f;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/f;->i:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/nav/ao;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/f;->d:Z

    if-eqz v0, :cond_2

    const-string v0, " hasUncertainFromPoint:true"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, " maxTripCount:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/b;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->e:I

    if-eqz v0, :cond_4

    const-string v0, " previousAlternateExtraMeters:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, " ] ]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
