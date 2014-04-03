.class public Lcom/x/google/common/io/HttpRequestDesc;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_URL_SCHEME:Ljava/lang/String; = "http://"

.field private static final HTTP_HEADER_SEPARATOR:Ljava/lang/String; = ";"

.field private static final USER_INFO_HEADER:[Ljava/lang/String;


# instance fields
.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private final httpHeaders:Ljava/util/Vector;

.field private path:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Geo-Position"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Cookie"

    aput-object v2, v0, v1

    sput-object v0, Lcom/x/google/common/io/HttpRequestDesc;->USER_INFO_HEADER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/io/HttpRequestDesc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    new-instance v0, Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-direct {v0}, Lcom/x/google/common/util/LinkedMultiHashtable;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    iget-object v0, p1, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    iget-object v0, p1, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    iget-object v0, p1, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    iget-object v0, p1, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/x/google/common/io/HttpRequestDesc;->addHttpHeaders(Ljava/util/Vector;)V

    iget-object v0, p1, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-virtual {v0}, Lcom/x/google/common/util/LinkedMultiHashtable;->clone()Lcom/x/google/common/util/LinkedMultiHashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    new-instance v0, Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-direct {v0}, Lcom/x/google/common/util/LinkedMultiHashtable;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/x/google/common/io/HttpRequestDesc;->url:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/x/google/common/io/HttpRequestDesc;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/x/google/debug/Log;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    goto :goto_0
.end method

.method private addHttpHeaders(Ljava/lang/StringBuffer;)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v3, v0, v2

    invoke-direct {p0, p1, v3}, Lcom/x/google/common/io/HttpRequestDesc;->filterHttpHeader(Ljava/lang/StringBuffer;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-virtual {v1}, Lcom/x/google/common/util/LinkedMultiHashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-static {v1}, Lcom/x/google/common/util/text/UriUtil;->urlJoin(Lcom/x/google/common/util/LinkedMultiHashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private equalsHttpHeaders(Ljava/util/Vector;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    aget-object v5, v0, v2

    aget-object v6, v0, v3

    invoke-static {v4, v5, v6}, Lcom/x/google/common/io/HttpRequestDesc;->getHttpHeaderNum(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aget-object v5, v0, v2

    aget-object v0, v0, v3

    invoke-static {p1, v5, v0}, Lcom/x/google/common/io/HttpRequestDesc;->getHttpHeaderNum(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private filterHttpHeader(Ljava/lang/StringBuffer;Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/x/google/common/io/HttpRequestDesc;->isHttpHeaderFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v3, Lcom/x/google/common/io/HttpRequestDesc;->USER_INFO_HEADER:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/x/google/common/io/HttpRequestDesc;->USER_INFO_HEADER:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "X"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/x/google/common/io/HttpRequestDesc;->USER_INFO_HEADER:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "=XXXX"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getHttpHeaderNum(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v3
.end method

.method private parse(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x3f

    const/16 v3, 0x23

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    :cond_0
    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/x/google/common/io/HttpRequestDesc;->parseHostPath(Ljava/lang/String;II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "http://"

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/x/google/common/io/HttpRequestDesc;->parseHostPath(Ljava/lang/String;II)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/x/google/common/io/HttpRequestDesc;->parseParams(Ljava/lang/String;II)V

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->fragment:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private parseHostPath(Ljava/lang/String;II)V
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ge v0, p3, :cond_0

    if-lez v0, :cond_0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseParams(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/util/text/UriUtil;->splitUrlParams(Ljava/lang/String;)Lcom/x/google/common/util/LinkedMultiHashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    return-void
.end method


# virtual methods
.method public addHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addHttpHeaders(Ljava/util/Vector;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsParam(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-virtual {v0, p1}, Lcom/x/google/common/util/LinkedMultiHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/x/google/common/io/HttpRequestDesc;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/x/google/common/io/HttpRequestDesc;

    iget-object v1, p1, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-direct {p0, v1}, Lcom/x/google/common/io/HttpRequestDesc;->equalsHttpHeaders(Ljava/util/Vector;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    iget-object v2, p1, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-virtual {v1, v2}, Lcom/x/google/common/util/LinkedMultiHashtable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    iget-object v2, p1, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/x/google/common/util/text/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    iget-object v2, p1, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/x/google/common/util/text/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/x/google/common/util/text/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/x/google/common/io/HttpRequestDesc;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/x/google/common/util/text/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHttpHeaders()Ljava/util/Hashtable;
    .locals 7

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v0, v3

    const-string v6, "Cookie"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v1, v0, v3

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    aget-object v0, v0, v3

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/HttpRequestDesc;->containsParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-virtual {v0, p1}, Lcom/x/google/common/util/LinkedMultiHashtable;->get(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/x/google/common/io/HttpRequestDesc;->buildUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->url:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getUrlForceRebuild()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/x/google/common/io/HttpRequestDesc;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/x/google/common/io/HttpRequestDesc;->fragment:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-virtual {v1}, Lcom/x/google/common/util/LinkedMultiHashtable;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/x/google/common/io/HttpRequestDesc;->fragment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method protected isHttpHeaderFilterEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setParam(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/common/io/HttpRequestDesc;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-virtual {v0, p1}, Lcom/x/google/common/util/LinkedMultiHashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-virtual {v0, p1}, Lcom/x/google/common/util/LinkedMultiHashtable;->remove(Ljava/lang/Object;)Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->urlParams:Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/x/google/common/util/LinkedMultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->url:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/x/google/common/io/HttpRequestDesc;->path:Ljava/lang/String;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "http://"

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/common/io/HttpRequestDesc;->url:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/x/google/common/io/HttpRequestDesc;->scheme:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
