.class public final Lcom/google/android/maps/driveabout/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/nav/ah;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/nav/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/c;->a:Lcom/google/android/maps/driveabout/nav/ah;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/c;->a:Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/b/c;->b:I

    return-void
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/b/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/c;->b:I

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/c;->a:Lcom/google/android/maps/driveabout/nav/ah;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/b/c;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/c;->a:Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/c;->a:Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->j()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/c;->a:Lcom/google/android/maps/driveabout/nav/ah;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/b/c;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/nav/i;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/c;->a:Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->u()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/b/c;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/i;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/c;->b()V

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/c;->a:Lcom/google/android/maps/driveabout/nav/ah;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/b/c;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/c;->a:Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/b/c;->a()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
