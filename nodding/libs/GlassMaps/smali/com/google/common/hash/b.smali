.class abstract Lcom/google/common/hash/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/hash/k;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lcom/google/common/hash/k;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/hash/b;->a(C)Lcom/google/common/hash/k;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/k;
    .locals 2

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Lcom/google/common/hash/Funnels;->a()Lcom/google/common/hash/Funnel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/hash/b;->a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lcom/google/common/hash/q;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/b;->a(Ljava/lang/CharSequence;)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method
