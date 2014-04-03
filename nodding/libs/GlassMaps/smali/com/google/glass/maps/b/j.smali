.class public final Lcom/google/glass/maps/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bd;


# instance fields
.field private final a:Lcom/google/glass/maps/b/v;

.field private final b:Lcom/google/glass/maps/b/ai;

.field private final c:Lcom/google/android/maps/driveabout/store/be;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private final f:Ljava/util/HashSet;

.field private g:Ljava/util/Iterator;

.field private h:Lcom/google/android/maps/driveabout/e/bf;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/b/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/j;->f:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/google/glass/maps/b/j;->a:Lcom/google/glass/maps/b/v;

    new-instance v0, Lcom/google/glass/maps/b/ai;

    invoke-direct {v0}, Lcom/google/glass/maps/b/ai;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/j;->b:Lcom/google/glass/maps/b/ai;

    invoke-static {}, Lcom/google/android/maps/driveabout/store/be;->a()Lcom/google/android/maps/driveabout/store/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/j;->c:Lcom/google/android/maps/driveabout/store/be;

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/glass/maps/b/j;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/b/j;->j:Z

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/f;Lcom/google/android/maps/driveabout/e/af;)Lcom/google/android/maps/driveabout/e/af;
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v5}, Lcom/google/android/maps/driveabout/e/f;->a(Lcom/google/android/maps/driveabout/e/af;Ljava/util/List;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-ne v6, v1, :cond_1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/af;

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->d()F

    move-result v2

    move v4, v1

    move-object v3, v0

    :goto_1
    if-ge v4, v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->d()F

    move-result v1

    cmpl-float v0, v1, v2

    if-lez v0, :cond_3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/af;

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method private a(Lcom/google/android/maps/driveabout/e/ac;Lcom/google/glass/maps/b/f;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->h:Lcom/google/android/maps/driveabout/e/bf;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ac;->a()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/bf;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/glass/maps/b/f;->g()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ac;->f()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ac;->b()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/b/j;->a(Lcom/google/android/maps/driveabout/e/ap;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ac;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->a:Lcom/google/glass/maps/b/v;

    iget-object v1, p0, Lcom/google/glass/maps/b/j;->b:Lcom/google/glass/maps/b/ai;

    invoke-static {p1, p2, v0, v1}, Lcom/google/glass/maps/b/u;->a(Lcom/google/android/maps/driveabout/e/ac;Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/b/v;Lcom/google/glass/maps/b/ai;)Lcom/google/glass/maps/b/u;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/o;Lcom/google/glass/maps/b/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/b/o;->a(Z)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/an;Lcom/google/glass/maps/b/f;Lcom/google/android/maps/driveabout/e/f;Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/an;->a()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->a()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/b/j;->h:Lcom/google/android/maps/driveabout/e/bf;

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/e/bf;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p3, v0}, Lcom/google/glass/maps/b/j;->a(Lcom/google/android/maps/driveabout/e/f;Lcom/google/android/maps/driveabout/e/af;)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/glass/maps/b/f;->i()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/glass/maps/b/f;->c()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4220

    mul-float/2addr v0, v1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/af;->d()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    move v6, v7

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/an;->f()I

    move-result v0

    if-ge v6, v0, :cond_4

    invoke-virtual {p1, v6}, Lcom/google/android/maps/driveabout/e/an;->b(I)Lcom/google/android/maps/driveabout/e/s;

    move-result-object v3

    move v0, v7

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/s;->b()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/e/s;->a(I)Lcom/google/android/maps/driveabout/e/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/t;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v6}, Lcom/google/android/maps/driveabout/e/an;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/b/j;->c:Lcom/google/android/maps/driveabout/store/be;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/maps/driveabout/store/be;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;)Lcom/google/android/maps/driveabout/store/bb;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/glass/maps/b/j;->a:Lcom/google/glass/maps/b/v;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1, v0, p2, v4, v1}, Lcom/google/glass/maps/b/u;->a(Lcom/google/android/maps/driveabout/e/an;Ljava/lang/String;Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/b/v;Landroid/graphics/Bitmap;)Lcom/google/glass/maps/b/u;

    move-result-object v0

    move-object v1, v0

    move-object v0, v8

    :goto_2
    invoke-virtual {p2}, Lcom/google/glass/maps/b/f;->g()F

    move-result v4

    const/high16 v5, 0x4160

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/glass/maps/b/j;->a(Lcom/google/android/maps/driveabout/e/ap;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/s;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/glass/maps/b/j;->a:Lcom/google/glass/maps/b/v;

    iget-object v5, p0, Lcom/google/glass/maps/b/j;->b:Lcom/google/glass/maps/b/ai;

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/an;Ljava/lang/String;Lcom/google/android/maps/driveabout/e/af;Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/b/v;Lcom/google/glass/maps/b/ai;)Lcom/google/glass/maps/b/p;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p2}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/o;Lcom/google/glass/maps/b/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/b/o;->a(Z)V

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/t;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/e/s;->a(I)Lcom/google/android/maps/driveabout/e/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/t;->g()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v0

    move-object v1, v8

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    move-object v0, v8

    move-object v1, v8

    goto :goto_2
