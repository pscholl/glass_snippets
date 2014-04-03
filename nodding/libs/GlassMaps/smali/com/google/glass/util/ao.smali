.class final Lcom/google/glass/util/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/util/aj;


# instance fields
.field final synthetic a:J

.field final synthetic b:[B

.field final synthetic c:Lcom/google/glass/util/al;


# direct methods
.method constructor <init>(Lcom/google/glass/util/al;J[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/ao;->c:Lcom/google/glass/util/al;

    iput-wide p2, p0, Lcom/google/glass/util/ao;->a:J

    iput-object p4, p0, Lcom/google/glass/util/ao;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/google/glass/util/ao;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/glass/util/ao;->a:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->b(J)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/glass/util/ao;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
