.class public final Lcom/google/android/maps/driveabout/f/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/f/aa;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/maps/driveabout/e/ab;

.field private final e:Lcom/google/android/maps/driveabout/e/ab;

.field private final f:[Lcom/google/android/maps/driveabout/g/f;

.field private final g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/f/aa;IILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;[Lcom/google/android/maps/driveabout/g/f;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iput p2, p0, Lcom/google/android/maps/driveabout/f/ac;->b:I

    iput p3, p0, Lcom/google/android/maps/driveabout/f/ac;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/f/ac;->d:Lcom/google/android/maps/driveabout/e/ab;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/f/ac;->e:Lcom/google/android/maps/driveabout/e/ab;

    iput-object p6, p0, Lcom/google/android/maps/driveabout/f/ac;->f:[Lcom/google/android/maps/driveabout/g/f;

    iput p7, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    iput p8, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    iget-object v0, p1, Lcom/google/android/maps/driveabout/f/aa;->c:[Lcom/google/android/maps/driveabout/g/e;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/e;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/f/aa;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iput p3, p0, Lcom/google/android/maps/driveabout/f/ac;->b:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iget-object v4, v0, Lcom/google/android/maps/driveabout/f/aa;->c:[Lcom/google/android/maps/driveabout/g/e;

    aget-object v0, v4, p3

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/e;)I

    move-result v0

    array-length v1, v4

    move v2, v0

    :goto_0
    if-ge p3, v1, :cond_4

    aget-object v0, v4, p3

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/g/e;->c(I)Lcom/google/android/maps/driveabout/g/f;

    move-result-object v0

    sget-object v5, Lcom/google/android/maps/driveabout/g/e;->a:Lcom/google/android/maps/driveabout/g/f;

    if-eq v0, v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p1, v2, p3}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/b;II)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p3, 0x1

    :goto_1
    iput v2, p0, Lcom/google/android/maps/driveabout/f/ac;->g:I

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/f/ac;->b:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/f/aa;->a:Lcom/google/android/maps/driveabout/f/d;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/e/ab;

    :goto_2
    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget v0, p0, Lcom/google/android/maps/driveabout/f/ac;->c:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/f/aa;->b:Lcom/google/android/maps/driveabout/f/d;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/e/ab;

    :goto_3
    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/g/f;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->f:[Lcom/google/android/maps/driveabout/g/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->f:[Lcom/google/android/maps/driveabout/g/f;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v0, "Describer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created subPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    aget-object v0, v4, p3

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/e;)I

    move-result v0

    add-int/lit8 p3, p3, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/f/ac;->b:I

    aget-object v0, v4, v0

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/f/ac;->c:I

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/google/android/maps/driveabout/g/e;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/e;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;Ljava/util/List;)I
    .locals 8

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)I

    move-result v4

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/g/e;

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)I

    move-result v2

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_5

    :cond_2
    move-object v1, v0

    move v0, v2

    :goto_2
    move-object v3, v1

    move v1, v0

    goto :goto_1

    :cond_3
    if-le v4, v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NORMAL"

    goto :goto_0

    :pswitch_1
    const-string v0, "RAMP"

    goto :goto_0

    :pswitch_2
    const-string v0, "ROUNDABOUT"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;I)Ljava/util/List;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/g/e;->c()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/g/e;->a(I)Lcom/google/android/maps/driveabout/g/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/maps/driveabout/g/a;->a(Lcom/google/android/maps/driveabout/g/b;)Lcom/google/android/maps/driveabout/g/e;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v2, p2, :cond_1

    invoke-static {p1, v2}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, p3, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Ljava/util/List;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/g/e;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/e;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;I)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/g/e;->g()I

    move-result v0

    if-ge v0, p1, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/g/b;II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/f/aa;->c:[Lcom/google/android/maps/driveabout/g/e;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_0

    const/16 v1, 0x10

    iput v1, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    :goto_0
    return v0

    :cond_0
    aget-object v0, v1, p3

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/f/ac;->b(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p3}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/e;)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/f/ac;->c(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)V

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/f/ac;->e(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/f/ac;->b(Lcom/google/android/maps/driveabout/g/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/g/e;->g()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/g/e;->g()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p3}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/e;)I

    move-result v2

    if-eq v2, v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/f/ac;->e(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/f/ac;->d(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/google/android/maps/driveabout/g/e;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/e;->g()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)V
    .locals 1

    const/16 v0, 0x2d

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;I)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    goto :goto_0
.end method

