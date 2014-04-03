.class public final Lcom/google/googlenav/b/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/b/a/b;

.field private static b:Z

.field private static n:Lcom/google/googlenav/b/a/a;

.field private static o:J

.field private static p:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/b/a/a;->b:Z

    const-wide/32 v0, -0x927c0

    sput-wide v0, Lcom/google/googlenav/b/a/a;->o:J

    const/4 v0, -0x1

    sput v0, Lcom/google/googlenav/b/a/a;->p:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/b/a/a;->c:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/b/a/a;->j:I

    iput p4, p0, Lcom/google/googlenav/b/a/a;->i:I

    iput p5, p0, Lcom/google/googlenav/b/a/a;->h:I

    iput p6, p0, Lcom/google/googlenav/b/a/a;->f:I

    iput p7, p0, Lcom/google/googlenav/b/a/a;->g:I

    iput p8, p0, Lcom/google/googlenav/b/a/a;->d:I

    iput p9, p0, Lcom/google/googlenav/b/a/a;->e:I

    iput p2, p0, Lcom/google/googlenav/b/a/a;->l:I

    iput p10, p0, Lcom/google/googlenav/b/a/a;->k:I

    iput-wide p11, p0, Lcom/google/googlenav/b/a/a;->m:J

    return-void
.end method

.method public static a()I
    .locals 6

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/b/a/a;->o:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-static {}, Lcom/google/googlenav/b/a/a;->b()Lcom/google/googlenav/b/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {v2}, Lcom/google/googlenav/b/a/a;->d()I

    move-result v2

    sput v2, Lcom/google/googlenav/b/a/a;->p:I

    :cond_0
    sput-wide v0, Lcom/google/googlenav/b/a/a;->o:J

    :cond_1
    sget v0, Lcom/google/googlenav/b/a/a;->p:I

    return v0
.end method

.method private static b()Lcom/google/googlenav/b/a/a;
    .locals 1

    sget-object v0, Lcom/google/googlenav/b/a/a;->a:Lcom/google/googlenav/b/a/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/b/a/a;->c()Lcom/google/googlenav/b/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/b/a/a;->a:Lcom/google/googlenav/b/a/b;

    invoke-interface {v0}, Lcom/google/googlenav/b/a/b;->a()Lcom/google/googlenav/b/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method private static c()Lcom/google/googlenav/b/a/a;
    .locals 13

    const/4 v2, -0x1

    sget-object v0, Lcom/google/googlenav/b/a/a;->n:Lcom/google/googlenav/b/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/b/a/a;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v11

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v0 .. v12}, Lcom/google/googlenav/b/a/a;-><init>(Ljava/lang/String;IIIIIIIIIJ)V

    sput-object v0, Lcom/google/googlenav/b/a/a;->n:Lcom/google/googlenav/b/a/a;

    :cond_0
    sget-object v0, Lcom/google/googlenav/b/a/a;->n:Lcom/google/googlenav/b/a/a;

    return-object v0
.end method

.method private d()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/b/a/a;->f:I

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
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/googlenav/b/a/a;

    iget v2, p0, Lcom/google/googlenav/b/a/a;->j:I

    iget v3, p1, Lcom/google/googlenav/b/a/a;->j:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/googlenav/b/a/a;->i:I

    iget v3, p1, Lcom/google/googlenav/b/a/a;->i:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/googlenav/b/a/a;->j:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lcom/google/googlenav/b/a/a;->i:I

    add-int/2addr v0, v1

    return v0
.end method
