.class Lcom/google/glass/voice/CommandRecognizerLoader$1;
.super Ljava/lang/Object;
.source "CommandRecognizerLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/CommandRecognizerLoader;->loadAsync(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/CommandRecognizerLoader;

.field final synthetic val$voiceConfig:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/CommandRecognizerLoader;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/voice/CommandRecognizerLoader$1;->this$0:Lcom/google/glass/voice/CommandRecognizerLoader;

    iput-object p2, p0, Lcom/google/glass/voice/CommandRecognizerLoader$1;->val$voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader$1;->this$0:Lcom/google/glass/voice/CommandRecognizerLoader;

    iget-object v1, p0, Lcom/google/glass/voice/CommandRecognizerLoader$1;->val$voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    .line 74
    return-void
.end method
