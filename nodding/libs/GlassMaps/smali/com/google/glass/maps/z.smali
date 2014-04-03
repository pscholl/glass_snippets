.class final Lcom/google/glass/maps/z;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/glass/maps/b/g;

.field private b:Lcom/google/android/maps/driveabout/e/ab;

.field private c:F

.field private d:F

.field private e:[Lcom/google/glass/maps/x;

.field private f:[Lcom/google/glass/maps/y;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/glass/maps/z;->d:F

    new-array v0, v1, [Lcom/google/glass/maps/x;

    iput-object v0, p0, Lcom/google/glass/maps/z;->e:[Lcom/google/glass/maps/x;

    new-array v0, v1, [Lcom/google/glass/maps/y;

    iput-object v0, p0, Lcom/google/glass/maps/z;->f:[Lcom/google/glass/maps/y;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/z;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/z;F)F
    .locals 0

    iput p1, p0, Lcom/google/glass/maps/z;->d:F

    return p1
.end method

.method static synthetic a(Lcom/google/glass/maps/z;Lcom/google/glass/maps/b/g;)Lcom/google/glass/maps/b/g;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/z;->a:Lcom/google/glass/maps/b/g;

    return-object p1
.end method

.method static synthetic a(Lcom/google/glass/maps/z;[Lcom/google/glass/maps/x;)[Lcom/google/glass/maps/x;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/z;->e:[Lcom/google/glass/maps/x;

    return-object p1
.end method

.method static synthetic a(Lcom/google/glass/maps/z;[Lcom/google/glass/maps/y;)[Lcom/google/glass/maps/y;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/z;->f:[Lcom/google/glass/maps/y;

    return-object p1
.end method

.method static synthetic b(Lcom/google/glass/maps/z;)Lcom/google/glass/maps/b/g;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/z;->a:Lcom/google/glass/maps/b/g;

    return-object v0
.end method

.method static synthetic c(Lcom/google/glass/maps/z;)[Lcom/google/glass/maps/x;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/z;->e:[Lcom/google/glass/maps/x;

    return-object v0
.end method

.method static synthetic d(Lcom/google/glass/maps/z;)[Lcom/google/glass/maps/y;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/z;->f:[Lcom/google/glass/maps/y;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/glass/maps/z;)V
    .locals 1

    iget-object v0, p1, Lcom/google/glass/maps/z;->a:Lcom/google/glass/maps/b/g;

    iput-object v0, p0, Lcom/google/glass/maps/z;->a:Lcom/google/glass/maps/b/g;

    iget-object v0, p1, Lcom/google/glass/maps/z;->b:Lcom/google/android/maps/driveabout/e/ab;

    iput-object v0, p0, Lcom/google/glass/maps/z;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, p1, Lcom/google/glass/maps/z;->c:F

    iput v0, p0, Lcom/google/glass/maps/z;->c:F

    iget v0, p1, Lcom/google/glass/maps/z;->d:F

    iput v0, p0, Lcom/google/glass/maps/z;->d:F

    iget-object v0, p1, Lcom/google/glass/maps/z;->e:[Lcom/google/glass/maps/x;

    iput-object v0, p0, Lcom/google/glass/maps/z;->e:[Lcom/google/glass/maps/x;

    iget-object v0, p1, Lcom/google/glass/maps/z;->f:[Lcom/google/glass/maps/y;

    iput-object v0, p0, Lcom/google/glass/maps/z;->f:[Lcom/google/glass/maps/y;

    return-void
.end method
