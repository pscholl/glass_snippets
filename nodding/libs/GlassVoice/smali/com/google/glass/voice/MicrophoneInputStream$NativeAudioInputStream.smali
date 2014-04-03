.class final Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/MicrophoneInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NativeAudioInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/MicrophoneInputStream;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/MicrophoneInputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;->this$0:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/MicrophoneInputStream;Lcom/google/glass/voice/MicrophoneInputStream$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;-><init>(Lcom/google/glass/voice/MicrophoneInputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 81
    if-nez p2, :cond_1

    array-length v3, p1

    if-ne p3, v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;->this$0:Lcom/google/glass/voice/MicrophoneInputStream;

    #getter for: Lcom/google/glass/voice/MicrophoneInputStream;->audioInterface:Lcom/google/glass/voice/ConcurrentAudioInterface;
    invoke-static {v3}, Lcom/google/glass/voice/MicrophoneInputStream;->access$000(Lcom/google/glass/voice/MicrophoneInputStream;)Lcom/google/glass/voice/ConcurrentAudioInterface;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/voice/ConcurrentAudioInterface;->read([B)I

    move-result v0

    .line 86
    .local v0, readReturn:I
    if-ge v0, p3, :cond_0

    move v0, v2

    .line 101
    .end local v0           #readReturn:I
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    new-array v1, p3, [B

    .line 94
    .local v1, temp:[B
    iget-object v3, p0, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;->this$0:Lcom/google/glass/voice/MicrophoneInputStream;

    #getter for: Lcom/google/glass/voice/MicrophoneInputStream;->audioInterface:Lcom/google/glass/voice/ConcurrentAudioInterface;
    invoke-static {v3}, Lcom/google/glass/voice/MicrophoneInputStream;->access$000(Lcom/google/glass/voice/MicrophoneInputStream;)Lcom/google/glass/voice/ConcurrentAudioInterface;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/glass/voice/ConcurrentAudioInterface;->read([B)I

    move-result v0

    .line 96
    .restart local v0       #readReturn:I
    if-ge v0, p3, :cond_2

    move v0, v2

    .line 97
    goto :goto_0

    .line 100
    :cond_2
    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
