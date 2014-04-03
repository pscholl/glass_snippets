.class public final Lcom/google/glass/maps/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/maps/bf;


# instance fields
.field a:[Lcom/google/android/maps/driveabout/nav/ao;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field b:[Lcom/google/glass/maps/directions/i;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/google/glass/maps/directions/i;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private e:Lcom/google/glass/maps/bf;

.field private f:I

.field private g:I

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:I

.field private k:Lcom/google/glass/maps/j;

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Ljava/lang/CharSequence;

.field private o:Ljava/lang/CharSequence;

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Lcom/google/android/maps/driveabout/e/af;

.field private u:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/glass/maps/ca;->f:I

    iput v0, p0, Lcom/google/glass/maps/ca;->g:I

    iput v0, p0, Lcom/google/glass/maps/ca;->r:I

    iput-boolean v1, p0, Lcom/google/glass/maps/ca;->s:Z

    iput-object p1, p0, Lcom/google/glass/maps/ca;->d:Landroid/content/Context;

    return-void
.end method

.method private b(Lcom/google/glass/maps/directions/i;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/maps/bf;->a(Lcom/google/glass/maps/directions/i;I)V

    :cond_0
    return-void
.end method

.method private b([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0, p1}, Lcom/google/glass/maps/bf;->a([Lcom/google/android/maps/driveabout/nav/ao;)V

    :cond_0
    return-void
.end method

.method private b([Lcom/google/glass/maps/directions/i;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0, p1}, Lcom/google/glass/maps/bf;->a([Lcom/google/glass/maps/directions/i;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget v1, p0, Lcom/google/glass/maps/ca;->g:I

    iget-object v2, p0, Lcom/google/glass/maps/ca;->h:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/maps/bf;->a(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget-object v1, p0, Lcom/google/glass/maps/ca;->i:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/bf;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget-object v1, p0, Lcom/google/glass/maps/ca;->k:Lcom/google/glass/maps/j;

    iget-object v2, p0, Lcom/google/glass/maps/ca;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/maps/bf;->a(Lcom/google/glass/maps/j;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0}, Lcom/google/glass/maps/bf;->B()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget-object v1, p0, Lcom/google/glass/maps/ca;->n:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/bf;->c(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget-object v1, p0, Lcom/google/glass/maps/ca;->o:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/bf;->d(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget v1, p0, Lcom/google/glass/maps/ca;->r:I

    invoke-interface {v0, v1}, Lcom/google/glass/maps/bf;->a(I)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget-object v1, p0, Lcom/google/glass/maps/ca;->p:Ljava/lang/CharSequence;

    iget-boolean v2, p0, Lcom/google/glass/maps/ca;->q:Z

    invoke-interface {v0, v1, v2}, Lcom/google/glass/maps/bf;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget-object v1, p0, Lcom/google/glass/maps/ca;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/bf;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->t:Lcom/google/android/maps/driveabout/e/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget-object v1, p0, Lcom/google/glass/maps/ca;->t:Lcom/google/android/maps/driveabout/e/af;

    iget-object v2, p0, Lcom/google/glass/maps/ca;->u:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/maps/bf;->a(Lcom/google/android/maps/driveabout/e/af;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget-boolean v1, p0, Lcom/google/glass/maps/ca;->s:Z

    invoke-interface {v0, v1}, Lcom/google/glass/maps/bf;->c(Z)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0}, Lcom/google/glass/maps/bf;->E()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    const/4 v2, 0x7

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/maps/ca;->r:I

    iput v2, p0, Lcom/google/glass/maps/ca;->f:I

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->g()V

    goto :goto_0
.end method

.method public final C()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/ca;->t:Lcom/google/android/maps/driveabout/e/af;

    iput-object v0, p0, Lcom/google/glass/maps/ca;->u:Ljava/util/List;

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0}, Lcom/google/glass/maps/bf;->C()V

    :cond_0
    return-void
.end method

.method public final D()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0}, Lcom/google/glass/maps/bf;->D()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/ca;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationService;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final E()V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->o()V

    return-void
.end method

.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    return v0
.end method

.method public final a(I)V
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/maps/ca;->r:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/glass/maps/ca;->r:I

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->j()V

    goto :goto_0
.end method

.method public final a(ILjava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/google/glass/maps/ca;->g:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->h:Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Lcom/google/glass/maps/c/l;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput v2, p0, Lcom/google/glass/maps/ca;->f:I

    iput-object p2, p0, Lcom/google/glass/maps/ca;->h:Ljava/lang/CharSequence;

    iput p1, p0, Lcom/google/glass/maps/ca;->g:I

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->d()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/af;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->t:Lcom/google/android/maps/driveabout/e/af;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->u:Ljava/util/List;

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/glass/maps/ca;->t:Lcom/google/android/maps/driveabout/e/af;

    iput-object p2, p0, Lcom/google/glass/maps/ca;->u:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->m()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/al;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0, p1}, Lcom/google/glass/maps/bf;->a(Lcom/google/android/maps/driveabout/e/al;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0, p1}, Lcom/google/glass/maps/bf;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0, p1}, Lcom/google/glass/maps/bf;->a(Lcom/google/android/maps/driveabout/location/z;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/glass/maps/bf;)V
    .locals 2

    iput-object p1, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-boolean v0, p0, Lcom/google/glass/maps/ca;->s:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->n()V

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/maps/ca;->m()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/glass/maps/ca;->d()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/glass/maps/ca;->e()V

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->j()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/maps/ca;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/ca;->b([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/maps/ca;->b:[Lcom/google/glass/maps/directions/i;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/ca;->b([Lcom/google/glass/maps/directions/i;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/maps/ca;->c:Lcom/google/glass/maps/directions/i;

    iget v1, p0, Lcom/google/glass/maps/ca;->j:I

    invoke-direct {p0, v0, v1}, Lcom/google/glass/maps/ca;->b(Lcom/google/glass/maps/directions/i;I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google/glass/maps/ca;->f()V

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->l()V

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->h()V

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->j()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/google/glass/maps/ca;->g()V

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->h()V

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->i()V

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->j()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/google/glass/maps/ca;->k()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Lcom/google/glass/maps/directions/i;I)V
    .locals 3

    const/4 v2, 0x5

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    iget-object v1, p0, Lcom/google/glass/maps/ca;->c:Lcom/google/glass/maps/directions/i;

    iget-object v1, v1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/glass/maps/ca;->j:I

    if-eq p2, v0, :cond_0

    :cond_2
    iput v2, p0, Lcom/google/glass/maps/ca;->f:I

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/i;->d()V

    iput-object p1, p0, Lcom/google/glass/maps/ca;->c:Lcom/google/glass/maps/directions/i;

    iput p2, p0, Lcom/google/glass/maps/ca;->j:I

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/ca;->b(Lcom/google/glass/maps/directions/i;I)V

    goto :goto_0
.end method

.method public final a(Lcom/google/glass/maps/j;Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x6

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->k:Lcom/google/glass/maps/j;

    invoke-static {p1, v0}, Lcom/google/glass/maps/c/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->l:Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Lcom/google/glass/maps/c/l;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput v2, p0, Lcom/google/glass/maps/ca;->f:I

    iput-object p1, p0, Lcom/google/glass/maps/ca;->k:Lcom/google/glass/maps/j;

    iput-object p2, p0, Lcom/google/glass/maps/ca;->l:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/ca;->m:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/google/glass/maps/c/l;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput v2, p0, Lcom/google/glass/maps/ca;->f:I

    iput-object p1, p0, Lcom/google/glass/maps/ca;->i:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->e()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;Z)V
    .locals 2

    const/16 v1, 0x8

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/google/glass/maps/ca;->f:I

    iput-object p1, p0, Lcom/google/glass/maps/ca;->p:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/google/glass/maps/ca;->q:Z

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->k()V

    goto :goto_0
.end method

.method public final a([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 3

    const/4 v2, 0x3

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput v2, p0, Lcom/google/glass/maps/ca;->f:I

    iput-object p1, p0, Lcom/google/glass/maps/ca;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/ca;->b([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0
.end method

.method public final a([Lcom/google/glass/maps/directions/i;)V
    .locals 3

    const/4 v2, 0x4

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->b:[Lcom/google/glass/maps/directions/i;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput v2, p0, Lcom/google/glass/maps/ca;->f:I

    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/glass/maps/directions/i;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/google/glass/maps/ca;->b:[Lcom/google/glass/maps/directions/i;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/ca;->b([Lcom/google/glass/maps/directions/i;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/ca;->f:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/glass/maps/ca;->j:I

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/ca;->e:Lcom/google/glass/maps/bf;

    invoke-interface {v0, p1}, Lcom/google/glass/maps/bf;->b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x6

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/ca;->m:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/google/glass/maps/c/l;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput v2, p0, Lcom/google/glass/maps/ca;->f:I

    iput-object p1, p0, Lcom/google/glass/maps/ca;->m:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->l()V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/ca;->j:I

    return v0
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/ca;->n:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/google/glass/maps/c/l;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/glass/maps/ca;->n:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->h()V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/ca;->s:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/glass/maps/ca;->s:Z

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->n()V

    goto :goto_0
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/ca;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/ca;->o:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/google/glass/maps/c/l;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/glass/maps/ca;->o:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/glass/maps/ca;->i()V

    goto :goto_0
.end method
