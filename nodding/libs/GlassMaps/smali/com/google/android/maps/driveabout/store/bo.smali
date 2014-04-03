.class public final Lcom/google/android/maps/driveabout/store/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/v;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/e/au;

.field private static final b:[B


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/google/android/maps/driveabout/store/bq;

.field private final f:Ljava/util/HashMap;

.field private g:Lcom/google/android/maps/driveabout/store/y;

.field private final h:I

.field private i:Lcom/google/googlenav/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/e/y;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/y;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/store/bo;->a:Lcom/google/android/maps/driveabout/e/au;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/maps/driveabout/store/bo;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/maps/driveabout/store/bq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/common/a/a;

    invoke-direct {v0}, Lcom/google/googlenav/common/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/maps/driveabout/store/bo;->d:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/bo;->e:Lcom/google/android/maps/driveabout/store/bq;

    invoke-static {}, Lcom/google/android/maps/driveabout/store/bo;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/bo;->h:I

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/google/android/maps/driveabout/store/bo;->h:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;[BI)V
    .locals 11

    const-wide/16 v4, 0x0

    const-wide/16 v8, -0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p2, Lcom/google/android/maps/driveabout/e/aa;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t insert a MutableVectorTile into SD cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->a(Lcom/google/android/maps/driveabout/e/av;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->b(Lcom/google/android/maps/driveabout/e/av;)Ljava/lang/String;

    move-result-object v3

    array-length v0, p3

    if-lez v0, :cond_8

    instance-of v0, p2, Lcom/google/android/maps/driveabout/e/i;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/google/android/maps/driveabout/e/i;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/e/i;->a_()J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v6

    add-long/2addr v0, v6

    cmp-long v2, v0, v4

    if-gez v2, :cond_6

    move-wide v1, v4

    :goto_1
    move-object v0, p2

    check-cast v0, Lcom/google/android/maps/driveabout/e/i;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/e/i;->b_()J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-gez v0, :cond_5

    :goto_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x18

    :try_start_0
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v7, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v7, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_3
    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bp;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/google/android/maps/driveabout/store/bp;->c:I

    add-int v4, p4, v0

    :goto_4
    new-instance v0, Lcom/google/android/maps/driveabout/store/bp;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/store/bp;-><init>(JLjava/lang/String;I[BLcom/google/android/maps/driveabout/e/au;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/store/bo;->h:I

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    :try_start_4
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_4
    move v4, p4

    goto :goto_4

    :cond_5
    move-wide v4, v6

    goto :goto_2

    :cond_6
    move-wide v1, v0

    goto/16 :goto_1

    :cond_7
    move-wide v4, v8

    move-wide v1, v8

    goto :goto_2

    :cond_8
    move-object v5, p3

    goto :goto_3
.end method

.method private a(ILjava/util/Locale;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/store/y;->a(ILjava/util/Locale;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/io/File;)Z
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/store/x;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/store/x;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    sub-long v1, v4, v2

    const-string v3, "SDCardTileCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/store/y;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries, data version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/store/y;->b()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/maps/driveabout/store/bo;->d:I

    const/4 v6, -0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6, v7, v1}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/lang/String;IILjava/util/Locale;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static e()I
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->d()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    const/16 v1, 0x100

    mul-int/lit8 v0, v0, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t store unencrypted tiles into SD cache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/store/bo;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;[BI)V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/y;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/bo;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public final a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/y;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/au;)Z
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/bo;->a:Lcom/google/android/maps/driveabout/e/au;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/io/File;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/bo;->b(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Locale;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/store/bo;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/av;)[B
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->a(Lcom/google/android/maps/driveabout/e/av;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->b(Lcom/google/android/maps/driveabout/e/av;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final a_(Lcom/google/android/maps/driveabout/e/av;)V
    .locals 2

    sget-object v0, Lcom/google/android/maps/driveabout/store/bo;->a:Lcom/google/android/maps/driveabout/e/au;

    sget-object v1, Lcom/google/android/maps/driveabout/store/bo;->b:[B

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/store/bo;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;[B)V

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/maps/driveabout/e/av;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v2

    const/16 v3, 0x15

    if-le v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->a(Lcom/google/android/maps/driveabout/e/av;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->b(Lcom/google/android/maps/driveabout/e/av;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/maps/driveabout/store/y;->b(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final c(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/au;
    .locals 13

    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bp;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/bp;->e:Lcom/google/android/maps/driveabout/e/au;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->a(Lcom/google/android/maps/driveabout/e/av;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->b(Lcom/google/android/maps/driveabout/e/av;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_3

    move-object v0, v8

    goto :goto_0

    :cond_3
    :try_start_1
    array-length v0, v2

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/maps/driveabout/store/bo;->a:Lcom/google/android/maps/driveabout/e/au;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    cmp-long v0, v4, v9

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v11

    sub-long/2addr v4, v11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v11

    add-long/2addr v4, v11

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    move-wide v4, v6

    :cond_5
    const/16 v0, 0x10

    if-le v3, v0, :cond_7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    cmp-long v9, v0, v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v9}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v9

    sub-long/2addr v0, v9

    iget-object v9, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v9}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v9

    add-long/2addr v0, v9

    cmp-long v9, v0, v6

    if-gez v9, :cond_6

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->e:Lcom/google/android/maps/driveabout/store/bq;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/android/maps/driveabout/store/bq;->a(Lcom/google/android/maps/driveabout/e/av;[BIJJ)Lcom/google/android/maps/driveabout/e/au;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unpack tile in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto/16 :goto_0

    :cond_6
    move-wide v6, v0

    goto :goto_1

    :cond_7
    move-wide v6, v9

    goto :goto_1
.end method

.method public final c()Ljava/util/Locale;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->b()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/y;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutDown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final e_()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bp;

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/bp;->d:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    int-to-long v9, v1

    add-long v1, v2, v9

    iget-wide v9, v0, Lcom/google/android/maps/driveabout/store/bp;->a:J

    iget-object v3, v0, Lcom/google/android/maps/driveabout/store/bp;->b:Ljava/lang/String;

    iget v11, v0, Lcom/google/android/maps/driveabout/store/bp;->c:I

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/bp;->d:[B

    invoke-static {v9, v10, v3, v11, v0}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;I[B)Lcom/google/android/maps/driveabout/store/ac;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v2, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/bp;->d:[B

    array-length v1, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bo;->i:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-string v4, "SDCardTileCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bo;->c:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": Commit inserted "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tiles totaling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms. Number of tiles in DiskCache is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/bo;->g:Lcom/google/android/maps/driveabout/store/y;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/y;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
