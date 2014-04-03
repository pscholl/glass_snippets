.class final Lcom/google/android/maps/driveabout/store/ag;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/ag;-><init>(I[B)V

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    iput p1, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    return-void
.end method

.method private constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/ag;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    return v0
.end method

.method static a(Lcom/google/android/maps/driveabout/store/ay;)Lcom/google/android/maps/driveabout/store/ag;
    .locals 5

    const/16 v2, 0x1ffc

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Lcom/google/android/maps/driveabout/store/ay;->a([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v1

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected checksum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/store/ag;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/store/ag;-><init>([B)V

    return-object v1
.end method

.method private a(Lcom/google/android/maps/driveabout/store/af;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p2, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/af;->a([BI)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/store/ag;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    return v0
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    return v0
.end method

.method final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->a([BIJ)V

    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/af;)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/af;I)V

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    iget v0, p1, Lcom/google/android/maps/driveabout/store/af;->b:I

    iget v1, p1, Lcom/google/android/maps/driveabout/store/af;->d:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/google/android/maps/driveabout/store/af;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    return-void
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    return v0
.end method

.method final b(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/af;->b([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method final b(Lcom/google/android/maps/driveabout/store/ay;)V
    .locals 5

    const/16 v4, 0x1ffc

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    invoke-static {v0, v3, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    invoke-static {v0, v3, v4}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    invoke-static {v1, v4, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    invoke-interface {p1, v0}, Lcom/google/android/maps/driveabout/store/ay;->b([B)V

    return-void
.end method

.method final c()I
    .locals 3

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/store/ag;->e(I)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v0

    iget v1, v0, Lcom/google/android/maps/driveabout/store/af;->b:I

    iget v2, v0, Lcom/google/android/maps/driveabout/store/af;->d:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/google/android/maps/driveabout/store/af;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ag;->d:I

    goto :goto_0
.end method

.method final c(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/af;->c([BI)I

    move-result v0

    return v0
.end method

.method final d(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/af;->d([BI)I

    move-result v0

    return v0
.end method

.method final e(I)Lcom/google/android/maps/driveabout/store/af;
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ag;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/maps/driveabout/store/af;->a([BIII)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ag;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ag;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
