.class final Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RefeedingConfigChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    return-void
.end method


# virtual methods
.method public onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 7
    .parameter "from"
    .parameter "to"

    .prologue
    .line 201
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$400(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;

    move-result-object v2

    if-nez v2, :cond_0

    .line 236
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v2, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v3, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, p2, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v3, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v2, v3, :cond_2

    .line 206
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$500()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 219
    .local v1, refeedSnippet:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$600(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/util/CircularByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/util/CircularByteBuffer;->peekLast(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 220
    .local v0, bytesPeeked:I
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$500()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 221
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Refeed buffer only contained %d bytes of %d desired"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$500()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 226
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$400(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/voice/InterleavingInputStream;->interleave(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 227
    .end local v0           #bytesPeeked:I
    .end local v1           #refeedSnippet:Ljava/nio/ByteBuffer;
    :cond_2
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    if-ne p1, v2, :cond_3

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->NAVIGATION:Lcom/google/glass/voice/VoiceConfig;

    if-ne p2, v2, :cond_3

    .line 230
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceEngine;->refeedLastCommand()V

    goto :goto_0

    .line 234
    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$400(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/InterleavingInputStream;->dropInterleavingBuffer()V

    goto :goto_0
.end method
