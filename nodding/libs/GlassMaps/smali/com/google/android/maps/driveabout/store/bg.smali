.class final Lcom/google/android/maps/driveabout/store/bg;
.super Lcom/google/googlenav/datarequest/a;


# instance fields
.field a:Lcom/google/googlenav/common/io/b/a;

.field b:Lcom/google/android/maps/driveabout/store/bb;

.field final synthetic c:Lcom/google/android/maps/driveabout/store/be;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/store/be;Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bg;->c:Lcom/google/android/maps/driveabout/store/be;

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/bg;->a:Lcom/google/googlenav/common/io/b/a;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/bg;->b:Lcom/google/android/maps/driveabout/store/bb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/store/be;Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/bb;Lcom/google/android/maps/driveabout/store/bf;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/store/bg;-><init>(Lcom/google/android/maps/driveabout/store/be;Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/bb;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bg;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/google/i/a/a/b/w;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bg;->b:Lcom/google/android/maps/driveabout/store/bb;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/store/bb;->a(Lcom/google/googlenav/common/io/b/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bg;->b:Lcom/google/android/maps/driveabout/store/bb;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/bb;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/bg;->c:Lcom/google/android/maps/driveabout/store/be;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/store/be;->a(Lcom/google/android/maps/driveabout/store/be;)Lcom/google/android/maps/driveabout/store/u;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/store/u;->a(Lcom/google/googlenav/common/io/b/a;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bg;->b:Lcom/google/android/maps/driveabout/store/bb;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/bb;->h()V

    return-void
.end method
