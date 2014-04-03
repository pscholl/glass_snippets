.class final Lcom/google/googlenav/datarequest/g;
.super Lcom/google/googlenav/datarequest/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/datarequest/g;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/datarequest/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/g;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/datarequest/g;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/DataRequestDispatcher;J)J

    iget-object v0, p0, Lcom/google/googlenav/datarequest/g;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->g(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public final c_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
