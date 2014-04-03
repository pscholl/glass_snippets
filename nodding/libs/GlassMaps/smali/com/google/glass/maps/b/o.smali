.class public abstract Lcom/google/glass/maps/b/o;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/e/j;

.field protected final b:Lcom/google/android/maps/driveabout/e/ap;

.field protected final c:Ljava/lang/String;

.field protected final d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/j;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/maps/b/o;->a:Lcom/google/android/maps/driveabout/e/j;

    iput-object p2, p0, Lcom/google/glass/maps/b/o;->c:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/e/j;->b()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/o;->b:Lcom/google/android/maps/driveabout/e/ap;

    iput p3, p0, Lcom/google/glass/maps/b/o;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public abstract a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;J)V
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/maps/b/o;->e:Z

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/bh;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/bh;->a()Lcom/google/android/maps/driveabout/e/bg;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/maps/b/o;->d()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/bg;->a(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/maps/b/o;->c()Lcom/google/android/maps/driveabout/e/am;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/e/bh;->a(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/glass/maps/b/f;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/google/glass/maps/b/f;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract c()Lcom/google/android/maps/driveabout/e/am;
.end method

.method public final d()Lcom/google/android/maps/driveabout/e/al;
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/maps/b/o;->c()Lcom/google/android/maps/driveabout/e/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/am;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/b/o;->e:Z

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/o;->d:I

    return v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/e/j;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/o;->a:Lcom/google/android/maps/driveabout/e/j;

    return-object v0
.end method
