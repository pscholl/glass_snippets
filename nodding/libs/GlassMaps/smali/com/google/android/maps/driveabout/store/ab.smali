.class final Lcom/google/android/maps/driveabout/store/ab;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Z

.field final g:I

.field final h:Ljava/util/Locale;

.field final i:I

.field final j:I


# direct methods
.method constructor <init>(IIIIZILjava/util/Locale;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/store/ab;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/store/ab;->c:I

    iput p3, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    iput p4, p0, Lcom/google/android/maps/driveabout/store/ab;->e:I

    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    iput p6, p0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    iput-object p7, p0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ab;->a()[B

    move-result-object v0

    array-length v1, v0

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x2000

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->j:I

    return-void
.end method

.method constructor <init>([BI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->a:I

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t parse header for old schema"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong header size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, p2, v0}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    if-eq v1, v0, :cond_3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checksum mismatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/google/android/maps/driveabout/util/a;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/util/a;-><init>([B)V

    add-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/util/a;->skipBytes(I)I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ab;->c:I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ab;->e:I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUTF()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x2000

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ab;->j:I

    return-void
.end method

.method private a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method private a()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/ab;->a(Ljava/io/DataOutput;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a([BI)I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ab;->a()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatalogVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ab;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BlockSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ab;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MaxShardCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RecordsPerBlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ab;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AutoConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ab;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
