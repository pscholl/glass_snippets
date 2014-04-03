.class public Lcom/x/google/common/io/LineReader;
.super Ljava/lang/Object;


# static fields
.field private static final EOF:I = -0x1

.field private static final SOF:I = -0x2


# instance fields
.field private c:I

.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/x/google/common/io/LineReader;->c:I

    iput-object p1, p0, Lcom/x/google/common/io/LineReader;->reader:Ljava/io/Reader;

    return-void
.end method

.method private static isLineTerminator(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    iget v0, p0, Lcom/x/google/common/io/LineReader;->c:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/x/google/common/io/LineReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lcom/x/google/common/io/LineReader;->c:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/x/google/common/io/LineReader;->c:I

    invoke-static {v0}, Lcom/x/google/common/io/LineReader;->isLineTerminator(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/x/google/common/io/LineReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lcom/x/google/common/io/LineReader;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/x/google/common/io/LineReader;->c:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    iget v1, p0, Lcom/x/google/common/io/LineReader;->c:I

    invoke-static {v1}, Lcom/x/google/common/io/LineReader;->isLineTerminator(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/x/google/common/io/LineReader;->c:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/x/google/common/io/LineReader;->c:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/io/LineReader;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    iput v1, p0, Lcom/x/google/common/io/LineReader;->c:I

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
