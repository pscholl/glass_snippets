.class public final Lcom/google/android/maps/driveabout/e/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/e/k;


# instance fields
.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/e/k;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/maps/driveabout/e/k;-><init>(JJ)V

    sput-object v0, Lcom/google/android/maps/driveabout/e/k;->a:Lcom/google/android/maps/driveabout/e/k;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/e/k;->b:J

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/e/k;->c:J

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/e/k;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/e/k;->e:Z

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/e/k;->b:J

    iput-wide p3, p0, Lcom/google/android/maps/driveabout/e/k;->c:J

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/e/k;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/e/k;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/e/k;->e:Z

    return-void
.end method

.method private static a(JJ)J
    .locals 12

    const/16 v11, 0x2c

    const/16 v4, 0x20

    const/4 v10, 0x4

    const-wide v8, 0xffffffffffffL

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    shl-long v2, p0, v4

    and-long/2addr v2, v8

    ushr-long v4, p2, v4

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p2

    shl-long v6, v0, v10

    ushr-long/2addr v0, v11

    xor-long/2addr v0, v6

    and-long/2addr v0, v8

    xor-long/2addr v0, v2

    shl-long v2, v0, v10

    ushr-long/2addr v0, v11

    xor-long/2addr v0, v2

    and-long/2addr v0, v8

    xor-long/2addr v0, v4

    return-wide v0
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;
    .locals 5

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/maps/driveabout/e/k;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/k;-><init>(JJ)V

    return-object v4
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/k;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v4, :cond_3

    aget-object v1, v0, v3

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v0, v5

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed feature id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-object v1, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/common/g;->a(Ljava/lang/String;)J

    move-result-wide v1

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/g;->a(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v0, Lcom/google/android/maps/driveabout/e/k;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/e/k;-><init>(JJ)V

    :goto_0
    return-object v0

    :cond_3
    array-length v1, v0

    if-ne v1, v5, :cond_5

    aget-object v1, v0, v3

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed feature id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/g;->a(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v0, Lcom/google/android/maps/driveabout/e/k;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/k;-><init>(J)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed feature id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/k;
    .locals 6

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    new-instance v2, Lcom/google/android/maps/driveabout/e/k;

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/e/k;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/e/k;->c:J

    return-wide v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/k;->e:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/k;->e:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/e/k;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/e/k;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/maps/driveabout/e/k;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/maps/driveabout/e/k;

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/e/k;->e:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/google/android/maps/driveabout/e/k;->e:Z

    if-eqz v2, :cond_3

    :cond_0
    iget-wide v2, p1, Lcom/google/android/maps/driveabout/e/k;->d:J

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/e/k;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v2, p1, Lcom/google/android/maps/driveabout/e/k;->b:J

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/e/k;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/google/android/maps/driveabout/e/k;->c:J

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/e/k;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/e/k;->d:J

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/e/k;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/k;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/e/k;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/k;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
