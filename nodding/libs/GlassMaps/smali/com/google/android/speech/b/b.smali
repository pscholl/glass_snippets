.class public final Lcom/google/android/speech/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/DataInputStream;

.field private final b:Lcom/google/android/speech/b/c;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/speech/b/b;->a:Ljava/io/DataInputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/b/b;->b:Lcom/google/android/speech/b/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/h/d/d;
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/b/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    if-lez v0, :cond_1

    const/high16 v1, 0x40

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/speech/b/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v1, Lcom/google/h/d/d;

    invoke-direct {v1}, Lcom/google/h/d/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/h/d/d;->b([B)Lcom/google/protobuf/micro/c;

    return-object v1
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/speech/b/b;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method
