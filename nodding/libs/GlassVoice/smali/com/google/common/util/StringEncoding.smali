.class public Lcom/google/common/util/StringEncoding;
.super Ljava/lang/Object;
.source "StringEncoding.java"


# annotations
.annotation build Lcom/google/common/util/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static buffer128:[B

.field private static buffer160:[B

.field private static random:Ljava/security/SecureRandom;
    .annotation build Lcom/google/common/util/GwtIncompatible;
        value = "java.security.SecureRandom"
    .end annotation
.end field


# instance fields
.field private final CHAR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final DIGITS:[C

.field private final MASK:I

.field private final SHIFT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/common/util/StringEncoding;->makeSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/StringEncoding;->random:Ljava/security/SecureRandom;

    .line 32
    const/16 v0, 0x14

    new-array v0, v0, [B

    sput-object v0, Lcom/google/common/util/StringEncoding;->buffer160:[B

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/google/common/util/StringEncoding;->buffer128:[B

    .line 228
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/StringEncoding;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .parameter "userDigits"

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/StringEncoding;-><init>([CZ)V

    .line 46
    return-void
.end method

.method constructor <init>([CZ)V
    .locals 13
    .parameter "userDigits"
    .parameter "sortDigits"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/google/common/util/StringEncoding;->CHAR_MAP:Ljava/util/Map;

    .line 54
    array-length v1, p1

    .line 55
    .local v1, base:I
    const/4 v9, 0x2

    if-lt v1, v9, :cond_0

    move v9, v10

    :goto_0
    const-string v12, "Too few digits"

    invoke-static {v9, v12}, Lcom/google/common/util/StringEncoding;->checkArgument(ZLjava/lang/String;)V

    .line 56
    const/16 v9, 0x100

    if-ge v1, v9, :cond_1

    move v9, v10

    :goto_1
    const-string v12, "Too many digits"

    invoke-static {v9, v12}, Lcom/google/common/util/StringEncoding;->checkArgument(ZLjava/lang/String;)V

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v9

    iput v9, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    .line 59
    iget v9, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    shl-int v9, v10, v9

    if-ne v9, v1, :cond_2

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not a power of 2: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/google/common/util/StringEncoding;->checkArgument(ZLjava/lang/String;)V

    .line 61
    add-int/lit8 v9, v1, -0x1

    iput v9, p0, Lcom/google/common/util/StringEncoding;->MASK:I

    .line 64
    if-eqz p2, :cond_3

    .line 65
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 69
    .local v8, t:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Character;>;"
    :goto_3
    move-object v0, p1

    .local v0, arr$:[C
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_4
    if-ge v6, v7, :cond_4

    aget-char v2, v0, v6

    .line 70
    .local v2, c:C
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate digit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/common/util/StringEncoding;->checkArgument(ZLjava/lang/String;)V

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v0           #arr$:[C
    .end local v2           #c:C
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #t:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Character;>;"
    :cond_0
    move v9, v11

    .line 55
    goto :goto_0

    :cond_1
    move v9, v11

    .line 56
    goto :goto_1

    :cond_2
    move v10, v11

    .line 59
    goto :goto_2

    .line 67
    :cond_3
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .restart local v8       #t:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Character;>;"
    goto :goto_3

    .line 73
    .restart local v0       #arr$:[C
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_4
    new-array v3, v1, [C

    .line 74
    .local v3, digits:[C
    const/4 v4, 0x0

    .line 75
    .local v4, i:I
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 76
    .restart local v2       #c:C
    iget-object v9, p0, Lcom/google/common/util/StringEncoding;->CHAR_MAP:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    aput-char v2, v3, v4

    move v4, v5

    .line 78
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_5

    .line 79
    .end local v2           #c:C
    :cond_5
    iput-object v3, p0, Lcom/google/common/util/StringEncoding;->DIGITS:[C

    .line 80
    return-void
.end method

.method private static checkArgument(ZLjava/lang/String;)V
    .locals 1
    .parameter "expression"
    .parameter "errorMessage"

    .prologue
    .line 231
    if-nez p0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    return-void
.end method

.method private static makeSecureRandom()Ljava/security/SecureRandom;
    .locals 2
    .annotation build Lcom/google/common/util/GwtIncompatible;
        value = "java.security.SecureRandom"
    .end annotation

    .prologue
    .line 85
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, ex:Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "encoded"
    .annotation build Lcom/google/common/util/GwtIncompatible;
        value = "java.util.String(byte[], Charset)"
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/util/StringEncoding;->decodeBinary(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/google/common/util/StringEncoding;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public decodeBinary(Ljava/lang/String;)[B
    .locals 14
    .parameter "encoded"

    .prologue
    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    .line 173
    const/4 v12, 0x0

    new-array v11, v12, [B

    .line 195
    :goto_0
    return-object v11

    .line 175
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 176
    .local v5, encodedLength:I
    iget v12, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    mul-int/2addr v12, v5

    div-int/lit8 v10, v12, 0x8

    .line 177
    .local v10, outLength:I
    new-array v11, v10, [B

    .line 178
    .local v11, result:[B
    const/4 v2, 0x0

    .line 179
    .local v2, buffer:I
    const/4 v8, 0x0

    .line 180
    .local v8, next:I
    const/4 v1, 0x0

    .line 181
    .local v1, bitsLeft:I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v9, v8

    .end local v8           #next:I
    .local v9, next:I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-char v3, v0, v6

    .line 182
    .local v3, c:C
    iget v12, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    shl-int/2addr v2, v12

    .line 183
    iget-object v12, p0, Lcom/google/common/util/StringEncoding;->CHAR_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 184
    .local v4, charIndex:Ljava/lang/Integer;
    if-nez v4, :cond_1

    .line 185
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 187
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget v13, p0, Lcom/google/common/util/StringEncoding;->MASK:I

    and-int/2addr v12, v13

    or-int/2addr v2, v12

    .line 188
    iget v12, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    add-int/2addr v1, v12

    .line 189
    const/16 v12, 0x8

    if-lt v1, v12, :cond_4

    .line 190
    add-int/lit8 v8, v9, 0x1

    .end local v9           #next:I
    .restart local v8       #next:I
    add-int/lit8 v12, v1, -0x8

    shr-int v12, v2, v12

    int-to-byte v12, v12

    aput-byte v12, v11, v9

    .line 191
    add-int/lit8 v1, v1, -0x8

    .line 181
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v9, v8

    .end local v8           #next:I
    .restart local v9       #next:I
    goto :goto_1

    .line 194
    .end local v3           #c:C
    .end local v4           #charIndex:Ljava/lang/Integer;
    :cond_2
    if-ne v9, v10, :cond_3

    iget v12, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    if-ge v1, v12, :cond_3

    const/4 v12, 0x1

    :goto_3
    invoke-static {v12, p1}, Lcom/google/common/util/StringEncoding;->checkArgument(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .restart local v3       #c:C
    .restart local v4       #charIndex:Ljava/lang/Integer;
    :cond_4
    move v8, v9

    .end local v9           #next:I
    .restart local v8       #next:I
    goto :goto_2
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "source"
    .annotation build Lcom/google/common/util/GwtIncompatible;
        value = "java.lang.String.getBytes()"
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lcom/google/common/util/StringEncoding;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/StringEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 10
    .parameter "data"

    .prologue
    .line 93
    array-length v8, p1

    if-nez v8, :cond_0

    .line 94
    const-string v8, ""

    .line 126
    :goto_0
    return-object v8

    .line 99
    :cond_0
    array-length v8, p1

    const/high16 v9, 0x1000

    if-lt v8, v9, :cond_1

    .line 101
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 103
    :cond_1
    array-length v8, p1

    mul-int/lit8 v8, v8, 0x8

    iget v9, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    div-int v5, v8, v9

    .line 104
    .local v5, outputLength:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    .local v7, result:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    aget-byte v1, p1, v8

    .line 107
    .local v1, buffer:I
    const/4 v3, 0x1

    .line 108
    .local v3, next:I
    const/16 v0, 0x8

    .local v0, bitsLeft:I
    move v4, v3

    .line 109
    .end local v3           #next:I
    .local v4, next:I
    :goto_1
    if-gtz v0, :cond_2

    array-length v8, p1

    if-ge v4, v8, :cond_4

    .line 110
    :cond_2
    iget v8, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    if-ge v0, v8, :cond_5

    .line 111
    array-length v8, p1

    if-ge v4, v8, :cond_3

    .line 112
    shl-int/lit8 v1, v1, 0x8

    .line 113
    add-int/lit8 v3, v4, 0x1

    .end local v4           #next:I
    .restart local v3       #next:I
    aget-byte v8, p1, v4

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v1, v8

    .line 114
    add-int/lit8 v0, v0, 0x8

    .line 121
    :goto_2
    iget v8, p0, Lcom/google/common/util/StringEncoding;->MASK:I

    iget v9, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    sub-int v9, v0, v9

    shr-int v9, v1, v9

    and-int v2, v8, v9

    .line 122
    .local v2, index:I
    iget v8, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    sub-int/2addr v0, v8

    .line 123
    iget-object v8, p0, Lcom/google/common/util/StringEncoding;->DIGITS:[C

    aget-char v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v3

    .line 124
    .end local v3           #next:I
    .restart local v4       #next:I
    goto :goto_1

    .line 116
    .end local v2           #index:I
    :cond_3
    iget v8, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    sub-int v6, v8, v0

    .line 117
    .local v6, pad:I
    shl-int/2addr v1, v6

    .line 118
    add-int/2addr v0, v6

    move v3, v4

    .end local v4           #next:I
    .restart local v3       #next:I
    goto :goto_2

    .line 126
    .end local v3           #next:I
    .end local v6           #pad:I
    .restart local v4       #next:I
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_5
    move v3, v4

    .end local v4           #next:I
    .restart local v3       #next:I
    goto :goto_2
.end method

.method public random128()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/google/common/util/GwtIncompatible;
        value = "java.security.SecureRandom"
    .end annotation

    .prologue
    .line 216
    const-class v1, Lcom/google/common/util/StringEncoding;

    monitor-enter v1

    .line 217
    :try_start_0
    sget-object v0, Lcom/google/common/util/StringEncoding;->random:Ljava/security/SecureRandom;

    sget-object v2, Lcom/google/common/util/StringEncoding;->buffer128:[B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 218
    sget-object v0, Lcom/google/common/util/StringEncoding;->buffer128:[B

    invoke-virtual {p0, v0}, Lcom/google/common/util/StringEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public random160()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/google/common/util/GwtIncompatible;
        value = "java.security.SecureRandom"
    .end annotation

    .prologue
    .line 207
    const-class v1, Lcom/google/common/util/StringEncoding;

    monitor-enter v1

    .line 208
    :try_start_0
    sget-object v0, Lcom/google/common/util/StringEncoding;->random:Ljava/security/SecureRandom;

    sget-object v2, Lcom/google/common/util/StringEncoding;->buffer160:[B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 209
    sget-object v0, Lcom/google/common/util/StringEncoding;->buffer160:[B

    invoke-virtual {p0, v0}, Lcom/google/common/util/StringEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unsafeDecodeBinary(Ljava/lang/String;)[B
    .locals 14
    .parameter "encoded"

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 142
    const/4 v12, 0x0

    new-array v10, v12, [B

    .line 167
    :cond_0
    return-object v10

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 145
    .local v4, encodedLength:I
    iget v12, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    mul-int/2addr v12, v4

    div-int/lit8 v9, v12, 0x8

    .line 146
    .local v9, outLength:I
    new-array v10, v9, [B

    .line 147
    .local v10, result:[B
    const/4 v2, 0x0

    .line 148
    .local v2, buffer:I
    const/4 v7, 0x0

    .line 149
    .local v7, next:I
    const/4 v1, 0x0

    .line 150
    .local v1, bitsLeft:I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v8, v7

    .end local v7           #next:I
    .local v8, next:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-char v3, v0, v5

    .line 154
    .local v3, c:C
    const/4 v11, -0x1

    .line 155
    .local v11, value:I
    iget-object v12, p0, Lcom/google/common/util/StringEncoding;->CHAR_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 156
    iget-object v12, p0, Lcom/google/common/util/StringEncoding;->CHAR_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 158
    :cond_2
    iget v12, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    shl-int/2addr v2, v12

    .line 159
    iget v12, p0, Lcom/google/common/util/StringEncoding;->MASK:I

    and-int/2addr v12, v11

    or-int/2addr v2, v12

    .line 160
    iget v12, p0, Lcom/google/common/util/StringEncoding;->SHIFT:I

    add-int/2addr v1, v12

    .line 161
    const/16 v12, 0x8

    if-lt v1, v12, :cond_3

    .line 162
    add-int/lit8 v7, v8, 0x1

    .end local v8           #next:I
    .restart local v7       #next:I
    add-int/lit8 v12, v1, -0x8

    shr-int v12, v2, v12

    int-to-byte v12, v12

    aput-byte v12, v10, v8

    .line 163
    add-int/lit8 v1, v1, -0x8

    .line 150
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v8, v7

    .end local v7           #next:I
    .restart local v8       #next:I
    goto :goto_0

    :cond_3
    move v7, v8

    .end local v8           #next:I
    .restart local v7       #next:I
    goto :goto_1
.end method
