.class public final Lcom/google/android/maps/driveabout/e/al;
.super Lcom/google/android/maps/driveabout/e/am;


# instance fields
.field protected a:Lcom/google/android/maps/driveabout/e/ab;

.field protected b:Lcom/google/android/maps/driveabout/e/ab;

.field private volatile c:Lcom/google/android/maps/driveabout/e/ab;

.field private volatile d:Lcom/google/android/maps/driveabout/e/ab;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/am;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;I)Lcom/google/android/maps/driveabout/e/al;
    .locals 4

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/e/al;

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v2
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/al;
    .locals 6

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    :goto_0
    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-ge v2, v3, :cond_1

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    :goto_1
    new-instance v4, Lcom/google/android/maps/driveabout/e/al;

    new-instance v5, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v5, v1, v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    invoke-direct {v4, v5, v1}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v4

    :cond_0
    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    goto :goto_0

    :cond_1
    iget v3, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    goto :goto_1
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/af;)Lcom/google/android/maps/driveabout/e/al;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    iget v2, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v6

    if-ge v0, v6, :cond_4

    invoke-virtual {p0, v0, v5}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-ge v6, v4, :cond_0

    iget v4, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    :cond_0
    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-le v6, v3, :cond_1

    iget v3, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    :cond_1
    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-ge v6, v2, :cond_2

    iget v2, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    :cond_2
    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-le v6, v1, :cond_3

    iget v1, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v4, v2}, Lcom/google/android/maps/driveabout/e/ab;->d(II)V

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v1, Lcom/google/android/maps/driveabout/e/al;

    invoke-direct {v1, v5, v0}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v1
.end method

.method public static a([Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/al;
    .locals 7

    const/4 v0, 0x0

    aget-object v0, p0, v0

    iget v2, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, v0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_4

    aget-object v5, p0, v0

    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-ge v6, v4, :cond_0

    iget v4, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    :cond_0
    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-le v6, v3, :cond_1

    iget v3, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    :cond_1
    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-ge v6, v2, :cond_2

    iget v2, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    :cond_2
    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-le v6, v1, :cond_3

    iget v1, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/maps/driveabout/e/al;

    new-instance v5, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v5, v4, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v2, v3, v1}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    invoke-direct {v0, v5, v2}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/e/ab;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->c:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->c:Lcom/google/android/maps/driveabout/e/ab;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->c:Lcom/google/android/maps/driveabout/e/ab;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->d:Lcom/google/android/maps/driveabout/e/ab;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->d:Lcom/google/android/maps/driveabout/e/ab;

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->d:Lcom/google/android/maps/driveabout/e/ab;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

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

.method public final a(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/al;
    .locals 5

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v4, p1, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/e/al;

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v2
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;)Z
    .locals 2

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

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
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/am;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, v0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v2, v0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, v0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/e/al;
    .locals 5

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/e/al;

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->a:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/e/ab;->b:I

    add-int/2addr v4, p1

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v0
.end method

.method public final b(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/al;
    .locals 5

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->a:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v4, p1, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    iget v0, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v3, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gt v0, v3, :cond_0

    iget v0, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v3, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-le v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/e/al;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/maps/driveabout/e/am;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/maps/driveabout/e/al;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/maps/driveabout/e/al;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/e/am;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/al;
    .locals 0

    return-object p0
.end method

.method public final d()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method public final e()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/maps/driveabout/e/al;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/maps/driveabout/e/al;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()Lcom/google/android/maps/driveabout/e/ab;
    .locals 4

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    return-object v0
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/al;->b:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
