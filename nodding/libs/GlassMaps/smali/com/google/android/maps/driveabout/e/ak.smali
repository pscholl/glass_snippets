.class public final Lcom/google/android/maps/driveabout/e/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/j;


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:I

.field private final d:Lcom/google/android/maps/driveabout/e/ap;

.field private final e:[I


# direct methods
.method private constructor <init>(I[BILcom/google/android/maps/driveabout/e/ap;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/e/ak;->a:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/ak;->b:[B

    iput p3, p0, Lcom/google/android/maps/driveabout/e/ak;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/ak;->d:Lcom/google/android/maps/driveabout/e/ap;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/e/ak;->e:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;)Lcom/google/android/maps/driveabout/e/ak;
    .locals 7

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v2, v0, [B

    invoke-interface {p0, v2}, Ljava/io/DataInput;->readFully([B)V

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v5, v4, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/e/ak;

    invoke-static {}, Lcom/google/android/maps/driveabout/e/ap;->a()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/e/ak;-><init>(I[BILcom/google/android/maps/driveabout/e/ap;[I)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ak;->a:I

    return v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ak;->d:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ak;->c:I

    return v0
.end method

.method public final e()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ak;->b:[B

    return-object v0
.end method
