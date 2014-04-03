.class public Lcom/google/googlenav/datarequest/DataRequestDispatcher;
.super Ljava/lang/Object;


# static fields
.field private static H:I

.field private static volatile J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private static final l:Lcom/google/glass/logging/i;


# instance fields
.field private volatile A:I

.field private volatile B:I

.field private C:Lcom/google/googlenav/g;

.field private final D:Lcom/google/googlenav/common/a;

.field private volatile E:I

.field private F:Ljava/lang/Throwable;

.field private G:I

.field private I:I

.field protected volatile a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Z

.field protected final e:Lcom/google/googlenav/datarequest/h;

.field protected f:Lcom/google/googlenav/datarequest/i;

.field protected volatile g:Z

.field protected h:I

.field protected i:I

.field protected j:Lcom/google/googlenav/common/io/i;

.field protected k:Lcom/google/googlenav/datarequest/c;

.field private m:Ljava/util/List;

.field private final n:Ljava/lang/String;

.field private o:J

.field private final p:Ljava/util/Vector;

.field private final q:Ljava/util/Random;

.field private r:J

.field private volatile s:Z

.field private volatile t:I

.field private volatile u:J

.field private volatile v:J

.field private volatile w:Z

.field private x:J

.field private y:J

.field private volatile z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "REQUEST"

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l:Lcom/google/glass/logging/i;

    const/4 v0, 0x0

    sput v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->H:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 v3, 0x0

    const-wide/high16 v5, -0x8000

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->q:Ljava/util/Random;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J

    iput-boolean v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s:Z

    iput-wide v5, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->u:J

    iput-wide v5, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->v:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    iput-wide v5, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    iput v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    iput v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->A:I

    iput v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->B:I

    iput v2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->E:I

    iput v2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->G:I

    iput v2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->I:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->n:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d:Z

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    new-instance v0, Lcom/google/googlenav/datarequest/c;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/datarequest/c;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/common/a;)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k:Lcom/google/googlenav/datarequest/c;

    iput v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->h:I

    iput v4, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i:I

    new-instance v0, Lcom/google/googlenav/datarequest/h;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v3}, Lcom/google/googlenav/datarequest/h;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/googlenav/datarequest/e;)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    new-instance v0, Lcom/google/googlenav/datarequest/i;

    invoke-direct {v0, p0, v3}, Lcom/google/googlenav/datarequest/i;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/datarequest/e;)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f:Lcom/google/googlenav/datarequest/i;

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f:Lcom/google/googlenav/datarequest/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o:J

    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l:Lcom/google/glass/logging/i;

    const-string v1, "Using server: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->u:J

    return-wide p1
.end method

