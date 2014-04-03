.class Lcom/google/glass/voice/VoiceEngine$6;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;


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
    .line 410
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$6;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTriggerCacheUpdated()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$6;->this$0:Lcom/google/glass/voice/VoiceEngine;

    const-string v1, "Packages changed, recompiling grammars."

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->invalidateGrammars(Ljava/lang/String;)V

    .line 414
    return-void
.end method
