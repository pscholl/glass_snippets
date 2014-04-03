.class public Lcom/x/google/common/util/text/UriUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendEntryToStringBuffer(Ljava/lang/StringBuffer;Lcom/x/google/common/util/LinkedMultiHashtable$Entry;)V
    .locals 1

    invoke-virtual {p1}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public static isHttps(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static joinHttpHeader(Lcom/x/google/common/util/LinkedMultiHashtable;)Ljava/lang/String;
    .locals 2

    const-string v0, "; "

    const-string v1, "="

    invoke-virtual {p0, v0, v1}, Lcom/x/google/common/util/LinkedMultiHashtable;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitHttpHeaderParams(Ljava/lang/String;)Lcom/x/google/common/util/LinkedMultiHashtable;
    .locals 2

    const-string v0, ";"

    const-string v1, "="

    invoke-static {p0, v0, v1}, Lcom/x/google/common/util/LinkedMultiHashtable;->fromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/x/google/common/util/LinkedMultiHashtable;

    move-result-object v0

    return-object v0
.end method

.method public static splitUrlParams(Ljava/lang/String;)Lcom/x/google/common/util/LinkedMultiHashtable;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    const-string v0, "&"

    invoke-static {p0, v0}, Lcom/x/google/common/util/text/TextUtil;->splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v5, Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-direct {v5}, Lcom/x/google/common/util/LinkedMultiHashtable;-><init>()V

    move v0, v1

    :goto_1
    array-length v2, v6

    if-ge v0, v2, :cond_2

    aget-object v2, v6, v0

    const-string v4, "="

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_1

    aget-object v4, v6, v0

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aget-object v7, v6, v0

    const-string v8, "="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v2, v8

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v4}, Lcom/x/google/common/io/IoUtil;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lcom/x/google/common/util/LinkedMultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget-object v2, v6, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v3, v5

    goto :goto_0
.end method

.method public static urlJoin(Lcom/x/google/common/util/LinkedMultiHashtable;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/x/google/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    invoke-static {v2, v0}, Lcom/x/google/common/util/text/UriUtil;->appendEntryToStringBuffer(Ljava/lang/StringBuffer;Lcom/x/google/common/util/LinkedMultiHashtable$Entry;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    invoke-static {v2, v0}, Lcom/x/google/common/util/text/UriUtil;->appendEntryToStringBuffer(Ljava/lang/StringBuffer;Lcom/x/google/common/util/LinkedMultiHashtable$Entry;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
