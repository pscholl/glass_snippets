.class final Lcom/google/android/maps/driveabout/nav/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

.field private final b:[Lcom/google/android/maps/driveabout/nav/ao;

.field private final c:I

.field private final d:Lcom/google/android/maps/driveabout/nav/w;

.field private final e:I

.field private final f:[Lcom/google/android/maps/driveabout/nav/b;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/t;->a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/t;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    iput p3, p0, Lcom/google/android/maps/driveabout/nav/t;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/t;->d:Lcom/google/android/maps/driveabout/nav/w;

    iput p4, p0, Lcom/google/android/maps/driveabout/nav/t;->e:I

    iput-object p5, p0, Lcom/google/android/maps/driveabout/nav/t;->f:[Lcom/google/android/maps/driveabout/nav/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;Lcom/google/android/maps/driveabout/nav/r;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/maps/driveabout/nav/t;-><init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/t;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/t;->a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/nav/t;)[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/t;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/nav/t;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/t;->c:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/nav/t;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/t;->e:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/nav/t;)[Lcom/google/android/maps/driveabout/nav/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/t;->f:[Lcom/google/android/maps/driveabout/nav/b;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/nav/t;)Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/t;->d:Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method
