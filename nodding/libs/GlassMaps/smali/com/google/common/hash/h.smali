.class final Lcom/google/common/hash/h;
.super Lcom/google/common/hash/a;


# instance fields
.field final synthetic a:Lcom/google/common/hash/ChecksumHashFunction;

.field private final b:Ljava/util/zip/Checksum;


# direct methods
.method private constructor <init>(Lcom/google/common/hash/ChecksumHashFunction;Ljava/util/zip/Checksum;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/hash/h;->a:Lcom/google/common/hash/ChecksumHashFunction;

    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Checksum;

    iput-object v0, p0, Lcom/google/common/hash/h;->b:Ljava/util/zip/Checksum;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/hash/ChecksumHashFunction;Ljava/util/zip/Checksum;Lcom/google/common/hash/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/h;-><init>(Lcom/google/common/hash/ChecksumHashFunction;Ljava/util/zip/Checksum;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/hash/i;
    .locals 4

    iget-object v0, p0, Lcom/google/common/hash/h;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/common/hash/h;->a:Lcom/google/common/hash/ChecksumHashFunction;

    #getter for: Lcom/google/common/hash/ChecksumHashFunction;->bits:I
    invoke-static {v2}, Lcom/google/common/hash/ChecksumHashFunction;->access$100(Lcom/google/common/hash/ChecksumHashFunction;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/google/common/hash/HashCodes;->a(I)Lcom/google/common/hash/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/hash/HashCodes;->a(J)Lcom/google/common/hash/i;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(B)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/h;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    return-void
.end method

.method protected final a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/h;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    return-void
.end method
