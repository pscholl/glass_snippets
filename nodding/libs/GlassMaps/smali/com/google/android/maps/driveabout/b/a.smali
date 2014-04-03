.class public final Lcom/google/android/maps/driveabout/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/maps/driveabout/b/j;

.field private c:Lcom/google/android/maps/driveabout/a/ar;

.field private final d:Lcom/google/android/maps/driveabout/a/ar;

.field private final e:Lcom/google/android/maps/driveabout/a/ar;

.field private final f:Lcom/google/android/maps/driveabout/a/c;

.field private final g:Lcom/google/android/maps/driveabout/a/c;

.field private h:Lcom/google/android/maps/driveabout/b/g;

.field private i:Lcom/google/android/maps/driveabout/b/g;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private final n:Lcom/google/android/maps/driveabout/b/m;

.field private final o:Ljava/util/HashMap;

.field private p:I

.field private q:Lcom/google/android/maps/driveabout/a/at;

.field private r:J

.field private s:Landroid/os/Handler;

.field private t:Z

.field private final u:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/b/a;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/a;->m:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->o:Ljava/util/HashMap;

    iput v1, p0, Lcom/google/android/maps/driveabout/b/a;->p:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->u:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->s:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/maps/driveabout/a/d;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/a;->s:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/a/d;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    new-instance v1, Lcom/google/android/maps/driveabout/b/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/b/e;-><init>(Lcom/google/android/maps/driveabout/b/a;Lcom/google/android/maps/driveabout/b/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/a/d;->a(Lcom/google/android/maps/driveabout/a/k;)V

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)Lcom/google/android/maps/driveabout/a/ad;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/a/u;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/a/u;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/a/aa;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->d:Lcom/google/android/maps/driveabout/a/ar;

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/a/ac;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)Lcom/google/android/maps/driveabout/a/ac;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/a/u;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/a/u;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/a/aa;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->e:Lcom/google/android/maps/driveabout/a/ar;

    new-instance v0, Lcom/google/android/maps/driveabout/a/ah;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/a/ah;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->f:Lcom/google/android/maps/driveabout/a/c;

    new-instance v0, Lcom/google/android/maps/driveabout/a/bb;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/a/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->g:Lcom/google/android/maps/driveabout/a/c;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/j;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->b:Lcom/google/android/maps/driveabout/b/j;

    new-instance v0, Lcom/google/android/maps/driveabout/b/m;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/b/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->n:Lcom/google/android/maps/driveabout/b/m;

    iget v0, p0, Lcom/google/android/maps/driveabout/b/a;->p:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/a;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/b/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->s:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/i;Z)Lcom/google/android/maps/driveabout/a/at;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget v1, Lcom/google/glass/navlib/p;->da_you_will_reach_destination:I

    const/4 v0, 0x6

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/a/s;

    invoke-direct {v2, v0}, Lcom/google/android/maps/driveabout/a/s;-><init>(I)V

    invoke-static {p1, v1, v2}, Lcom/google/android/maps/driveabout/a/at;->a(Lcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :pswitch_0
    sget v1, Lcom/google/glass/navlib/p;->da_destination_will_be_on_the_left:I

    const/16 v0, 0x9

    goto :goto_0

    :pswitch_1
    sget v1, Lcom/google/glass/navlib/p;->da_destination_will_be_on_the_right:I

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    sget v1, Lcom/google/glass/navlib/p;->da_destination_reached:I

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    sget v1, Lcom/google/glass/navlib/p;->da_destination_on_the_left:I

    const/4 v0, 0x7

    goto :goto_0

    :pswitch_3
    sget v1, Lcom/google/glass/navlib/p;->da_destination_on_the_right:I

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->j()Lcom/google/android/maps/driveabout/a/m;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {p1, v1, v2}, Lcom/google/android/maps/driveabout/a/at;->a(Lcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/google/android/maps/driveabout/a/at;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/a;->q:Lcom/google/android/maps/driveabout/a/at;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/b/a;->r:J

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/b/d;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/b/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/b/g;-><init>(Lcom/google/android/maps/driveabout/b/a;Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/b/d;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->h:Lcom/google/android/maps/driveabout/b/g;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->h:Lcom/google/android/maps/driveabout/b/g;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/b/g;->a(Lcom/google/android/maps/driveabout/b/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->i:Lcom/google/android/maps/driveabout/b/g;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->i:Lcom/google/android/maps/driveabout/b/g;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/b/g;->e(Lcom/google/android/maps/driveabout/b/g;)Lcom/google/android/maps/driveabout/b/d;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->i:Lcom/google/android/maps/driveabout/b/g;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/b/g;->e(Lcom/google/android/maps/driveabout/b/g;)Lcom/google/android/maps/driveabout/b/d;

    :cond_2
    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->i:Lcom/google/android/maps/driveabout/b/g;

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/a/at;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/b/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/a;->h:Lcom/google/android/maps/driveabout/b/g;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/b/g;->a()V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/i;)V
    .locals 3

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.maps.navigation.GUIDANCE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "instructions"

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->h()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 4

    new-instance v1, Lcom/google/android/maps/driveabout/b/c;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/b/c;-><init>(Lcom/google/android/maps/driveabout/nav/i;)V

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/c;->a()Lcom/google/android/maps/driveabout/nav/i;

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/c;->a()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/b/a;->u:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2, p2}, Lcom/google/android/maps/driveabout/b/a;->b(Lcom/google/android/maps/driveabout/nav/i;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/b/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->b:Lcom/google/android/maps/driveabout/b/j;

    return-object v0
.end method

.method private b(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/b/a;->c(Lcom/google/android/maps/driveabout/nav/i;I)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v1, v0, v6}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->f()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->d()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->c()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->n:Lcom/google/android/maps/driveabout/b/m;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/maps/driveabout/b/m;->a(II)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v1, v0, v6}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    goto :goto_0
.end method

.method private c(Lcom/google/android/maps/driveabout/nav/i;I)Lcom/google/android/maps/driveabout/a/at;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->j()Lcom/google/android/maps/driveabout/a/m;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {p1, v1, v2}, Lcom/google/android/maps/driveabout/a/at;->a(Lcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->j()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->n:Lcom/google/android/maps/driveabout/b/m;

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/android/maps/driveabout/b/m;->a(Lcom/google/android/maps/driveabout/nav/i;II)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/nav/i;Z)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Lcom/google/android/maps/driveabout/nav/i;II)Lcom/google/android/maps/driveabout/a/at;
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/google/android/maps/driveabout/b/a;->c(Lcom/google/android/maps/driveabout/nav/i;I)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->g()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->g()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/nav/i;Z)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/a/at;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->i()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    sget v4, Lcom/google/glass/navlib/p;->da_combined_maneuver:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/a/at;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/a/at;->b()Lcom/google/android/maps/driveabout/a/m;

    move-result-object v1

    new-instance v3, Lcom/google/android/maps/driveabout/a/s;

    invoke-direct {v3, v7}, Lcom/google/android/maps/driveabout/a/s;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/a/at;->b()Lcom/google/android/maps/driveabout/a/m;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/a/m;->a(Lcom/google/android/maps/driveabout/a/m;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/m;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/a/m;->a(Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/m;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/a/m;->a(Lcom/google/android/maps/driveabout/a/m;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/m;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/a/at;->a(Lcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v1

    if-nez v1, :cond_3

    if-ltz p2, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->n:Lcom/google/android/maps/driveabout/b/m;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/maps/driveabout/b/m;->a(II)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v1

    invoke-direct {p0, p1, p3}, Lcom/google/android/maps/driveabout/b/a;->c(Lcom/google/android/maps/driveabout/nav/i;I)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/a/au;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/maps/driveabout/a/au;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/at;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/google/android/maps/driveabout/b/a;->c(Lcom/google/android/maps/driveabout/nav/i;I)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->g:Lcom/google/android/maps/driveabout/a/c;

    return-object v0
.end method

.method private c(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/an;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/util/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/maps/driveabout/util/r;

    move-result-object v3

    const-string v0, "VoiceGuidanceEnabled"

    invoke-virtual {v3, v0, v1}, Lcom/google/android/maps/driveabout/util/r;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/a;->k:Z

    const-string v0, "AlertMode"

    invoke-virtual {v3, v0, v1}, Lcom/google/android/maps/driveabout/util/r;->a(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/a;->k:Z

    :cond_0
    const-string v0, "VolumeMode"

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Lcom/google/android/maps/driveabout/util/r;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/a;->k:Z

    :cond_2
    const-string v0, "AlertsDisabled"

    invoke-virtual {v3, v0, v2}, Lcom/google/android/maps/driveabout/util/r;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/a;->k:Z

    :cond_3
    const-string v0, "AlertsMuted"

    invoke-virtual {v3, v0, v2}, Lcom/google/android/maps/driveabout/util/r;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/a;->k:Z

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    return-object v0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/a;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/b/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/a;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->e:Lcom/google/android/maps/driveabout/a/ar;

    return-object v0
.end method

.method private f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->d:Lcom/google/android/maps/driveabout/a/ar;

    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->b:Lcom/google/android/maps/driveabout/b/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->i:Lcom/google/android/maps/driveabout/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->b:Lcom/google/android/maps/driveabout/b/j;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/j;->b()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->i:Lcom/google/android/maps/driveabout/b/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->i:Lcom/google/android/maps/driveabout/b/g;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->i:Lcom/google/android/maps/driveabout/b/g;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/b/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->h:Lcom/google/android/maps/driveabout/b/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/b/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/a;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->f:Lcom/google/android/maps/driveabout/a/c;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/maps/driveabout/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/a;->g()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ar;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "com.google.android.apps.networktts"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/a/ar;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Lcom/google/android/maps/driveabout/a/al;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/a/al;-><init>(Lcom/google/android/maps/driveabout/a/ar;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/a;->t:Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/i;II)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/nav/i;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v4, v3

    neg-float v1, v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_0

    int-to-float v1, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/b/a;->c(Lcom/google/android/maps/driveabout/nav/i;II)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/b/d;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/a/at;)V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/b/a;->j:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/b/a;->p:I

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/a;->c(I)V

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/nav/i;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/b/a;->c(Lcom/google/android/maps/driveabout/nav/i;II)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->o:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/a;->t:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/nav/i;I)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ar;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->c:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ar;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->f:Lcom/google/android/maps/driveabout/a/c;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/c;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/a;->g:Lcom/google/android/maps/driveabout/a/c;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/c;->b()V

    return-void
.end method
