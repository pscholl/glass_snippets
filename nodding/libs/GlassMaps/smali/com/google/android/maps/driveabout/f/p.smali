.class public final Lcom/google/android/maps/driveabout/f/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/f/q;

.field private final b:I

.field private final c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private final i:I


# direct methods
.method constructor <init>(ILcom/google/android/maps/driveabout/f/q;IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/f/p;->a:Lcom/google/android/maps/driveabout/f/q;

    iput p3, p0, Lcom/google/android/maps/driveabout/f/p;->b:I

    iput p1, p0, Lcom/google/android/maps/driveabout/f/p;->c:I

    iput p4, p0, Lcom/google/android/maps/driveabout/f/p;->e:I

    iput p5, p0, Lcom/google/android/maps/driveabout/f/p;->f:I

    iput p6, p0, Lcom/google/android/maps/driveabout/f/p;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/f/p;->d:Z

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/f/p;->b:I

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/f/q;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/p;->a(Lcom/google/android/maps/driveabout/nav/ah;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/f/p;->i:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/f/p;->i:I

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ah;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, -0x1

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xa

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xb

    goto :goto_1

    :pswitch_6
    const/16 v0, 0xc

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xd

    goto :goto_1

    :pswitch_9
    const/16 v0, 0xe

    goto :goto_1

    :pswitch_a
    const/16 v0, 0x25

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    const/16 v0, 0x13

    goto :goto_1

    :pswitch_c
    const/16 v0, 0x11

    goto :goto_1

    :pswitch_d
    const/16 v0, 0x12

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_5

    const/16 v0, 0x16

    goto :goto_1

    :pswitch_f
    const/16 v0, 0x14

    goto :goto_1

    :pswitch_10
    const/16 v0, 0x15

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_6

    const/16 v0, 0x19

    goto :goto_1

    :pswitch_12
    const/16 v0, 0x17

    goto :goto_1

    :pswitch_13
    const/16 v0, 0x18

    goto :goto_1

    :pswitch_14
    const/16 v0, 0x22

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/f/p;->c:I

    return v0
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/f/p;->f:I

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/p;->h:Ljava/lang/String;

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/f/p;->d:Z

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/p;->a:Lcom/google/android/maps/driveabout/f/q;

    iget v1, p0, Lcom/google/android/maps/driveabout/f/p;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/f/q;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v0

    return v0
.end method

.method final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/f/p;->g:I

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/f/p;->d:Z

    return v0
.end method

.method final d()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/p;->a:Lcom/google/android/maps/driveabout/f/q;

    iget v1, p0, Lcom/google/android/maps/driveabout/f/p;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/f/q;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    return-object v0
.end method

.method final e()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/f/p;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/p;->a:Lcom/google/android/maps/driveabout/f/q;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/f/q;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/p;->a:Lcom/google/android/maps/driveabout/f/q;

    iget v1, p0, Lcom/google/android/maps/driveabout/f/p;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/f/q;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    goto :goto_0
.end method

.method final f()Lcom/google/android/maps/driveabout/f/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/p;->a:Lcom/google/android/maps/driveabout/f/q;

    return-object v0
.end method

.method final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/f/p;->b:I

    return v0
.end method

.method final h()V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/p;->d()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v4

    new-instance v0, Lcom/google/android/maps/driveabout/nav/i;

    iget v1, p0, Lcom/google/android/maps/driveabout/f/p;->c:I

    iget v2, p0, Lcom/google/android/maps/driveabout/f/p;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/f/p;->f:I

    iget v6, p0, Lcom/google/android/maps/driveabout/f/p;->g:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/f/p;->d:Z

    iget-object v6, p0, Lcom/google/android/maps/driveabout/f/p;->h:Ljava/lang/String;

    const/4 v7, -0x1

    iget v8, p0, Lcom/google/android/maps/driveabout/f/p;->i:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/nav/i;-><init>(IIIIZLjava/lang/String;II)V

    invoke-virtual {v9, v0}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/i;)V

    return-void
.end method
