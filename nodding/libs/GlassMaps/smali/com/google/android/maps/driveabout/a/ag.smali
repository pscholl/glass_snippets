.class final Lcom/google/android/maps/driveabout/a/ag;
.super Lcom/google/googlenav/datarequest/a;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/a/ad;

.field private final b:Ljava/util/Locale;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/maps/driveabout/a/ae;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/a/ad;Ljava/util/Locale;ILcom/google/android/maps/driveabout/a/ae;)V
    .locals 6

    invoke-static {p3}, Lcom/google/android/maps/driveabout/a/ad;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/a/ag;-><init>(Lcom/google/android/maps/driveabout/a/ad;Ljava/util/Locale;ILjava/lang/String;Lcom/google/android/maps/driveabout/a/ae;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/a/ad;Ljava/util/Locale;ILjava/lang/String;Lcom/google/android/maps/driveabout/a/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    iput p3, p0, Lcom/google/android/maps/driveabout/a/ag;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/a/ag;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/ag;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/a/ag;->c:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/a/ag;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/a/ag;)Lcom/google/android/maps/driveabout/a/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 4

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/w;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/file/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/ag;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/a/ae;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/google/i/a/a/b/w;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "CannedSpeechManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty response for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " voice bundle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    const-string v2, "CannedSpeechManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got a voice bundle for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    iget v3, p0, Lcom/google/android/maps/driveabout/a/ag;->c:I

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-static {v6}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ad;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/maps/driveabout/a/ae;->a(Ljava/util/Locale;IJLjava/lang/String;)Lcom/google/android/maps/driveabout/a/ae;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v0

    invoke-static {v3, p0, v2, v0}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;Lcom/google/android/maps/driveabout/a/ae;[B)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x130

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/ae;->h()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ad;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x194

    if-ne v2, v0, :cond_4

    const-string v0, "CannedSpeechManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get voice bundle for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;)V

    goto :goto_1

    :cond_4
    const-string v0, "CannedSpeechManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get voice bundle for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;)V

    goto :goto_1
.end method
