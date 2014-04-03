.class public final Lcom/google/android/maps/driveabout/e/bg;
.super Lcom/google/android/maps/driveabout/e/bh;


# instance fields
.field private b:Lcom/google/android/maps/driveabout/e/al;

.field private c:Lcom/google/android/maps/driveabout/e/ab;

.field private d:Lcom/google/android/maps/driveabout/e/ab;

.field private e:I

.field private f:I

.field private g:I

.field private volatile h:Lcom/google/android/maps/driveabout/e/ab;

.field private volatile i:Lcom/google/android/maps/driveabout/e/ab;

.field private volatile j:Lcom/google/android/maps/driveabout/e/ab;

.field private volatile k:Lcom/google/android/maps/driveabout/e/ab;

.field private volatile l:Lcom/google/android/maps/driveabout/e/ab;

.field private volatile m:Lcom/google/android/maps/driveabout/e/ab;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/al;)V
    .locals 4

    const/high16 v3, 0x4000

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/bh;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/bg;->b:Lcom/google/android/maps/driveabout/e/al;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->e()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    iget v0, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gez v0, :cond_1

    iget v0, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/bg;->e:I

    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/e/ab;->h(Lcom/google/android/maps/driveabout/e/ab;)V

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/e/ab;->h(Lcom/google/android/maps/driveabout/e/ab;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-le v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/e/bg;->a:Z

    iget v0, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/bg;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/bg;->f:I

    iget v0, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/bg;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/bg;->g:I

    return-void

    :cond_1
    iget v0, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-le v0, v3, :cond_0

    iget v0, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int v0, v3, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/bg;->e:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/bg;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/e/bg;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/e/bg;-><init>(Lcom/google/android/maps/driveabout/e/al;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/e/ab;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->h:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->h:Lcom/google/android/maps/driveabout/e/ab;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->h:Lcom/google/android/maps/driveabout/e/ab;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->i:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->i:Lcom/google/android/maps/driveabout/e/ab;

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->i:Lcom/google/android/maps/driveabout/e/ab;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a()Lcom/google/android/maps/driveabout/e/bg;
    .locals 0

    return-object p0
.end method

.method public final a(I[Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x2

    const v2, -0x20000001

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/bg;->a:Z

    if-eqz v0, :cond_4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/e/bg;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-virtual {p0, v4}, Lcom/google/android/maps/driveabout/e/bg;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/google/android/maps/driveabout/e/bg;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->j:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->j:Lcom/google/android/maps/driveabout/e/ab;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->j:Lcom/google/android/maps/driveabout/e/ab;

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->k:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    const/high16 v1, 0x2000

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->k:Lcom/google/android/maps/driveabout/e/ab;

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->k:Lcom/google/android/maps/driveabout/e/ab;

    aput-object v0, p2, v3

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/e/bg;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/e/bg;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/e/bg;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/e/bg;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->l:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    const/high16 v1, 0x2000

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->l:Lcom/google/android/maps/driveabout/e/ab;

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->l:Lcom/google/android/maps/driveabout/e/ab;

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->m:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->m:Lcom/google/android/maps/driveabout/e/ab;

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->m:Lcom/google/android/maps/driveabout/e/ab;

    aput-object v0, p2, v3

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/e/bg;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/e/bg;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v3

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/bg;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    aput-object v0, p2, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;)Z
    .locals 2

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/bg;->e:I

    add-int/2addr v0, v1

    const v1, 0x3fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/e/bg;->f:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/bg;->g:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/am;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x2000

    const/high16 v6, -0x2000

    const/high16 v5, 0x4000

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/bg;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->b:Lcom/google/android/maps/driveabout/e/al;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/am;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v4, v0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v4, v0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-ge v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gt v4, v3, :cond_4

    if-gt v7, v0, :cond_0

    :cond_4
    if-gt v6, v3, :cond_5

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-ge v4, v0, :cond_0

    :cond_5
    if-ge v3, v6, :cond_8

    add-int/2addr v3, v5

    :cond_6
    :goto_1
    if-ge v0, v6, :cond_9

    add-int/2addr v0, v5

    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gt v4, v3, :cond_a

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-lt v3, v0, :cond_a

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_0

    :cond_8
    if-lt v3, v7, :cond_6

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_9
    if-lt v0, v7, :cond_7

    sub-int/2addr v0, v5

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method public final b(Lcom/google/android/maps/driveabout/e/am;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/e/bg;->a:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->b:Lcom/google/android/maps/driveabout/e/al;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/e/al;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/maps/driveabout/e/al;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/maps/driveabout/e/al;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bg;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gt v1, v2, :cond_2

    const/high16 v1, 0x2000

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gt v1, v2, :cond_3

    :cond_2
    const/high16 v1, -0x2000

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-lt v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/e/bh;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/am;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->b:Lcom/google/android/maps/driveabout/e/al;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/bg;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final e()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/bg;->d:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method