.method public static a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 1

    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/i;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/i;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/Throwable;)V
    .locals 5

    const-wide/16 v3, 0x7d0

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    iput-object p2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->F:Ljava/lang/Throwable;

    iput p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->G:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z

    if-eqz v1, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y()V

    iput p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->G:I

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(I)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    iget-wide v3, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-boolean v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z

    if-nez v1, :cond_7

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    goto :goto_0

    :cond_6
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_8

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    :goto_1
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    iget-wide v3, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    goto :goto_0

    :cond_8
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/i;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I[BZZZ)V
    .locals 7

    new-instance v0, Lcom/google/googlenav/datarequest/l;

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/datarequest/l;-><init>(I[BZZZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(ZZ)V

    return-void
.end method

.method private declared-synchronized a(ZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->A:I

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static a(Ljava/util/Vector;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;I)I
    .locals 0

    iput p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->E:I

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->v:J

    return-wide p1
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    return-object v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 7

    const-class v6, Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to create multiple DataRequestDispatchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->J:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    return-void
.end method

.method static b(J)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "SessionID"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z

    invoke-interface {v1}, Lcom/google/googlenav/common/io/PersistentStore;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d(Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(ZZ)V

    return-void
.end method

.method private declared-synchronized b(ZZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->A:I

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static b(Ljava/util/Vector;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o:J

    return-wide p1
.end method

.method private c(I)V
    .locals 2

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x16

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(ILjava/lang/String;)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s:Z

    return v0
.end method

.method protected static c(Ljava/util/Vector;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f(Z)V

    return-void
.end method

.method private d(Lcom/google/googlenav/datarequest/d;)V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l:Lcom/google/glass/logging/i;

    const-string v1, "Add Data Request: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f:Lcom/google/googlenav/datarequest/i;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/d;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1b

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(ILjava/lang/String;)V

    return-void
.end method

.method private d(Z)V
    .locals 1

    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->E:I

    return v0
.end method

.method private e(Z)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/g;
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z()Lcom/google/googlenav/g;

    move-result-object v0

    return-object v0
.end method

.method private f(Z)V
    .locals 1

    const/16 v0, 0x21

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->G:I

    return v0
.end method

.method static synthetic k(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    return-wide v0
.end method

.method static synthetic l(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->q:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic t()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic u()I
    .locals 2

    sget v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->H:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->H:I

    return v0
.end method

.method private static v()J
    .locals 3

    const-string v0, "SessionID"

    invoke-static {v0}, Lcom/google/googlenav/common/h;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v0, "FLASH"

    const-string v1, "SessionID corrupt!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    const-string v1, "SessionID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private w()J
    .locals 4

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->v()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/googlenav/datarequest/g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/datarequest/g;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/datarequest/e;)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d(Lcom/google/googlenav/datarequest/d;)V

    :cond_0
    return-wide v0
.end method

.method private declared-synchronized x()[Lcom/google/googlenav/datarequest/k;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/datarequest/k;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized y()V
    .locals 2

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_0
    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->G:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private z()Lcom/google/googlenav/g;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->C:Lcom/google/googlenav/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/g;

    invoke-direct {v0}, Lcom/google/googlenav/g;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->C:Lcom/google/googlenav/g;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->C:Lcom/google/googlenav/g;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z

    if-nez v2, :cond_1

    sget-object v1, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l:Lcom/google/glass/logging/i;

    const-string v2, "In Error Mode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->y:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    invoke-interface {v1}, Lcom/google/googlenav/common/io/i;->a()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZLjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final a(IZLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x()[Lcom/google/googlenav/datarequest/k;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1, p2, p3}, Lcom/google/googlenav/datarequest/k;->a(IZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I[BZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(I[BZZZ)V

    return-void
.end method

.method public final declared-synchronized a(J)V
    .locals 2

    const-wide/16 v0, 0x7d0

    monitor-enter p0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x7d0

    :try_start_0
    iput-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-wide p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/g;->a(Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method protected final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x()[Lcom/google/googlenav/datarequest/k;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/google/googlenav/datarequest/k;->a(Lcom/google/googlenav/datarequest/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/googlenav/datarequest/k;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
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

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(IZ)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(II)V

    return-void
.end method

.method protected final b(Lcom/google/googlenav/datarequest/d;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->x()[Lcom/google/googlenav/datarequest/k;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/google/googlenav/datarequest/k;->b(Lcom/google/googlenav/datarequest/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized b(Lcom/google/googlenav/datarequest/k;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->g:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->q()V

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Lcom/google/googlenav/datarequest/d;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->c_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->D:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/datarequest/d;->a(Ljava/lang/Long;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d(Lcom/google/googlenav/datarequest/d;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->t:I

    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    monitor-exit p0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/h;->b(Lcom/google/googlenav/datarequest/h;)V

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k:Lcom/google/googlenav/datarequest/c;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/c;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j:Lcom/google/googlenav/common/io/i;

    invoke-interface {v0}, Lcom/google/googlenav/common/io/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->u:J

    return-wide v0
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->v:J

    return-wide v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->h:I

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i:I

    return v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->E:I

    return v0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s:Z

    return-void
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s:Z

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/h;->e(Lcom/google/googlenav/datarequest/h;)V

    return-void
.end method

.method public final r()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o:J

    return-wide v0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f:Lcom/google/googlenav/datarequest/i;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
