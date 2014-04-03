.class public final Lcom/google/googlenav/a/a;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private volatile r:Z

.field private volatile s:Z

.field private volatile t:Z

.field private volatile u:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->a:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->b:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->c:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->d:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->e:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->f:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->g:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->h:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->i:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->j:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->k:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->l:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->m:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->n:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->o:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->p:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->q:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->r:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->s:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->t:Z

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->u:Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/a/a;->b(Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method public static a()Lcom/google/googlenav/common/io/b/a;
    .locals 2

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/e;->e:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    return-object v0
.end method

.method private b(Lcom/google/googlenav/common/io/b/a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->a:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->b:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->c:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->c:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->d:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->d:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->e:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->e:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->f:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->f:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->g:Z

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->g:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->h:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->h:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->i:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->i:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->j:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->j:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->k:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->k:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->l:Z

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->l:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->m:Z

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->m:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->n:Z

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->n:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->o:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->o:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->p:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->p:Z

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->r:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->q:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->q:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->s:Z

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/google/googlenav/a/a;->s:Z

    iget-boolean v0, p0, Lcom/google/googlenav/a/a;->u:Z

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_12
    iput-boolean v1, p0, Lcom/google/googlenav/a/a;->u:Z

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto/16 :goto_a

    :cond_b
    move v0, v2

    goto/16 :goto_b

    :cond_c
    move v0, v2

    goto/16 :goto_c

    :cond_d
    move v0, v2

    goto :goto_d

    :cond_e
    move v0, v2

    goto :goto_e

    :cond_f
    move v0, v2

    goto :goto_f

    :cond_10
    move v0, v2

    goto :goto_10

    :cond_11
    move v0, v2

    goto :goto_11

    :cond_12
    move v1, v2

    goto :goto_12
.end method


# virtual methods
.method public final a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/a/a;->b(Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method
