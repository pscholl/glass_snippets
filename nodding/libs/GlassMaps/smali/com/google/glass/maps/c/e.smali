.class public final Lcom/google/glass/maps/c/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/c/e;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v0, 0x41a0

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/google/glass/maps/c/e;-><init>(FI)V

    return-void
.end method

.method private constructor <init>(FI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x447a

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/glass/maps/c/e;->b:I

    iput p2, p0, Lcom/google/glass/maps/c/e;->c:I

    invoke-direct {p0}, Lcom/google/glass/maps/c/e;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/c/e;->d:I

    iput v0, p0, Lcom/google/glass/maps/c/e;->e:I

    iput v0, p0, Lcom/google/glass/maps/c/e;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/c/e;->g:J

    iget v0, p0, Lcom/google/glass/maps/c/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/c/e;->d:I

    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/c/e;->g:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/glass/maps/c/e;->d:I

    iget v3, p0, Lcom/google/glass/maps/c/e;->c:I

    if-gt v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/google/glass/maps/c/e;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/glass/maps/c/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/c/e;->e:I

    iget v0, p0, Lcom/google/glass/maps/c/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/c/e;->f:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/c/e;->f:I

    goto :goto_0
.end method
