.class Lcom/google/glass/voice/VoiceEngine$11;
.super Lcom/google/glass/voice/MicrophoneInputStream;
.source "VoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/glass/voice/MicrophoneInputStream;-><init>(Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    new-instance v1, Lcom/google/glass/voice/InterleavingInputStream;

    invoke-super {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->createInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/voice/InterleavingInputStream;-><init>(Ljava/io/InputStream;)V

    #setter for: Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;
    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->access$402(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/InterleavingInputStream;)Lcom/google/glass/voice/InterleavingInputStream;

    .line 594
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$11;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$400(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;

    move-result-object v0

    return-object v0
.end method
