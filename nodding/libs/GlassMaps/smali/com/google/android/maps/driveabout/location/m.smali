.class public final Lcom/google/android/maps/driveabout/location/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/location/t;

.field private final b:Lcom/google/android/maps/driveabout/location/i;

.field private c:Lcom/google/android/maps/driveabout/location/p;

.field private d:Lcom/google/android/maps/driveabout/location/e;

.field private e:Lcom/google/android/maps/driveabout/location/a;

.field private final f:Lcom/google/android/maps/driveabout/location/c;

.field private final g:Lcom/google/android/maps/driveabout/location/c;

.field private h:Lcom/google/android/maps/driveabout/location/c;

.field private i:Lcom/google/android/maps/driveabout/location/ab;

.field private j:Lcom/google/android/maps/driveabout/location/w;

.field private final k:Lcom/google/android/maps/driveabout/location/s;

.field private final l:Ljava/util/List;

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/t;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/location/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/location/s;-><init>(Lcom/google/android/maps/driveabout/location/m;Lcom/google/android/maps/driveabout/location/n;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->k:Lcom/google/android/maps/driveabout/location/s;

    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->l:Ljava/util/List;

    iput v2, p0, Lcom/google/android/maps/driveabout/location/m;->m:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    new-instance v0, Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/location/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    new-instance v0, Lcom/google/android/maps/driveabout/location/f;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/f;-><init>(Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/c;

    new-instance v0, Lcom/google/android/maps/driveabout/location/aa;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/aa;-><init>(Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/c;

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/location/m;->b(I)V

    return-void
.end method

.method public static final a()F
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/location/m;->b()F

    move-result v0

    const v1, 0x3f2aacda

    mul-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    return-object v0
.end method

.method private a(J)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/maps/driveabout/location/t;->a(Ljava/lang/String;JFLcom/google/android/maps/driveabout/location/b;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    const-string v1, "network"

    iget-object v5, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/maps/driveabout/location/t;->a(Ljava/lang/String;JFLcom/google/android/maps/driveabout/location/b;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/location/t;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->g()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->d:Lcom/google/android/maps/driveabout/location/e;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/e;->a(Lcom/google/android/maps/driveabout/location/t;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/m;->c()V

    return-void
.end method

.method public static final b()F
    .locals 1

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/j;->n()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/location/e;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/location/e;-><init>(Lcom/google/android/maps/driveabout/location/b;Lcom/google/android/maps/driveabout/location/t;Lcom/google/googlenav/common/a;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->d:Lcom/google/android/maps/driveabout/location/e;

    new-instance v1, Lcom/google/android/maps/driveabout/location/p;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/location/p;-><init>(Lcom/google/android/maps/driveabout/location/m;Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->c:Lcom/google/android/maps/driveabout/location/p;

    new-instance v1, Lcom/google/android/maps/driveabout/location/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/location/i;->c()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/location/ab;-><init>(Lcom/google/android/maps/driveabout/location/b;Landroid/os/Handler;Lcom/google/googlenav/common/a;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/location/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/a;-><init>(Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->e:Lcom/google/android/maps/driveabout/location/a;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->d:Lcom/google/android/maps/driveabout/location/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_gps_fixup"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->c:Lcom/google/android/maps/driveabout/location/p;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "network"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->c:Lcom/google/android/maps/driveabout/location/p;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_base_location"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->e:Lcom/google/android/maps/driveabout/location/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->h()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    new-instance v0, Lcom/google/android/maps/driveabout/location/w;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/w;-><init>(Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->j:Lcom/google/android/maps/driveabout/location/w;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "android_orientation"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->j:Lcom/google/android/maps/driveabout/location/w;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->j:Lcom/google/android/maps/driveabout/location/w;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->d:Lcom/google/android/maps/driveabout/location/e;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->j:Lcom/google/android/maps/driveabout/location/w;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/b;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->h()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->j:Lcom/google/android/maps/driveabout/location/w;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/b;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->i()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/j;->l()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/location/m;->a(J)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/i;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/ab;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->d:Lcom/google/android/maps/driveabout/location/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/e;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/m;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->k:Lcom/google/android/maps/driveabout/location/s;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->b(Landroid/location/GpsStatus$Listener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/location/m;->a(Z)V

    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/ab;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "da_tunnel_heartbeat"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->d:Lcom/google/android/maps/driveabout/location/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/ab;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "da_tunnel_heartbeat"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->d:Lcom/google/android/maps/driveabout/location/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    return-void
.end method

.method private j()V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->a()Ljava/util/List;

    move-result-object v0

    const-string v4, "gps"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    const-string v4, "gps"

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/location/t;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/j;->k()I

    move-result v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v5, v2, v5

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/location/i;->onLocationChanged(Landroid/location/Location;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->a()Ljava/util/List;

    move-result-object v0

    const-string v4, "network"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    const-string v4, "network"

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/location/t;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/i;->onLocationChanged(Landroid/location/Location;)V

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v0, v9, v1}, Lcom/google/android/maps/driveabout/location/i;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v2, "network"

    invoke-virtual {v0, v2, v9, v1}, Lcom/google/android/maps/driveabout/location/i;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/location/m;->m:I

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/m;->c(I)V

    iput p1, p0, Lcom/google/android/maps/driveabout/location/m;->m:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    new-instance v1, Lcom/google/android/maps/driveabout/location/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/location/o;-><init>(Lcom/google/android/maps/driveabout/location/m;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/c/t;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/t;->b()Lcom/google/android/maps/driveabout/location/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/t;)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_orientation_filter"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    new-instance v1, Lcom/google/android/maps/driveabout/location/n;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/location/n;-><init>(Lcom/google/android/maps/driveabout/location/m;Lcom/google/android/maps/driveabout/nav/w;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/m;->n:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/m;->n:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->b(Lcom/google/android/maps/driveabout/location/b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->b()V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_orientation_filter"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->c:Lcom/google/android/maps/driveabout/location/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/p;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/ab;->b()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->j()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->f()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->k:Lcom/google/android/maps/driveabout/location/s;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->a(Landroid/location/GpsStatus$Listener;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/location/m;->a(Z)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->a(Lcom/google/android/maps/driveabout/location/b;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->a(Lcom/google/android/maps/driveabout/location/b;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/location/m;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/i;->b()V

    return-void
.end method
