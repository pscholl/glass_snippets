.class public final Lcom/google/android/maps/driveabout/nav/aq;
.super Lcom/google/android/maps/driveabout/nav/ao;


# instance fields
.field private a:Z

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/nav/ao;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/aq;->a:Z

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/nav/aq;->a(Lcom/google/android/maps/driveabout/nav/w;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 5

    const-wide/high16 v3, -0x4010

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aq;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v0

    if-nez v0, :cond_0

    iput-wide v3, p0, Lcom/google/android/maps/driveabout/nav/aq;->b:D

    iput-wide v3, p0, Lcom/google/android/maps/driveabout/nav/aq;->c:D

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/e/ab;->b(II)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    const-wide/high16 v1, 0x4059

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/e/ab;D)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/nav/aq;->b:D

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/nav/w;->b(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/aq;->c:D

    goto :goto_0

    :cond_1
    iput-wide v3, p0, Lcom/google/android/maps/driveabout/nav/aq;->b:D

    iput-wide v3, p0, Lcom/google/android/maps/driveabout/nav/aq;->c:D

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/nav/aq;->a:Z

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/aq;->a:Z

    return v0
.end method

.method public final l()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/aq;->b:D

    return-wide v0
.end method
