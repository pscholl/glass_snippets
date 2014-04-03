.class Lcom/google/android/maps/driveabout/nav/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/nav/k;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/nav/k;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/nav/k;->b:I

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/nav/k;->d:Z

    if-eqz p3, :cond_0

    iput p3, p0, Lcom/google/android/maps/driveabout/nav/k;->c:I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/google/glass/navlib/m;->da_turn_unknown:I

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/k;->c:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/k;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/k;->c:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/nav/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/k;->d:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/nav/l;

    invoke-direct {v0, p1, p0}, Lcom/google/android/maps/driveabout/nav/l;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/nav/k;)V

    return-object v0
.end method

.method public a(III)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/k;->a:I

    if-eq v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/maps/driveabout/nav/k;->b:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/k;->b:I

    if-ne v1, p2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
