.class Lcom/google/glass/app/VoiceMenuDialog$3;
.super Lcom/google/glass/input/VoiceListener$SimpleVoiceListener;
.source "VoiceMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/VoiceMenuDialog;->createVoiceInputHelper(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/input/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/VoiceMenuDialog;

.field final synthetic val$activity:Lcom/google/glass/app/GlassVoiceActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog$3;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    iput-object p2, p0, Lcom/google/glass/app/VoiceMenuDialog$3;->val$activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {p0}, Lcom/google/glass/input/VoiceListener$SimpleVoiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/google/glass/app/VoiceMenuDialog;->access$1000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$3;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/app/VoiceMenuDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 4
    .parameter "command"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$3;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->hasFocus:Z
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$900(Lcom/google/glass/app/VoiceMenuDialog;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/google/glass/app/VoiceMenuDialog$3;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Ignoring voice command because we don\'t have window focus."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    const/4 v0, 0x0

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$3;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 209
    .local v0, voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$3;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$400(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    move-result-object v1

    new-instance v2, Lcom/google/glass/app/VoiceMenuDialog$3$1;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/app/VoiceMenuDialog$3$1;-><init>(Lcom/google/glass/app/VoiceMenuDialog$3;Lcom/google/glass/voice/VoiceCommand;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onVoiceServiceConnected()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$3;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;
    invoke-static {v0}, Lcom/google/glass/app/VoiceMenuDialog;->access$800(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/input/VoiceInputHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$3;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$700(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 193
    return-void
.end method
