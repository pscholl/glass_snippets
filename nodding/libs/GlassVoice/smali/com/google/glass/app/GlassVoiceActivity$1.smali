.class Lcom/google/glass/app/GlassVoiceActivity$1;
.super Lcom/google/glass/app/DelegatingVoiceListener;
.source "GlassVoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/GlassVoiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassVoiceActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassVoiceActivity;Lcom/google/glass/input/VoiceListener;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/app/GlassVoiceActivity$1;->this$0:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {p0, p2}, Lcom/google/glass/app/DelegatingVoiceListener;-><init>(Lcom/google/glass/input/VoiceListener;)V

    return-void
.end method


# virtual methods
.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .parameter "command"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity$1;->this$0:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassVoiceActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity$1;->this$0:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassVoiceActivity;->isMessageShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity$1;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring voice command because we don\'t have window focus."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/DelegatingVoiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method
