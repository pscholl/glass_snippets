.class public Lcom/google/android/maps/driveabout/nav/aj;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/maps/driveabout/nav/ah;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/nav/aj;->a:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/aj;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/nav/aj;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/nav/aj;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/nav/aj;->f:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/maps/driveabout/nav/aj;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/aj;
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/nav/aj;->b(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/aj;->b:Lcom/google/android/maps/driveabout/nav/ah;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/aj;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    return-void
.end method

.method private static b(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/aj;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    if-ne v0, v7, :cond_0

    :goto_1
    new-instance v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/nav/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/aj;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/aj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/aj;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/aj;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/aj;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/aj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/aj;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/aj;->g:Z

    return v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/aj;->b:Lcom/google/android/maps/driveabout/nav/ah;

    return-object v0
.end method
