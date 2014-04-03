.class final Lcom/google/glass/util/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/util/aj;


# instance fields
.field final synthetic a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/ai;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/google/glass/util/ai;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/ai;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
