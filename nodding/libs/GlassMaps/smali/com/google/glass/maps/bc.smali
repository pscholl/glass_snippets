.class final Lcom/google/glass/maps/bc;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/glass/maps/b/g;

.field private b:Lcom/google/android/maps/driveabout/e/ab;

.field private c:F

.field private d:F

.field private e:Lcom/google/glass/maps/b/h;

.field private f:Lcom/google/android/maps/driveabout/e/ab;

.field private g:Lcom/google/android/maps/driveabout/e/ab;

.field private h:Z

.field private i:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/bc;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/bc;F)F
    .locals 0

    iput p1, p0, Lcom/google/glass/maps/bc;->c:F

    return p1
.end method

.method static synthetic a(Lcom/google/glass/maps/bc;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/bc;->b:Lcom/google/android/maps/driveabout/e/ab;

    return-object p1
.end method

.method static synthetic a(Lcom/google/glass/maps/bc;Lcom/google/glass/maps/b/g;)Lcom/google/glass/maps/b/g;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/bc;->a:Lcom/google/glass/maps/b/g;

    return-object p1
.end method

.method static synthetic a(Lcom/google/glass/maps/bc;Lcom/google/glass/maps/b/h;)Lcom/google/glass/maps/b/h;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/bc;->e:Lcom/google/glass/maps/b/h;

    return-object p1
.end method

.method static synthetic a(Lcom/google/glass/maps/bc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/maps/bc;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/google/glass/maps/bc;F)F
    .locals 0

    iput p1, p0, Lcom/google/glass/maps/bc;->d:F

    return p1
.end method

.method static synthetic b(Lcom/google/glass/maps/bc;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/bc;->f:Lcom/google/android/maps/driveabout/e/ab;

    return-object p1
.end method

.method static synthetic b(Lcom/google/glass/maps/bc;)Lcom/google/glass/maps/b/g;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/bc;->a:Lcom/google/glass/maps/b/g;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/maps/bc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/maps/bc;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/google/glass/maps/bc;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/bc;->b:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method static synthetic c(Lcom/google/glass/maps/bc;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/bc;->g:Lcom/google/android/maps/driveabout/e/ab;

    return-object p1
.end method

.method static synthetic d(Lcom/google/glass/maps/bc;)F
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/bc;->c:F

    return v0
.end method

.method static synthetic e(Lcom/google/glass/maps/bc;)F
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/bc;->d:F

    return v0
.end method

.method static synthetic f(Lcom/google/glass/maps/bc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/bc;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/google/glass/maps/bc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/bc;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/google/glass/maps/bc;)Lcom/google/glass/maps/b/h;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/bc;->e:Lcom/google/glass/maps/b/h;

    return-object v0
.end method

.method static synthetic i(Lcom/google/glass/maps/bc;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/bc;->f:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/glass/maps/bc;)V
    .locals 1

    iget-object v0, p1, Lcom/google/glass/maps/bc;->a:Lcom/google/glass/maps/b/g;

    iput-object v0, p0, Lcom/google/glass/maps/bc;->a:Lcom/google/glass/maps/b/g;

    iget-object v0, p1, Lcom/google/glass/maps/bc;->b:Lcom/google/android/maps/driveabout/e/ab;

    iput-object v0, p0, Lcom/google/glass/maps/bc;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, p1, Lcom/google/glass/maps/bc;->c:F

    iput v0, p0, Lcom/google/glass/maps/bc;->c:F

    iget v0, p1, Lcom/google/glass/maps/bc;->d:F

    iput v0, p0, Lcom/google/glass/maps/bc;->d:F

    iget-object v0, p1, Lcom/google/glass/maps/bc;->e:Lcom/google/glass/maps/b/h;

    iput-object v0, p0, Lcom/google/glass/maps/bc;->e:Lcom/google/glass/maps/b/h;

    iget-object v0, p1, Lcom/google/glass/maps/bc;->f:Lcom/google/android/maps/driveabout/e/ab;

    iput-object v0, p0, Lcom/google/glass/maps/bc;->f:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p1, Lcom/google/glass/maps/bc;->g:Lcom/google/android/maps/driveabout/e/ab;

    iput-object v0, p0, Lcom/google/glass/maps/bc;->g:Lcom/google/android/maps/driveabout/e/ab;

    iget-boolean v0, p1, Lcom/google/glass/maps/bc;->h:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/bc;->h:Z

    iget-boolean v0, p1, Lcom/google/glass/maps/bc;->i:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/bc;->i:Z

    return-void
.end method
