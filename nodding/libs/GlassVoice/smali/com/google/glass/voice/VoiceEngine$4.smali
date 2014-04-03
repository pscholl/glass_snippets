.class Lcom/google/glass/voice/VoiceEngine$4;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
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
    .line 376
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$4;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$1300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$4;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #calls: Lcom/google/glass/voice/VoiceEngine;->isRequiredToRecompileGrammars(Landroid/content/Context;)Z
    invoke-static {v1, p1}, Lcom/google/glass/voice/VoiceEngine;->access$1200(Lcom/google/glass/voice/VoiceEngine;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$4;->this$0:Lcom/google/glass/voice/VoiceEngine;

    const-string v2, "Entity cache changed, recompiling grammar."

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceEngine;->invalidateGrammars(Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceEngine$4;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "The display names have not changed, so not recompiling grammars"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
