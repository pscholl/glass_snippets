.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;


# static fields
.field private static final a:[J

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/16 v5, -0x1

    const/16 v1, 0x25

    new-array v0, v1, [J

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->a:[J

    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->b:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->c:[I

    new-instance v1, Ljava/math/BigInteger;

    const-string v0, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x2

    :goto_0
    const/16 v2, 0x24

    if-gt v0, v2, :cond_0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->a:[J

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->b(JJ)J

    move-result-wide v3

    aput-wide v3, v2, v0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->b:[I

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->c(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v2, v0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->c:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(JJ)I
    .locals 4

    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->b(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->b(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->a(JJ)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)J
    .locals 7

    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/16 v0, 0x24

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs;->c:[I

    aget v0, v0, p1

    add-int/lit8 v3, v0, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-le v0, v3, :cond_4

    invoke-static {v1, v2, v4, p1}, Lcom/google/common/primitives/UnsignedLongs;->a(JII)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too large for unsigned long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    int-to-long v5, p1

    mul-long/2addr v1, v5

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->a(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JI)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/16 v0, 0x24

    if-gt p2, v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, p0, v6

    if-nez v0, :cond_1

    const-string v0, "0"

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x40

    new-array v3, v0, [C

    array-length v0, v3

    cmp-long v1, p0, v6

    if-gez v1, :cond_3

    int-to-long v1, p2

    invoke-static {p0, p1, v1, v2}, Lcom/google/common/primitives/UnsignedLongs;->b(JJ)J

    move-result-wide v1

    int-to-long v4, p2

    mul-long/2addr v4, v1

    sub-long v4, p0, v4

    add-int/lit8 v0, v0, -0x1

    long-to-int v4, v4

    invoke-static {v4, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v3, v0

    move-wide p0, v1

    move v1, v0

    :goto_2
    cmp-long v0, p0, v6

    if-lez v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    int-to-long v1, p2

    rem-long v1, p0, v1

    long-to-int v1, v1

    invoke-static {v1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, v3, v0

    int-to-long v1, p2

    div-long/2addr p0, v1

    move v1, v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private static a(JII)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->a:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->a:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->b:[I

    aget v2, v2, p3

    if-gt p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static b(J)J
    .locals 2

    const-wide/high16 v0, -0x8000

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static b(JJ)J
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    cmp-long v3, p2, v1

    if-gez v3, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v0

    if-gez v0, :cond_0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    cmp-long v1, p0, v1

    if-ltz v1, :cond_2

    div-long v0, p0, p2

    goto :goto_0

    :cond_2
    ushr-long v1, p0, v0

    div-long/2addr v1, p2

    shl-long/2addr v1, v0

    mul-long v3, v1, p2

    sub-long v3, p0, v3

    invoke-static {v3, v4, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v3

    if-ltz v3, :cond_3

    :goto_1
    int-to-long v3, v0

    add-long v0, v1, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c(JJ)J
    .locals 5

    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    sub-long/2addr p0, p2

    goto :goto_0

    :cond_1
    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    rem-long/2addr p0, p2

    goto :goto_0

    :cond_2
    ushr-long v2, p0, v4

    div-long/2addr v2, p2

    shl-long/2addr v2, v4

    mul-long/2addr v2, p2

    sub-long v2, p0, v2

    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v4

    if-ltz v4, :cond_3

    :goto_1
    sub-long p0, v2, p2

    goto :goto_0

    :cond_3
    move-wide p2, v0

    goto :goto_1
.end method
