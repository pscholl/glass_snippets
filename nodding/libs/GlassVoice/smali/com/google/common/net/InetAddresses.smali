.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address; = null

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 118
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .locals 2
    .parameter "addr"

    .prologue
    .line 336
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 1
    .parameter "ip"

    .prologue
    .line 940
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .locals 7
    .parameter "hextets"

    .prologue
    .line 385
    const/4 v1, -0x1

    .line 386
    .local v1, bestRunStart:I
    const/4 v0, -0x1

    .line 387
    .local v0, bestRunLength:I
    const/4 v4, -0x1

    .line 388
    .local v4, runStart:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_3

    .line 389
    array-length v5, p0

    if-ge v2, v5, :cond_1

    aget v5, p0, v2

    if-nez v5, :cond_1

    .line 390
    if-gez v4, :cond_0

    .line 391
    move v4, v2

    .line 388
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_1
    if-ltz v4, :cond_0

    .line 394
    sub-int v3, v2, v4

    .line 395
    .local v3, runLength:I
    if-le v3, v0, :cond_2

    .line 396
    move v1, v4

    .line 397
    move v0, v3

    .line 399
    :cond_2
    const/4 v4, -0x1

    goto :goto_1

    .line 402
    .end local v3           #runLength:I
    :cond_3
    const/4 v5, 0x2

    if-lt v0, v5, :cond_4

    .line 403
    add-int v5, v1, v0

    const/4 v6, -0x1

    invoke-static {p0, v1, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 405
    :cond_4
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "ipString"

    .prologue
    const/4 v7, 0x0

    .line 291
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 292
    .local v2, lastColon:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, initialPart:Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, dottedQuad:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 295
    .local v4, quad:[B
    if-nez v4, :cond_0

    .line 296
    const/4 v6, 0x0

    .line 300
    :goto_0
    return-object v6

    .line 298
    :cond_0
    aget-byte v6, v4, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, penultimate:Ljava/lang/String;
    const/4 v6, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, ultimate:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static copy4([BI)[B
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    const/4 v2, 0x4

    .line 121
    new-array v0, v2, [B

    .line 122
    .local v0, result:[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    return-object v0
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 5
    .parameter "ipString"

    .prologue
    .line 154
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 157
    .local v0, addr:[B
    if-nez v0, :cond_0

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'%s\' is not an IP string literal."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 7
    .parameter "hostAddr"

    .prologue
    const/4 v5, 0x1

    .line 489
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v3, "["

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "]"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, ipString:Ljava/lang/String;
    const/16 v1, 0x10

    .line 503
    .local v1, expectBytes:I
    :goto_0
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 504
    .local v0, addr:[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eq v3, v1, :cond_2

    .line 505
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Not a valid URI IP literal: \'%s\'"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    .end local v0           #addr:[B
    .end local v1           #expectBytes:I
    .end local v2           #ipString:Ljava/lang/String;
    :cond_1
    move-object v2, p0

    .line 499
    .restart local v2       #ipString:Ljava/lang/String;
    const/4 v1, 0x4

    .restart local v1       #expectBytes:I
    goto :goto_0

    .line 509
    .restart local v0       #addr:[B
    :cond_2
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    return-object v3
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 1
    .parameter "address"

    .prologue
    .line 951
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 966
    array-length v2, p0

    new-array v1, v2, [B

    .line 967
    .local v1, reversed:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 968
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 967
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 970
    :cond_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .parameter "ip"

    .prologue
    .line 607
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->copy4([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 10
    .parameter "ip"

    .prologue
    const/16 v9, 0xf

    .line 874
    instance-of v7, p0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 875
    check-cast p0, Ljava/net/Inet4Address;

    .line 915
    .end local p0
    .local v2, bytes:[B
    .local v4, i:I
    .local v6, leadingBytesOfZero:Z
    :goto_0
    return-object p0

    .line 879
    .end local v2           #bytes:[B
    .end local v4           #i:I
    .end local v6           #leadingBytesOfZero:Z
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 880
    .restart local v2       #bytes:[B
    const/4 v6, 0x1

    .line 881
    .restart local v6       #leadingBytesOfZero:Z
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v9, :cond_1

    .line 882
    aget-byte v7, v2, v4

    if-eqz v7, :cond_2

    .line 883
    const/4 v6, 0x0

    .line 887
    :cond_1
    if-eqz v6, :cond_3

    aget-byte v7, v2, v9

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 888
    sget-object p0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    goto :goto_0

    .line 881
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 889
    :cond_3
    if-eqz v6, :cond_4

    aget-byte v7, v2, v9

    if-nez v7, :cond_4

    .line 890
    sget-object p0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    goto :goto_0

    :cond_4
    move-object v5, p0

    .line 893
    check-cast v5, Ljava/net/Inet6Address;

    .line 894
    .local v5, ip6:Ljava/net/Inet6Address;
    const-wide/16 v0, 0x0

    .line 895
    .local v0, addressAsLong:J
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 896
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Inet4Address;->hashCode()I

    move-result v7

    int-to-long v0, v7

    .line 904
    :goto_2
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32()Lcom/google/common/hash/HashFunction;

    move-result-object v7

    invoke-interface {v7, v0, v1}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v3

    .line 907
    .local v3, coercedHash:I
    const/high16 v7, -0x2000

    or-int/2addr v3, v7

    .line 911
    const/4 v7, -0x1

    if-ne v3, v7, :cond_5

    .line 912
    const/4 v3, -0x2

    .line 915
    :cond_5
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    goto :goto_0

    .line 900
    .end local v3           #coercedHash:I
    :cond_6
    invoke-virtual {v5}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v7, v8, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_2
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .parameter "ip"

    .prologue
    .line 574
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not IPv4-compatible."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->copy4([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .parameter "ip"

    .prologue
    .line 797
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 806
    :goto_0
    return-object v0

    .line 801
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_0

    .line 805
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_0

    .line 809
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'%s\' has no embedded IPv4 address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 5
    .parameter "bytes"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    array-length v0, p0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Byte array has invalid length for an IPv4 address: %s != 4."

    new-array v1, v1, [Ljava/lang/Object;

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    :cond_0
    move v0, v2

    .line 136
    goto :goto_0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .parameter "ip"

    .prologue
    .line 761
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 764
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->copy4([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .locals 13
    .parameter "ip"

    .prologue
    const v12, 0xffff

    .line 698
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v7

    const-string v8, "Address \'%s\' is not a Teredo address."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 701
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 702
    .local v0, bytes:[B
    const/4 v7, 0x4

    invoke-static {v0, v7}, Lcom/google/common/net/InetAddresses;->copy4([BI)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    .line 703
    .local v6, server:Ljava/net/Inet4Address;
    const/16 v7, 0x8

    invoke-static {v0, v7}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v7

    and-int v3, v7, v12

    .line 706
    .local v3, flags:I
    const/16 v7, 0xa

    invoke-static {v0, v7}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v7

    xor-int/lit8 v7, v7, -0x1

    and-int v5, v7, v12

    .line 708
    .local v5, port:I
    const/16 v7, 0xc

    invoke-static {v0, v7}, Lcom/google/common/net/InetAddresses;->copy4([BI)[B

    move-result-object v2

    .line 709
    .local v2, clientBytes:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 711
    aget-byte v7, v2, v4

    xor-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    aput-byte v7, v2, v4

    .line 709
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 713
    :cond_0
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v1

    .line 715
    .local v1, client:Ljava/net/Inet4Address;
    new-instance v7, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v7, v6, v1, v5, v3}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v7
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1
    .parameter "ip"

    .prologue
    .line 780
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .locals 5
    .parameter "hextets"

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 423
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 424
    .local v2, lastWasNumber:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_5

    .line 425
    aget v4, p0, v1

    if-ltz v4, :cond_2

    const/4 v3, 0x1

    .line 426
    .local v3, thisIsNumber:Z
    :goto_1
    if-eqz v3, :cond_3

    .line 427
    if-eqz v2, :cond_0

    .line 428
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    :cond_0
    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_1
    :goto_2
    move v2, v3

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v3           #thisIsNumber:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 432
    .restart local v3       #thisIsNumber:Z
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_1

    .line 433
    :cond_4
    const-string v4, "::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 438
    .end local v3           #thisIsNumber:Z
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 6
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 983
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 984
    .local v0, addr:[B
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 985
    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    aget-byte v2, v0, v1

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 986
    aput-byte v4, v0, v1

    .line 987
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 990
    :cond_0
    if-ltz v1, :cond_1

    move v2, v3

    :goto_1
    const-string v5, "Incrementing %s would wrap."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v5, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 992
    aget-byte v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 993
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2

    :cond_1
    move v2, v4

    .line 990
    goto :goto_1
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .parameter "ipString"

    .prologue
    const/4 v4, 0x0

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, hasColon:Z
    const/4 v2, 0x0

    .line 180
    .local v2, hasDot:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 181
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 182
    .local v0, c:C
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_1

    .line 183
    const/4 v2, 0x1

    .line 180
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/16 v5, 0x3a

    if-ne v0, v5, :cond_4

    .line 185
    if-eqz v2, :cond_3

    .line 206
    .end local v0           #c:C
    :cond_2
    :goto_2
    return-object v4

    .line 188
    .restart local v0       #c:C
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 189
    :cond_4
    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 195
    .end local v0           #c:C
    :cond_5
    if-eqz v1, :cond_7

    .line 196
    if-eqz v2, :cond_6

    .line 197
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    if-eqz p0, :cond_2

    .line 202
    :cond_6
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_2

    .line 203
    :cond_7
    if-eqz v2, :cond_2

    .line 204
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_2
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .parameter "ip"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 595
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 596
    .local v0, bytes:[B
    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .parameter "ip"

    .prologue
    const/16 v4, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 553
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v1

    .line 557
    :cond_1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 558
    .local v0, bytes:[B
    const/16 v3, 0xc

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    const/16 v3, 0xd

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    const/16 v3, 0xe

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    aget-byte v3, v0, v4

    if-eqz v3, :cond_0

    aget-byte v3, v0, v4

    if-eq v3, v2, :cond_0

    :cond_2
    move v1, v2

    .line 563
    goto :goto_0
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "ipString"

    .prologue
    .line 173
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 4
    .parameter "ip"

    .prologue
    const/4 v1, 0x0

    .line 737
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v1

    .line 741
    :cond_1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 743
    .local v0, bytes:[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 750
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_0

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .locals 5
    .parameter "ipString"

    .prologue
    const/4 v2, 0x0

    .line 836
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 837
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    array-length v3, v0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 838
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_2

    .line 839
    aget-byte v3, v0, v1

    if-eqz v3, :cond_1

    .line 850
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v2

    .line 838
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    :cond_2
    const/16 v1, 0xa

    :goto_2
    const/16 v3, 0xc

    if-ge v1, v3, :cond_3

    .line 844
    aget-byte v3, v0, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 848
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .locals 4
    .parameter "address"

    .prologue
    .line 1005
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1006
    .local v0, addr:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1007
    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1008
    const/4 v2, 0x0

    .line 1011
    :goto_1
    return v2

    .line 1006
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1011
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 5
    .parameter "ip"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 685
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 686
    .local v0, bytes:[B
    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v1

    if-ne v3, v1, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipString"

    .prologue
    .line 521
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    const/4 v1, 0x1

    .line 524
    :goto_0
    return v1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 2
    .parameter "ipPart"

    .prologue
    .line 316
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 317
    .local v0, hextet:I
    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 318
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 320
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .locals 3
    .parameter "ipPart"

    .prologue
    .line 305
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, octet:I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 309
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 311
    :cond_1
    int-to-byte v1, v0

    return v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 8
    .parameter "ipString"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x4

    .line 210
    const-string v5, "\\."

    const/4 v6, 0x5

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, address:[Ljava/lang/String;
    array-length v5, v0

    if-eq v5, v7, :cond_1

    move-object v1, v4

    .line 224
    :cond_0
    :goto_0
    return-object v1

    .line 215
    :cond_1
    new-array v1, v7, [B

    .line 217
    .local v1, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    :try_start_0
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 218
    aget-object v5, v0, v3

    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/NumberFormatException;
    move-object v1, v4

    .line 221
    goto :goto_0
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 12
    .parameter "ipString"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 229
    const-string v9, ":"

    const/16 v10, 0xa

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, parts:[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x3

    if-lt v9, v10, :cond_0

    array-length v9, v2

    const/16 v10, 0x9

    if-le v9, v10, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-object v8

    .line 236
    :cond_1
    const/4 v7, -0x1

    .line 237
    .local v7, skipIndex:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_3

    .line 238
    aget-object v9, v2, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 239
    if-gez v7, :cond_0

    .line 242
    move v7, v1

    .line 237
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    :cond_3
    if-ltz v7, :cond_7

    .line 250
    move v3, v7

    .line 251
    .local v3, partsHi:I
    array-length v9, v2

    sub-int/2addr v9, v7

    add-int/lit8 v4, v9, -0x1

    .line 252
    .local v4, partsLo:I
    aget-object v9, v2, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_0

    .line 255
    :cond_4
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_0

    .line 267
    :cond_5
    :goto_2
    add-int v9, v3, v4

    rsub-int/lit8 v5, v9, 0x8

    .line 268
    .local v5, partsSkipped:I
    if-ltz v7, :cond_8

    const/4 v9, 0x1

    if-lt v5, v9, :cond_0

    .line 273
    :cond_6
    const/16 v9, 0x10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 275
    .local v6, rawBytes:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_9

    .line 276
    :try_start_0
    aget-object v9, v2, v1

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 261
    .end local v3           #partsHi:I
    .end local v4           #partsLo:I
    .end local v5           #partsSkipped:I
    .end local v6           #rawBytes:Ljava/nio/ByteBuffer;
    :cond_7
    array-length v3, v2

    .line 262
    .restart local v3       #partsHi:I
    const/4 v4, 0x0

    .restart local v4       #partsLo:I
    goto :goto_2

    .line 268
    .restart local v5       #partsSkipped:I
    :cond_8
    if-eqz v5, :cond_6

    goto :goto_0

    .line 278
    .restart local v6       #rawBytes:Ljava/nio/ByteBuffer;
    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v5, :cond_a

    .line 279
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 281
    :cond_a
    move v1, v4

    :goto_5
    if-lez v1, :cond_b

    .line 282
    array-length v9, v2

    sub-int/2addr v9, v1

    aget-object v9, v2, v9

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 287
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_b
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    goto :goto_0
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6
    .parameter "ip"

    .prologue
    const/4 v5, 0x0

    .line 360
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    instance-of v3, p0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 363
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 372
    :goto_0
    return-object v3

    .line 365
    :cond_0
    instance-of v3, p0, Ljava/net/Inet6Address;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 366
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 367
    .local v0, bytes:[B
    const/16 v3, 0x8

    new-array v1, v3, [I

    .line 368
    .local v1, hextets:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 369
    mul-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    invoke-static {v5, v5, v3, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v3

    aput v3, v1, v2

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 371
    :cond_1
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 372
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .parameter "ip"

    .prologue
    .line 467
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
