.class final Lcom/google/android/maps/driveabout/nav/o;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:J

.field private c:Landroid/content/Context;

.field private final d:Lcom/google/android/maps/driveabout/nav/ad;

.field private e:Lcom/google/android/maps/driveabout/nav/ac;

.field private final f:Ljava/util/List;

.field private g:Lcom/google/android/maps/driveabout/nav/f;

.field private h:Lcom/google/android/maps/driveabout/nav/f;

.field private i:Lcom/google/android/maps/driveabout/nav/f;

.field private volatile j:Z

.field private volatile k:Z

.field private final l:Ljava/lang/Thread;

.field private m:Lcom/google/android/maps/driveabout/f/u;

.field private n:Z

.field private final o:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/nav/ad;Lcom/google/android/maps/driveabout/f/u;Ljava/lang/Thread;Ljava/io/File;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->k:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    new-instance v0, Lcom/google/android/maps/driveabout/nav/ac;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/nav/ac;-><init>(Lcom/google/android/maps/driveabout/nav/o;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/nav/o;->l:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/o;->m:Lcom/google/android/maps/driveabout/f/u;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/nav/o;->o:Ljava/io/File;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    iput-object p5, p0, Lcom/google/android/maps/driveabout/nav/o;->c:Landroid/content/Context;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/f;->o()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->o()V

    :cond_1
    return-void
.end method

.method private declared-synchronized a(ILcom/google/android/maps/driveabout/nav/f;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/nav/n;->a(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NavigationInternal"

    const-string v1, "Destination not found"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NavigationInternal"

    const-string v1, "Refinements required"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "NavigationInternal"

    const-string v1, "No routing coverage"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "NavigationInternal"

    const-string v1, "No routes found"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "NavigationInternal"

    const-string v1, "Other routing failure"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/f;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->o()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->i()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ac;->b()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "NavigationInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received route update: actionType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->o()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " routes number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->c()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->c()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    aget-object v0, v0, v2

    aget-object v2, v4, p2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->r()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(Ljava/lang/String;)V

    :cond_3
    aput-object v0, v4, p2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/p;->k()I

    move-result v2

    invoke-virtual {v0, v4, v2, v1}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;IZ)V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/nav/o;->a(ILcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_1
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/nav/w;I)Z
    .locals 3

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->l()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->l()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->i:Lcom/google/android/maps/driveabout/nav/f;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->i:Lcom/google/android/maps/driveabout/nav/f;

    :cond_0
    :goto_0
    const-string v1, "NavigationInternal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "return trip"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " succeeded."

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ag;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/ag;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/ag;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ag;->b()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->h:Lcom/google/android/maps/driveabout/nav/f;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->h:Lcom/google/android/maps/driveabout/nav/f;

    goto :goto_0

    :cond_3
    const-string v0, "saving route"

    goto :goto_1

    :cond_4
    const-string v0, " failed."

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/ag;->b(Lcom/google/android/maps/driveabout/nav/f;)Z

    goto :goto_3
.end method

.method private c(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 11

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->m:Lcom/google/android/maps/driveabout/f/u;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->o()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->c()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    array-length v4, v1

    move v0, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    const-string v6, "NavigationInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New route received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/w;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    if-lt v0, v9, :cond_8

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->q()[Lcom/google/android/maps/driveabout/nav/aq;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v9, :cond_8

    aget-object v0, v1, v3

    aget-object v4, v1, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->h()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/nav/w;I)Z

    move-result v0

    if-eqz v0, :cond_8

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/w;

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    array-length v1, v0

    if-lt v1, v9, :cond_4

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->l()I

    move-result v1

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/w;->l()I

    move-result v4

    if-ge v4, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->l()I

    move-result v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    array-length v4, v0

    move v1, v3

    :goto_3
    if-ge v1, v4, :cond_4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/w;->l()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/nav/w;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->s()Z

    move-result v1

    if-eqz v1, :cond_5

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->w()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v1

    if-nez v1, :cond_5

    aget-object v1, v0, v3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    aget-object v4, v0, v3

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->f()Z

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;IZ)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->f()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v9, p1}, Lcom/google/android/maps/driveabout/nav/o;->a(ILcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method private declared-synchronized l()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->a(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->w()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_0
.end method

.method private final n()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->l:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method must be called on NavigationThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->m:Lcom/google/android/maps/driveabout/f/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/f/u;->c()V

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->b(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->o:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/navgation_location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/ac;->a(Landroid/location/Location;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/maps/driveabout/nav/o;->k:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->t()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/j;->p()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->t()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/j;->q()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NavigationInternal"

    const-string v1, "Traffic data has timed out."

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->u()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0, v8}, Lcom/google/android/maps/driveabout/nav/ac;->a(I)Z

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->m()V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->j:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iput-boolean v8, p0, Lcom/google/android/maps/driveabout/nav/o;->j:Z

    :cond_3
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->k:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "NavigationInternal"

    const-string v1, "Not rerouting: no current route"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->h()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/o;->m:Lcom/google/android/maps/driveabout/f/u;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/o;->n:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    if-nez v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    if-nez v1, :cond_0

    const-string v1, "NavigationInternal"

    const-string v2, "Rerouting!"

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->l()V

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    :cond_6
    const-string v0, "NavigationInternal"

    const-string v2, "Rerouting offline!"

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->m:Lcom/google/android/maps/driveabout/f/u;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/f/u;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->l()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/a;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/a;->a()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/f;->c()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;IZ)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->e()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "NavigationInternal"

    const-string v1, "Transit direction. Dropping response"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/o;->n:Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/o;->b(Lcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/o;->c(Lcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->w()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v2

    if-ne v2, p1, :cond_4

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/f;I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "NavigationInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping route response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final declared-synchronized a(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/c/j;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/j;-><init>(Lcom/google/android/maps/driveabout/nav/i;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/h/f;->b(Lcom/google/android/maps/driveabout/h/j;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/nav/n;->a(Lcom/google/android/maps/driveabout/nav/i;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized a(Lcom/google/android/maps/driveabout/nav/n;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;I)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-nez p2, :cond_0

    iput-wide v4, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    invoke-virtual {p0, p1, v3}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/w;Z)V

    const-string v0, "j"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/b/v;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "NavigationInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finding offline route failed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(ILcom/google/android/maps/driveabout/nav/f;)V

    const-string v0, "j"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/b/v;->a(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    goto :goto_0

    :cond_2
    const-string v0, "NavigationInternal"

    const-string v1, "Dropping unwanted offline generated route"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    if-eqz p2, :cond_1

    new-array v1, v4, [Lcom/google/android/maps/driveabout/nav/w;

    aput-object p1, v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v2, v1, v0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    if-ne v3, p1, :cond_3

    :goto_2
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->w()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v3}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v1, v2, v0, v4}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;IZ)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/nav/ad;->a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->i:Lcom/google/android/maps/driveabout/nav/f;

    return-void
.end method

.method final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->f(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized b(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/nav/n;->b(Lcom/google/android/maps/driveabout/nav/i;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized b(Lcom/google/android/maps/driveabout/nav/n;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->c(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->d(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->e(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/o;->n:Z

    const-string v0, "NavigationInternal"

    const-string v1, "Network error"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(ILcom/google/android/maps/driveabout/nav/f;)V

    :cond_0
    return-void
.end method

.method final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->k:Z

    return v0
.end method

.method public final h()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->s()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->w()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(I)V

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(I)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->c()V

    return-void
.end method
