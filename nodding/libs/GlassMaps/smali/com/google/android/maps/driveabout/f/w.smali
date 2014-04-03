.class final Lcom/google/android/maps/driveabout/f/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

.field private final b:Lcom/google/android/maps/driveabout/nav/w;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/w;->a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/f/w;->b:Lcom/google/android/maps/driveabout/nav/w;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/f/v;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/f/w;-><init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/f/w;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/w;->a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/f/w;)Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/w;->b:Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method
