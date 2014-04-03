.class final Lcom/google/android/maps/driveabout/store/aq;
.super Lcom/google/googlenav/datarequest/a;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/p;

.field private final b:Ljava/util/List;

.field private c:Lcom/google/googlenav/common/io/b/a;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/p;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/aq;->a:Lcom/google/android/maps/driveabout/e/p;

    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/aq;->b:Ljava/util/List;

    return-void
.end method

.method private g()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/aq;->c:Lcom/google/googlenav/common/io/b/a;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/aq;->c:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x76

    return v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/o;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/aq;->g()I

    move-result v0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    const-string v0, "IndoorBuildingRequest"

    const-string v1, "Unexpected OK status"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/ap;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/aq;->a:Lcom/google/android/maps/driveabout/e/p;

    invoke-interface {v0, v3, v1, p1}, Lcom/google/android/maps/driveabout/store/ap;->a(Lcom/google/android/maps/driveabout/e/p;ILcom/google/android/maps/driveabout/e/o;)V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/store/ap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/m;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/aq;->a:Lcom/google/android/maps/driveabout/e/p;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Lcom/google/i/a/a/b/m;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/aq;->c:Lcom/google/googlenav/common/io/b/a;

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/p;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aq;->a:Lcom/google/android/maps/driveabout/e/p;

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/aq;->d:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/aq;->d:Z

    return v0
.end method

.method public final e()Lcom/google/googlenav/common/io/b/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aq;->c:Lcom/google/googlenav/common/io/b/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/aq;->c:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/aq;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
