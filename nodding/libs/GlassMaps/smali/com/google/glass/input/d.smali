.class public Lcom/google/glass/input/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:F

.field private d:Z

.field private e:F

.field private f:I

.field private final g:Lcom/google/glass/input/InputListener;

.field private final h:Lcom/google/glass/input/o;

.field private final i:Lcom/google/glass/input/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/input/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/input/e;

    invoke-direct {v0, p0}, Lcom/google/glass/input/e;-><init>(Lcom/google/glass/input/d;)V

    iput-object v0, p0, Lcom/google/glass/input/d;->i:Lcom/google/glass/input/p;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputDetector constructed with null InputListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/glass/input/d;->g:Lcom/google/glass/input/InputListener;

    new-instance v0, Lcom/google/glass/input/o;

    iget-object v1, p0, Lcom/google/glass/input/d;->i:Lcom/google/glass/input/p;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/input/o;-><init>(Landroid/content/Context;Lcom/google/glass/input/p;)V

    iput-object v0, p0, Lcom/google/glass/input/d;->h:Lcom/google/glass/input/o;

    return-void
.end method

.method private a(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/d;->g:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/InputListener;->a(F)Z

    return-void
.end method

.method static synthetic a(Lcom/google/glass/input/d;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/input/d;->b(F)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/input/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/input/d;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/google/glass/input/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/input/d;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/google/glass/input/d;)F
    .locals 1

    iget v0, p0, Lcom/google/glass/input/d;->c:F

    return v0
.end method

.method static synthetic b(Lcom/google/glass/input/d;F)F
    .locals 0

    iput p1, p0, Lcom/google/glass/input/d;->c:F

    return p1
.end method

.method private b(F)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/input/d;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/glass/input/d;->b:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/glass/input/d;->e:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/google/glass/input/d;->e:F

    iget v2, p0, Lcom/google/glass/input/d;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/input/d;->f:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/google/glass/input/d;->e:F

    invoke-direct {p0, v2}, Lcom/google/glass/input/d;->a(F)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/input/d;->e:F

    :cond_0
    iput-wide v0, p0, Lcom/google/glass/input/d;->b:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/d;->h:Lcom/google/glass/input/o;

    invoke-virtual {v0}, Lcom/google/glass/input/o;->a()V

    return-void
.end method

.method final b()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/input/d;->h:Lcom/google/glass/input/o;

    invoke-virtual {v0}, Lcom/google/glass/input/o;->c()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/d;->h:Lcom/google/glass/input/o;

    invoke-virtual {v0}, Lcom/google/glass/input/o;->b()V

    return-void
.end method
