.class public final Lcom/google/android/maps/driveabout/g/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/google/android/maps/driveabout/store/bv;

.field private c:Lcom/google/android/maps/driveabout/store/al;

.field private d:Lcom/google/android/maps/driveabout/e/al;

.field private e:Lcom/google/android/maps/driveabout/e/av;

.field private f:Lcom/google/android/maps/driveabout/e/av;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/store/bv;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/g/b;->b:Lcom/google/android/maps/driveabout/store/bv;

    new-instance v0, Lcom/google/android/maps/driveabout/store/al;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/al;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->c:Lcom/google/android/maps/driveabout/store/al;

    sput-boolean p2, Lcom/google/android/maps/driveabout/g/b;->a:Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/av;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/g/b;->c:Lcom/google/android/maps/driveabout/store/al;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/store/al;->c(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/g/b;->b:Lcom/google/android/maps/driveabout/store/bv;

    const/4 v5, 0x1

    invoke-interface {v3, v0, v5}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/android/maps/driveabout/e/av;Z)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/g/b;->c:Lcom/google/android/maps/driveabout/store/al;

    invoke-virtual {v5, v0, v3}, Lcom/google/android/maps/driveabout/store/al;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v3, "RoadGraph"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetTiles: couldn\'t load tile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_5

    new-instance v1, Lcom/google/android/maps/driveabout/store/c;

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/store/c;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/av;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/g/b;->b:Lcom/google/android/maps/driveabout/store/bv;

    invoke-interface {v3, v0, v1}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/store/c;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/au;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/g/b;->c:Lcom/google/android/maps/driveabout/store/al;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/e/au;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/store/al;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v0, "RoadGraph"

    const-string v2, "Interupted while waiting for tiles"

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    return-object v4
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/g/e;)Lcom/google/android/maps/driveabout/g/e;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/g/e;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v6

    if-le v0, v6, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v4

    if-le v6, v4, :cond_3

    :goto_1
    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    invoke-virtual {v5, v2}, Lcom/google/android/maps/driveabout/e/ab;->e(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/bg;->a(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/bg;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/av;->a(Lcom/google/android/maps/driveabout/e/bg;I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/g/b;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/au;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/e/au;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/g/b;->f:Lcom/google/android/maps/driveabout/e/av;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/g/b;->e:Lcom/google/android/maps/driveabout/e/av;

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/g/b;->f:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v6

    if-gt v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/g/b;->e:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v6

    if-lt v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/g/b;->f:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v6

    if-gt v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/g/b;->e:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v6

    if-ge v5, v6, :cond_4

    :cond_1
    const-string v0, "RoadGraph"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested tile outside of marked available area: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    check-cast v0, Lcom/google/android/maps/driveabout/g/d;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/g/d;->a(Lcom/google/android/maps/driveabout/g/e;)Lcom/google/android/maps/driveabout/g/e;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_2
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;D)Ljava/util/Iterator;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    double-to-int v0, p2

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;I)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/g/b;->d:Lcom/google/android/maps/driveabout/e/al;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/g/b;->d:Lcom/google/android/maps/driveabout/e/al;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/e/al;->b(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/bg;->a(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/bg;

    move-result-object v0

    const/16 v2, 0xe

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/e/av;->a(Lcom/google/android/maps/driveabout/e/bg;I)Ljava/util/ArrayList;

    move-result-object v0

    sget-boolean v2, Lcom/google/android/maps/driveabout/g/b;->a:Z

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/g/b;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/au;

    check-cast v0, Lcom/google/android/maps/driveabout/g/d;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/g/c;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/g/c;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/al;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0xe

    iput-object p1, p0, Lcom/google/android/maps/driveabout/g/b;->d:Lcom/google/android/maps/driveabout/e/al;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->d:Lcom/google/android/maps/driveabout/e/al;

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/g/b;->f:Lcom/google/android/maps/driveabout/e/av;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/g/b;->e:Lcom/google/android/maps/driveabout/e/av;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->e()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/e/av;->a(III)Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->e:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->e()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/e/av;->a(III)Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->f:Lcom/google/android/maps/driveabout/e/av;

    goto :goto_0
.end method