.end method

.method private a(Lcom/google/android/maps/driveabout/e/bf;Z)V
    .locals 4

    invoke-direct {p0}, Lcom/google/glass/maps/b/j;->c()V

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/o;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/b/o;->a(Lcom/google/android/maps/driveabout/e/bh;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/o;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/google/glass/maps/b/j;->b(Lcom/google/glass/maps/b/o;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->a()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/e/j;Lcom/google/glass/maps/b/f;Lcom/google/android/maps/driveabout/e/f;Z)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/e/j;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    check-cast p1, Lcom/google/android/maps/driveabout/e/ac;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/glass/maps/b/j;->a(Lcom/google/android/maps/driveabout/e/ac;Lcom/google/glass/maps/b/f;Z)V

    goto :goto_0

    :sswitch_1
    check-cast p1, Lcom/google/android/maps/driveabout/e/an;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/maps/b/j;->a(Lcom/google/android/maps/driveabout/e/an;Lcom/google/glass/maps/b/f;Lcom/google/android/maps/driveabout/e/f;Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcom/google/glass/maps/b/f;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/google/glass/maps/b/j;->c()V

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->h:Lcom/google/android/maps/driveabout/e/bf;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/bf;->a()Lcom/google/android/maps/driveabout/e/bg;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/b/o;->a(Lcom/google/glass/maps/b/f;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->d()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/e/bg;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/google/glass/maps/b/j;->b(Lcom/google/glass/maps/b/o;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v4, p0, Lcom/google/glass/maps/b/j;->l:Z

    iput-boolean v4, p0, Lcom/google/glass/maps/b/j;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/b/j;->k:Z

    return-void
.end method

.method private a(Lcom/google/glass/maps/b/f;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/google/glass/maps/b/j;->l:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/maps/b/j;->m:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/google/glass/maps/b/j;->h:Lcom/google/android/maps/driveabout/e/bf;

    iget-boolean v3, p0, Lcom/google/glass/maps/b/j;->m:Z

    invoke-direct {p0, v2, v3}, Lcom/google/glass/maps/b/j;->a(Lcom/google/android/maps/driveabout/e/bf;Z)V

    iput-boolean v4, p0, Lcom/google/glass/maps/b/j;->l:Z

    iput-boolean v4, p0, Lcom/google/glass/maps/b/j;->m:Z

    :cond_1
    new-instance v2, Lcom/google/android/maps/driveabout/e/f;

    iget-object v3, p0, Lcom/google/glass/maps/b/j;->h:Lcom/google/android/maps/driveabout/e/bf;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/bf;->c()Lcom/google/android/maps/driveabout/e/am;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/e/f;-><init>(Lcom/google/android/maps/driveabout/e/am;)V

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/f;Lcom/google/android/maps/driveabout/e/f;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/b/j;->k:Z

    return-void
.end method

.method private a(Lcom/google/glass/maps/b/f;Ljava/util/Iterator;I)V
    .locals 10

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/google/glass/maps/b/j;->g:Ljava/util/Iterator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v3, p3

    add-long/2addr v3, v0

    new-instance v5, Lcom/google/android/maps/driveabout/e/f;

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->h:Lcom/google/android/maps/driveabout/e/bf;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/bf;->c()Lcom/google/android/maps/driveabout/e/am;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/maps/driveabout/e/f;-><init>(Lcom/google/android/maps/driveabout/e/am;)V

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->g()F

    move-result v6

    invoke-direct {p0}, Lcom/google/glass/maps/b/j;->c()V

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_0
    if-ge v1, v7, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/o;

    if-eqz v0, :cond_1

    invoke-static {v0, v6}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/o;F)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/glass/maps/b/o;->a(Lcom/google/glass/maps/b/f;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/google/glass/maps/b/j;->h:Lcom/google/android/maps/driveabout/e/bf;

    invoke-virtual {v0, v9}, Lcom/google/glass/maps/b/o;->a(Lcom/google/android/maps/driveabout/e/bh;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct {p0, v0}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/o;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-direct {p0, v0}, Lcom/google/glass/maps/b/j;->b(Lcom/google/glass/maps/b/o;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->a()V

    goto :goto_1

    :cond_3
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->a()V

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_5

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/o;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->g()Lcom/google/android/maps/driveabout/e/j;

    move-result-object v0

    invoke-direct {p0, v0, p1, v5, v2}, Lcom/google/glass/maps/b/j;->a(Lcom/google/android/maps/driveabout/e/j;Lcom/google/glass/maps/b/f;Lcom/google/android/maps/driveabout/e/f;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/google/glass/maps/b/j;->l:Z

    iput-boolean v2, p0, Lcom/google/glass/maps/b/j;->m:Z

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/f;Lcom/google/android/maps/driveabout/e/f;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/b/j;->k:Z

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/ap;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ap;->d()Lcom/google/android/maps/driveabout/e/at;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/at;->b()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/at;->a()I

    move-result v0

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/glass/maps/b/f;Lcom/google/android/maps/driveabout/e/f;J)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot run labeler loop until all previous labels have either been copied into new label table or destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/glass/maps/b/j;->g:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x14

    if-ge v2, v4, :cond_1

    add-int/lit8 v2, v0, 0x1

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, p3

    if-ltz v0, :cond_2

    move v1, v3

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/b/j;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/j;

    invoke-direct {p0, v0, p1, p2, v3}, Lcom/google/glass/maps/b/j;->a(Lcom/google/android/maps/driveabout/e/j;Lcom/google/glass/maps/b/f;Lcom/google/android/maps/driveabout/e/f;Z)V

    move v0, v2

    goto :goto_0
.end method

.method private a(Lcom/google/glass/maps/b/o;)Z
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/glass/maps/b/o;->f()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/glass/maps/b/o;->c()Lcom/google/android/maps/driveabout/e/am;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/am;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v5

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->c()Lcom/google/android/maps/driveabout/e/am;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/e/am;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/maps/driveabout/e/al;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v4}, Lcom/google/android/maps/driveabout/e/am;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->f()I

    move-result v7

    if-le v3, v7, :cond_1

    iget-object v7, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/maps/b/j;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/google/glass/maps/b/o;F)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private a(Lcom/google/glass/maps/b/o;Lcom/google/glass/maps/b/f;)Z
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->f:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/glass/maps/b/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/glass/maps/b/o;->a(Lcom/google/glass/maps/b/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/o;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/glass/maps/b/o;->b(Lcom/google/glass/maps/b/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/o;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b/j;->b(Lcom/google/glass/maps/b/o;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/maps/b/o;->a()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Lcom/google/glass/maps/b/o;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->f:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/glass/maps/b/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/glass/maps/b/j;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/maps/b/o;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/b/j;->j:Z

    iput-boolean v2, p0, Lcom/google/glass/maps/b/j;->l:Z

    iput-boolean v2, p0, Lcom/google/glass/maps/b/j;->m:Z

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/glass/maps/b/j;->i:I

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/store/bb;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/b/j;->j:Z

    return-void
.end method

.method public final a(Lcom/google/glass/maps/b/f;Landroid/graphics/Rect;Ljava/util/Iterator;ZZ)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/glass/maps/b/f;->a(FFFF)Lcom/google/android/maps/driveabout/e/l;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/bf;->a(Lcom/google/android/maps/driveabout/e/l;)Lcom/google/android/maps/driveabout/e/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/j;->h:Lcom/google/android/maps/driveabout/e/bf;

    :goto_0
    if-eqz p5, :cond_0

    iput-boolean v4, p0, Lcom/google/glass/maps/b/j;->j:Z

    :cond_0
    if-eqz p4, :cond_3

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/f;)V

    iput-boolean v4, p0, Lcom/google/glass/maps/b/j;->j:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->l()Lcom/google/android/maps/driveabout/e/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/j;->h:Lcom/google/android/maps/driveabout/e/bf;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/google/glass/maps/b/j;->j:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/glass/maps/b/j;->i:I

    invoke-direct {p0, p1, p3, v0}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/f;Ljava/util/Iterator;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/b/j;->j:Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/google/glass/maps/b/j;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/glass/maps/b/j;->i:I

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/f;I)V

    goto :goto_1
.end method

.method public final b()Lcom/google/glass/maps/c/g;
    .locals 2

    new-instance v0, Lcom/google/glass/maps/c/g;

    iget-object v1, p0, Lcom/google/glass/maps/b/j;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/google/glass/maps/c/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method
