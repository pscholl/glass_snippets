.class Lcom/google/glass/app/VoiceMenuDialog$3$1;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/VoiceMenuDialog$3;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/app/VoiceMenuDialog$3;

.field final synthetic val$command:Lcom/google/glass/voice/VoiceCommand;


# direct methods
.method constructor <init>(Lcom/google/glass/app/VoiceMenuDialog$3;Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog$3$1;->this$1:Lcom/google/glass/app/VoiceMenuDialog$3;

    iput-object p2, p0, Lcom/google/glass/app/VoiceMenuDialog$3$1;->val$command:Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$3$1;->this$1:Lcom/google/glass/app/VoiceMenuDialog$3;

    iget-object v0, v0, Lcom/google/glass/app/VoiceMenuDialog$3;->val$activity:Lcom/google/glass/app/GlassVoiceActivity;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$3$1;->val$command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassVoiceActivity;->onVoiceMenuCommand(Lcom/google/glass/voice/VoiceCommand;)V

    .line 215
    return-void
.end method
