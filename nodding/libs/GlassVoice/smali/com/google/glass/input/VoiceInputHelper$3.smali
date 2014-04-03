.class Lcom/google/glass/input/VoiceInputHelper$3;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/VoiceInputHelper;->getResultingConfig(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/VoiceInputHelper;

.field final synthetic val$command:Lcom/google/glass/voice/VoiceCommand;

.field final synthetic val$handled:Z

.field final synthetic val$observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;


# direct methods
.method constructor <init>(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;Lcom/google/glass/voice/VoiceCommand;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper$3;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    iput-object p2, p0, Lcom/google/glass/input/VoiceInputHelper$3;->val$observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    iput-object p3, p0, Lcom/google/glass/input/VoiceInputHelper$3;->val$command:Lcom/google/glass/voice/VoiceCommand;

    iput-boolean p4, p0, Lcom/google/glass/input/VoiceInputHelper$3;->val$handled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$3;->val$observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper$3;->val$command:Lcom/google/glass/voice/VoiceCommand;

    iget-boolean v2, p0, Lcom/google/glass/input/VoiceInputHelper$3;->val$handled:Z

    invoke-interface {v0, v1, v2}, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Z)V

    .line 544
    return-void
.end method
