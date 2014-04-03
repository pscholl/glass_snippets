.class public final Lcom/google/android/maps/driveabout/e/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/au;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/av;

.field private final b:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:[B

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/av;III[BLcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/n;->i:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/n;->a:Lcom/google/android/maps/driveabout/e/av;

    iput-object p6, p0, Lcom/google/android/maps/driveabout/e/n;->b:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    iput p2, p0, Lcom/google/android/maps/driveabout/e/n;->c:I

    iput p3, p0, Lcom/google/android/maps/driveabout/e/n;->d:I

    iput p4, p0, Lcom/google/android/maps/driveabout/e/n;->e:I

    if-eqz p5, :cond_1

    array-length v0, p5

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/googlenav/c/b;

    invoke-direct {v0}, Lcom/google/googlenav/c/b;-><init>()V

    invoke-virtual {v0, p5}, Lcom/google/googlenav/c/b;->a([B)[B

    move-result-object p5

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/c/b;->a()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/n;->g:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/googlenav/c/b;->b()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/n;->h:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/googlenav/c/b;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/n;->i:I

    :cond_0
    aget-byte v0, p5, v2

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-static {p5}, Lcom/google/googlenav/common/b/a/a/c;->a([B)[B
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p5

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/n;->g:[Ljava/lang/String;

    if-nez v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/n;->g:[Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/n;->h:[Ljava/lang/String;

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/n;->h:[Ljava/lang/String;

    :cond_3
    iput-object p5, p0, Lcom/google/android/maps/driveabout/e/n;->f:[B

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input image is not Compact JPEG"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/av;Ljava/io/DataInput;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/e/n;
    .locals 7

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x44524154

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TILE_MAGIC expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version mismatch: 7 or 8 expected, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/av;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected tile coords: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v3

    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v4

    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    new-array v5, v0, [B

    invoke-interface {p1, v5}, Ljava/io/DataInput;->readFully([B)V

    new-instance v0, Lcom/google/android/maps/driveabout/e/n;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/e/n;-><init>(Lcom/google/android/maps/driveabout/e/av;III[BLcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/av;III[BLjava/io/DataOutput;)V
    .locals 1

    const v0, 0x44524154

    invoke-interface {p5, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/16 v0, 0x8

    invoke-static {p5, v0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataOutput;I)V

    invoke-virtual {p0, p5}, Lcom/google/android/maps/driveabout/e/av;->a(Ljava/io/DataOutput;)V

    invoke-static {p5, p1}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataOutput;I)V

    invoke-static {p5, p2}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataOutput;I)V

    invoke-static {p5, p3}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataOutput;I)V

    array-length v0, p4

    invoke-static {p5, v0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataOutput;I)V

    invoke-interface {p5, p4}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/av;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/n;->a:Lcom/google/android/maps/driveabout/e/av;

    return-object v0
.end method

.method public final a(Lcom/google/googlenav/common/a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/n;->c:I

    return v0
.end method

.method public final b(Lcom/google/googlenav/common/a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final c(Lcom/google/googlenav/common/a;)V
    .locals 0

    return-void
.end method
