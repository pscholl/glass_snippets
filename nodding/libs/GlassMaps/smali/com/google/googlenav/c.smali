.class public final Lcom/google/googlenav/c;
.super Lcom/google/googlenav/datarequest/a;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Lcom/google/googlenav/d;

.field private final c:Lcom/google/googlenav/common/io/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CFRR"

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/c;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/c;->b:Lcom/google/googlenav/d;

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/g;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    iput-object v0, p0, Lcom/google/googlenav/c;->c:Lcom/google/googlenav/common/io/b/a;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x49

    return v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/c;->c:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    return-void
.end method

.method public final a(II)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/g;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {v0, v2, p1}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    iget-object v1, p0, Lcom/google/googlenav/c;->c:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->c:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/b/a;->b()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/google/googlenav/c;->c:Lcom/google/googlenav/common/io/b/a;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/c;->b:Lcom/google/googlenav/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c;->b:Lcom/google/googlenav/d;

    invoke-interface {v0, p1}, Lcom/google/googlenav/d;->a(Ljava/io/DataInput;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 4

    sget-object v0, Lcom/google/googlenav/c;->a:Lcom/google/glass/logging/i;

    const-string v1, "%s Adding to the DRD queue...."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ClientFeatureRestrictionsRequest"

    return-object v0
.end method
