.class Lcom/google/glass/app/VoiceMenuDialog$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VoiceMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/app/VoiceMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/VoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/app/VoiceMenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog$1;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/google/glass/app/VoiceMenuDialog;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$1;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$400(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->isConnected()Z

    move-result v0

    .line 146
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$1;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->onConnectivityChanged(Z)V

    .line 147
    return-void
.end method
