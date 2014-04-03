.class public final Lcom/google/android/maps/driveabout/nav/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/common/io/b/a;

.field private final b:Lcom/google/googlenav/common/io/b/a;

.field private c:Lcom/google/android/maps/driveabout/nav/f;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->r()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->p()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/nav/a;-><init>(Lcom/google/googlenav/common/io/b/a;Lcom/google/googlenav/common/io/b/a;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/a;->c:Lcom/google/android/maps/driveabout/nav/f;

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/nav/a;-><init>(Lcom/google/googlenav/common/io/b/a;Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/common/io/b/a;Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/a;->b:Lcom/google/googlenav/common/io/b/a;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/a;->a:Lcom/google/googlenav/common/io/b/a;

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/nav/f;)Lcom/google/android/maps/driveabout/nav/a;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/nav/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/nav/a;-><init>(Lcom/google/android/maps/driveabout/nav/f;)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/a;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/nav/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/nav/a;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/nav/f;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/a;->c:Lcom/google/android/maps/driveabout/nav/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/a;->b:Lcom/google/googlenav/common/io/b/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/nav/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/a;->b:Lcom/google/googlenav/common/io/b/a;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/nav/h;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/h;->a()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/a;->c:Lcom/google/android/maps/driveabout/nav/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/a;->a:Lcom/google/googlenav/common/io/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/a;->c:Lcom/google/android/maps/driveabout/nav/f;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/a;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/f;->a(Lcom/google/googlenav/common/io/b/a;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/a;->c:Lcom/google/android/maps/driveabout/nav/f;

    goto :goto_0
.end method

.method public final b()Lcom/google/googlenav/common/io/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/a;->b:Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method

.method public final c()Lcom/google/googlenav/common/io/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/a;->a:Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method
