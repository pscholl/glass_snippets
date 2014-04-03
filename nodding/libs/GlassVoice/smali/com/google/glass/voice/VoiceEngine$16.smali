.class Lcom/google/glass/voice/VoiceEngine$16;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->invalidateGrammars(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$16;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceEngine$16;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 721
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$16;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$16;->this$0:Lcom/google/glass/voice/VoiceEngine;

    const/4 v1, 0x1

    #calls: Lcom/google/glass/voice/VoiceEngine;->compileDynamicGrammars(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->access$2100(Lcom/google/glass/voice/VoiceEngine;Z)V

    .line 723
    return-void
.end method
