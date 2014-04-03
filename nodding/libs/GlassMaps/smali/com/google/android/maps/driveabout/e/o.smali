.class public Lcom/google/android/maps/driveabout/e/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/p;

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:Lcom/google/android/maps/driveabout/store/a;

.field private e:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/e/p;Ljava/util/List;IZLcom/google/android/maps/driveabout/store/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/o;->a:Lcom/google/android/maps/driveabout/e/p;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/o;->b:Ljava/util/List;

    iput p3, p0, Lcom/google/android/maps/driveabout/e/o;->c:I

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/e/o;->e:Z

    iput-object p5, p0, Lcom/google/android/maps/driveabout/e/o;->d:Lcom/google/android/maps/driveabout/store/a;

    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/a;)Lcom/google/android/maps/driveabout/e/o;
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/p;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "INAKA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed building id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_2

    invoke-virtual {p0, v6, v3}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/e/q;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/e/q;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v4

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    if-ltz v3, :cond_3

    if-lt v3, v5, :cond_4

    :cond_3
    move v3, v0

    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_6

    :cond_5
    const/4 v3, -0x1

    :cond_6
    new-instance v0, Lcom/google/android/maps/driveabout/e/o;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/e/o;-><init>(Lcom/google/android/maps/driveabout/e/p;Ljava/util/List;IZLcom/google/android/maps/driveabout/store/a;)V

    goto :goto_0
.end method

.method private a(I)Lcom/google/android/maps/driveabout/e/q;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/o;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/q;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/p;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/o;->a:Lcom/google/android/maps/driveabout/e/p;

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/q;
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/q;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/q;->b()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/e/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/r;)Lcom/google/android/maps/driveabout/e/q;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/r;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/o;->a(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/q;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/o;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/q;
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/o;->c:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/e/o;->a(I)Lcom/google/android/maps/driveabout/e/q;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/o;->d:Lcom/google/android/maps/driveabout/store/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/a;->a()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Building: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/o;->a:Lcom/google/android/maps/driveabout/e/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
