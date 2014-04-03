.class public final Lcom/google/glass/maps/b/ak;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/graphics/Typeface;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/maps/b/ak;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/glass/maps/b/ak;->b:Landroid/graphics/Typeface;

    iput p3, p0, Lcom/google/glass/maps/b/ak;->c:I

    iput p4, p0, Lcom/google/glass/maps/b/ak;->d:I

    iput p5, p0, Lcom/google/glass/maps/b/ak;->e:I

    invoke-direct {p0}, Lcom/google/glass/maps/b/ak;->a()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/b/ak;->f:I

    return-void
.end method

.method private a()I
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/b/ak;->c:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/maps/b/ak;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/maps/b/ak;->b:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/b/ak;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/b/ak;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/google/glass/maps/b/ak;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/ak;->b:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/maps/b/ak;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/ak;->c:I

    return v0
.end method

.method static synthetic c(Lcom/google/glass/maps/b/ak;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/ak;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/glass/maps/b/ak;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/ak;->e:I

    return v0
.end method

.method static synthetic e(Lcom/google/glass/maps/b/ak;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/ak;->d:I

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/glass/maps/b/ak;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/maps/b/ak;

    iget v2, p0, Lcom/google/glass/maps/b/ak;->c:I

    iget v3, p1, Lcom/google/glass/maps/b/ak;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/maps/b/ak;->b:Landroid/graphics/Typeface;

    iget-object v3, p1, Lcom/google/glass/maps/b/ak;->b:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/glass/maps/b/ak;->d:I

    iget v3, p1, Lcom/google/glass/maps/b/ak;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/maps/b/ak;->e:I

    iget v3, p1, Lcom/google/glass/maps/b/ak;->e:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/maps/b/ak;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/maps/b/ak;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/ak;->f:I

    return v0
.end method
