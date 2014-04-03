.class public Lcom/x/google/masf/ByteArrayInputStreamProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/masf/InputStreamProvider;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/ByteArrayInputStreamProvider;->data:[B

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/x/google/masf/ByteArrayInputStreamProvider;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getStreamLength()I
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/ByteArrayInputStreamProvider;->data:[B

    array-length v0, v0

    return v0
.end method
