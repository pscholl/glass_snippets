.class Lcom/google/glass/voice/VoiceEngine$17;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->cleanupSynchronously()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$17;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$17;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$2200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/CommandRecognizerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->unloadAll()V

    .line 802
    return-void
.end method
