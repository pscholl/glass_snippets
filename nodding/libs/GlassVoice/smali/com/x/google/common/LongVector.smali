.class public Lcom/x/google/common/LongVector;
.super Ljava/lang/Object;


# static fields
.field public static final CAPACITY_INCREMENT:I = 0x10

.field public static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private elements:[J

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    return-void
.end method

.method public static unmarshal([B)Lcom/x/google/common/LongVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer length not divisible by 8."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    div-int/lit8 v1, v0, 0x8

    new-instance v2, Lcom/x/google/common/LongVector;

    invoke-direct {v2, v1}, Lcom/x/google/common/LongVector;-><init>(I)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/x/google/common/LongVector;->addElement(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private verifyArrayIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public addElement(J)V
    .locals 3

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/x/google/common/LongVector;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/LongVector;->size:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    array-length v0, v0

    return v0
.end method

.method public contains(J)Z
    .locals 3

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public copyInto([J)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public elementAt(I)J
    .locals 2

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public ensureCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    array-length v0, v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    if-ge v0, p1, :cond_1

    :goto_0
    new-array v0, p1, [J

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v2, p0, Lcom/x/google/common/LongVector;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    :cond_0
    return-void

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method public firstElement()J
    .locals 2

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public indexOf(J)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public indexOf(JI)I
    .locals 3

    const/4 v0, -0x1

    invoke-direct {p0, p3}, Lcom/x/google/common/LongVector;->verifyArrayIndex(I)V

    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    if-lt p3, v1, :cond_1

    move p3, v0

    :goto_0
    return p3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    :cond_1
    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge p3, v1, :cond_2

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, p3

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_2
    move p3, v0

    goto :goto_0
.end method

.method public insertElementAt(JI)V
    .locals 4

    invoke-direct {p0, p3}, Lcom/x/google/common/LongVector;->verifyArrayIndex(I)V

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/x/google/common/LongVector;->ensureCapacity(I)V

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    sub-int/2addr v3, p3

    invoke-static {v0, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    aput-wide p1, v0, p3

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/google/common/LongVector;->size:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastElement()J
    .locals 2

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public lastIndexOf(J)I
    .locals 3

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public lastIndexOf(JI)I
    .locals 2

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-lt p3, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v0, v0, p3

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    :goto_0
    return p3

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_0

    const/4 p3, -0x1

    goto :goto_0
.end method

.method public marshal()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public max()J
    .locals 5

    invoke-virtual {p0}, Lcom/x/google/common/LongVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public min()J
    .locals 5

    invoke-virtual {p0}, Lcom/x/google/common/LongVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v1, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public removeAllElements()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/LongVector;->size:I

    return-void
.end method

.method public removeElement(J)Z
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    iget v1, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/x/google/common/LongVector;->size:I

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v4, p0, Lcom/x/google/common/LongVector;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeElementAt(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/x/google/common/LongVector;->size:I

    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setElementAt(JI)V
    .locals 1

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    if-lt p3, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    aput-wide p1, v0, p3

    return-void
.end method

.method public setSize(I)V
    .locals 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/x/google/common/LongVector;->ensureCapacity(I)V

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/x/google/common/LongVector;->size:I

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    return v0
.end method

.method public sum()J
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/x/google/common/LongVector;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/x/google/common/LongVector;->elements:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/x/google/common/LongVector;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/x/google/common/LongVector;->size:I

    new-array v0, v0, [J

    iget-object v1, p0, Lcom/x/google/common/LongVector;->elements:[J

    iget v2, p0, Lcom/x/google/common/LongVector;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/x/google/common/LongVector;->elements:[J

    :cond_0
    return-void
.end method
