.class public final Lcom/google/android/maps/driveabout/e/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/j;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/af;

.field private final b:Lcom/google/android/maps/driveabout/e/ap;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:[I


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/af;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/ax;->a:Lcom/google/android/maps/driveabout/e/af;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/ax;->b:Lcom/google/android/maps/driveabout/e/ap;

    iput p3, p0, Lcom/google/android/maps/driveabout/e/ax;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/ax;->d:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/maps/driveabout/e/ax;->f:I

    iput p6, p0, Lcom/google/android/maps/driveabout/e/ax;->e:I

    iput-object p7, p0, Lcom/google/android/maps/driveabout/e/ax;->g:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/j;
    .locals 10

    const/16 v9, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static {p0, p2}, Lcom/google/android/maps/driveabout/e/af;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/e/aq;->a(I)Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne p1, v9, :cond_0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v3

    invoke-static {v3, p4}, Lcom/google/android/maps/driveabout/e/z;->a(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v4, p4, v3

    :cond_0
    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    if-ne p1, v7, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    :cond_2
    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    if-eq p1, v7, :cond_3

    if-ne p1, v9, :cond_5

    :cond_3
    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    :goto_0
    new-array v7, v0, [I

    :goto_1
    if-ge v8, v0, :cond_4

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/android/maps/driveabout/e/ax;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/e/ax;-><init>(Lcom/google/android/maps/driveabout/e/af;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;II[I)V

    return-object v0

    :cond_5
    move v0, v8

    goto :goto_0
.end method


# virtual methods
.method public final b()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ax;->b:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
