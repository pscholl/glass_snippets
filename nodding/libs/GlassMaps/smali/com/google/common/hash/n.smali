.class final Lcom/google/common/hash/n;
.super Lcom/google/common/hash/a;


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:I

.field private c:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/hash/a;-><init>()V

    iput-object p1, p0, Lcom/google/common/hash/n;->a:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/google/common/hash/n;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/common/hash/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/n;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/common/hash/n;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot use Hasher after calling #hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/common/hash/i;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/hash/n;->c:Z

    iget v0, p0, Lcom/google/common/hash/n;->b:I

    iget-object v1, p0, Lcom/google/common/hash/n;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/n;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCodes;->a([B)Lcom/google/common/hash/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/common/hash/n;->b:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/common/hash/n;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/n;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/google/common/hash/HashCodes;->a([B)Lcom/google/common/hash/i;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/hash/n;->b()V

    iget-object v0, p0, Lcom/google/common/hash/n;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method protected final a([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/hash/n;->b()V

    iget-object v0, p0, Lcom/google/common/hash/n;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method protected final a([BII)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/hash/n;->b()V

    iget-object v0, p0, Lcom/google/common/hash/n;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
