.class public Lcom/google/android/speech/message/S3ResponseStream;
.super Ljava/lang/Object;
.source "S3ResponseStream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_FAKE_BROKEN:Z = false

.field private static final MAX_PACKET_LEN:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "S3ResponseStream"


# instance fields
.field private final mDis:Ljava/io/DataInputStream;

.field private final mFakeBrokenNetwork:Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/speech/message/S3ResponseStream;->mDis:Ljava/io/DataInputStream;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/message/S3ResponseStream;->mFakeBrokenNetwork:Lcom/google/android/speech/message/S3ResponseStream$FakeBrokenNetwork;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/speech/message/S3ResponseStream;->mDis:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 80
    return-void
.end method

.method public read()Lcom/google/speech/s3/S3$S3Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    :cond_0
    iget-object v3, p0, Lcom/google/android/speech/message/S3ResponseStream;->mDis:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, len:I
    if-eqz v1, :cond_0

    .line 55
    if-lez v1, :cond_1

    const/high16 v3, 0x40

    if-le v1, v3, :cond_2

    .line 56
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_2
    new-array v0, v1, [B

    .line 64
    .local v0, bytes:[B
    iget-object v3, p0, Lcom/google/android/speech/message/S3ResponseStream;->mDis:Ljava/io/DataInputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 65
    new-instance v2, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v2}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    .line 66
    .local v2, s3Response:Lcom/google/speech/s3/S3$S3Response;
    invoke-virtual {v2, v0}, Lcom/google/speech/s3/S3$S3Response;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    .line 74
    return-object v2
.end method