.method private d(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z
    .locals 1

    invoke-static {p2, p3}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)I

    const/16 v0, 0x2d

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;I)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    iget v0, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)Z
    .locals 10

    const/16 v9, 0x14

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {p2, v3}, Lcom/google/android/maps/driveabout/g/e;->c(I)Lcom/google/android/maps/driveabout/g/f;

    move-result-object v0

    invoke-virtual {p3, v3}, Lcom/google/android/maps/driveabout/g/e;->c(I)Lcom/google/android/maps/driveabout/g/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/g/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v4, v2

    :goto_0
    if-lez v5, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    const/16 v0, 0x2d

    if-gt v6, v0, :cond_6

    add-int/lit8 v0, v6, 0x1e

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;I)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/maps/driveabout/f/ac;->a(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/g/e;->g()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/g/e;->g()I

    move-result v8

    if-ne v0, v8, :cond_0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/g/e;->g()I

    move-result v0

    invoke-static {v7, v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Ljava/util/List;I)V

    :cond_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    if-ge v6, v9, :cond_3

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/g/e;

    invoke-static {p2, v0}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;)I

    move-result v6

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/g/e;->g()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/g/e;->g()I

    move-result v8

    if-ne v0, v8, :cond_3

    if-ge v6, v9, :cond_3

    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    invoke-static {p2, p3, v7}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/g/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    :goto_2
    return v2

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const/16 v0, 0x1e

    if-lt v5, v0, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    goto :goto_2

    :cond_6
    const/16 v0, 0x87

    if-gt v6, v0, :cond_7

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    goto :goto_2

    :cond_7
    const/16 v0, 0xb3

    if-gt v6, v0, :cond_8

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    goto :goto_2

    :cond_8
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    iput v2, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/g/e;->c()I

    move-result v0

    if-le v0, v2, :cond_a

    iput v1, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    iput v3, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    goto :goto_2

    :cond_a
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/ah;)D
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iget-object v8, v1, Lcom/google/android/maps/driveabout/f/aa;->c:[Lcom/google/android/maps/driveabout/g/e;

    const/4 v4, 0x0

    new-instance v9, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v9}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/f/ac;->b:I

    move v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move-object v3, v4

    move v4, v15

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/f/ac;->c:I

    if-ge v4, v5, :cond_6

    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/g/e;->e()I

    move-result v6

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iget-object v5, v5, Lcom/google/android/maps/driveabout/f/aa;->a:Lcom/google/android/maps/driveabout/f/d;

    iget v5, v5, Lcom/google/android/maps/driveabout/f/d;->d:I

    :goto_1
    add-int/lit8 v6, v6, -0x1

    array-length v7, v8

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iget-object v6, v6, Lcom/google/android/maps/driveabout/f/aa;->b:Lcom/google/android/maps/driveabout/f/d;

    iget v6, v6, Lcom/google/android/maps/driveabout/f/d;->d:I

    add-int/lit8 v6, v6, 0x1

    :cond_0
    move v7, v5

    :goto_2
    if-gt v7, v6, :cond_5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/maps/driveabout/f/ac;->b:I

    if-ne v4, v11, :cond_2

    if-ne v7, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/maps/driveabout/f/ac;->d:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v9, v11}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;)V

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/e/ah;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    if-eqz v3, :cond_4

    invoke-virtual {v3, v9}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v13

    div-double/2addr v11, v13

    add-double/2addr v1, v11

    :goto_4
    invoke-virtual {v3, v9}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/maps/driveabout/f/ac;->c:I

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_3

    if-ne v7, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/maps/driveabout/f/ac;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v9, v11}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v7, v9}, Lcom/google/android/maps/driveabout/g/e;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    goto :goto_3

    :cond_4
    new-instance v3, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-wide v1
.end method

.method public final a()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iget-object v2, v0, Lcom/google/android/maps/driveabout/f/aa;->d:[I

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/f/ac;->b:I

    :goto_0
    iget v3, p0, Lcom/google/android/maps/driveabout/f/ac;->c:I

    if-ge v0, v3, :cond_0

    aget v3, v2, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    return v0
.end method

.method public final d()[Lcom/google/android/maps/driveabout/g/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->f:[Lcom/google/android/maps/driveabout/g/f;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/f/ac;->b:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/f/ac;->c:I

    return v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/g/e;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/f/aa;->c:[Lcom/google/android/maps/driveabout/g/e;

    iget v1, p0, Lcom/google/android/maps/driveabout/f/ac;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final h()Lcom/google/android/maps/driveabout/g/e;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->a:Lcom/google/android/maps/driveabout/f/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/f/aa;->c:[Lcom/google/android/maps/driveabout/g/e;

    iget v1, p0, Lcom/google/android/maps/driveabout/f/ac;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final i()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->d:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method public final j()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/ac;->e:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/f/ac;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " side: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/f/ac;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " names: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/ac;->f:[Lcom/google/android/maps/driveabout/g/f;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/g/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v0, " start: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/ac;->d:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " end: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/ac;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/f/ac;->g:I

    invoke-static {v2}, Lcom/google/android/maps/driveabout/f/ac;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
