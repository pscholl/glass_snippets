.class public final Lcom/google/android/maps/driveabout/e/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/j;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/e/af;

.field private b:Lcom/google/android/maps/driveabout/e/ap;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private final g:[I


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/af;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/x;->a:Lcom/google/android/maps/driveabout/e/af;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/x;->b:Lcom/google/android/maps/driveabout/e/ap;

    iput p3, p0, Lcom/google/android/maps/driveabout/e/x;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/x;->d:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/maps/driveabout/e/x;->e:I

    iput p6, p0, Lcom/google/android/maps/driveabout/e/x;->f:I

    iput-object p7, p0, Lcom/google/android/maps/driveabout/e/x;->g:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/x;
    .locals 10

    invoke-static {p0, p2}, Lcom/google/android/maps/driveabout/e/af;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/e/aq;->a(I)Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, p4}, Lcom/google/android/maps/driveabout/e/z;->a(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v4, p4, v3

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v8

    new-array v7, v8, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v9

    aput v9, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/e/x;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/e/x;-><init>(Lcom/google/android/maps/driveabout/e/af;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;II[I)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/af;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/x;->a:Lcom/google/android/maps/driveabout/e/af;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/x;->b:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/x;->e:I

    return v0
.end method
