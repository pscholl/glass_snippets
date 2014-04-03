.class public Lcom/google/android/maps/driveabout/util/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/HashMap;

.field protected final b:I

.field private c:Lcom/google/android/maps/driveabout/util/h;

.field private d:Lcom/google/android/maps/driveabout/util/h;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->a:Ljava/util/HashMap;

    iput p1, p0, Lcom/google/android/maps/driveabout/util/g;->b:I

    return-void
.end method

.method private a(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/util/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->b(Lcom/google/android/maps/driveabout/util/h;)V

    if-eqz p2, :cond_1

    iget-object v1, v0, Lcom/google/android/maps/driveabout/util/h;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/maps/driveabout/util/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/h;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->c:Lcom/google/android/maps/driveabout/util/h;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/h;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/g;->c:Lcom/google/android/maps/driveabout/util/h;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/util/h;->c:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/util/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->d:Lcom/google/android/maps/driveabout/util/h;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/g;->c:Lcom/google/android/maps/driveabout/util/h;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/g;->d:Lcom/google/android/maps/driveabout/util/h;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->d:Lcom/google/android/maps/driveabout/util/h;

    iput-object v0, p1, Lcom/google/android/maps/driveabout/util/h;->a:Lcom/google/android/maps/driveabout/util/h;

    iput-object p1, v0, Lcom/google/android/maps/driveabout/util/h;->b:Lcom/google/android/maps/driveabout/util/h;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/g;->d:Lcom/google/android/maps/driveabout/util/h;

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/util/h;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/util/h;->a:Lcom/google/android/maps/driveabout/util/h;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/util/h;->b:Lcom/google/android/maps/driveabout/util/h;

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/util/h;->b:Lcom/google/android/maps/driveabout/util/h;

    :cond_0
    if-eqz v1, :cond_1

    iput-object v0, v1, Lcom/google/android/maps/driveabout/util/h;->a:Lcom/google/android/maps/driveabout/util/h;

    :cond_1
    iput-object v2, p1, Lcom/google/android/maps/driveabout/util/h;->a:Lcom/google/android/maps/driveabout/util/h;

    iput-object v2, p1, Lcom/google/android/maps/driveabout/util/h;->b:Lcom/google/android/maps/driveabout/util/h;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/util/g;->c:Lcom/google/android/maps/driveabout/util/h;

    if-ne v2, p1, :cond_2

    iput-object v1, p0, Lcom/google/android/maps/driveabout/util/g;->c:Lcom/google/android/maps/driveabout/util/h;

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/g;->d:Lcom/google/android/maps/driveabout/util/h;

    if-ne v1, p1, :cond_3

    iput-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->d:Lcom/google/android/maps/driveabout/util/h;

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/util/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/h;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->a(I)V

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/util/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->b(Lcom/google/android/maps/driveabout/util/h;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->a(Lcom/google/android/maps/driveabout/util/h;)V

    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/h;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->d:Lcom/google/android/maps/driveabout/util/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->d:Lcom/google/android/maps/driveabout/util/h;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/h;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/util/g;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/util/h;

    if-nez v0, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/util/g;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/util/g;->a(I)V

    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/util/h;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/util/h;-><init>()V

    iput-object p2, v1, Lcom/google/android/maps/driveabout/util/h;->d:Ljava/lang/Object;

    iput-object p1, v1, Lcom/google/android/maps/driveabout/util/h;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->b(Lcom/google/android/maps/driveabout/util/h;)V

    iget-object v2, v0, Lcom/google/android/maps/driveabout/util/h;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/maps/driveabout/util/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/h;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->a:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/google/android/maps/driveabout/util/h;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/util/g;->a(Lcom/google/android/maps/driveabout/util/h;)V

    return-void
.end method
