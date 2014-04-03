.class Lcom/google/glass/voice/menu/VoiceMenuItem$1;
.super Ljava/lang/Object;
.source "VoiceMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenuItem;->trigger(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

.field final synthetic val$environment:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

.field final synthetic val$voiceInterface:Z


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$1;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$1;->val$environment:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    iput-boolean p3, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$1;->val$voiceInterface:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$1;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$1;->val$environment:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    iget-boolean v2, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$1;->val$voiceInterface:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->onTrigger(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V

    .line 129
    return-void
.end method
