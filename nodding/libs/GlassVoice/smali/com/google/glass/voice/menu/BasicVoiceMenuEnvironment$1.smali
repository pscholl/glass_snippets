.class Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment$1;
.super Ljava/lang/Object;
.source "BasicVoiceMenuEnvironment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->showError(Lcom/google/glass/app/GlassError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;

.field final synthetic val$error:Lcom/google/glass/app/GlassError;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;Lcom/google/glass/app/GlassError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment$1;->this$0:Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;

    iput-object p2, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment$1;->val$error:Lcom/google/glass/app/GlassError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment$1;->val$error:Lcom/google/glass/app/GlassError;

    iget-object v1, p0, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment$1;->this$0:Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;

    #getter for: Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;
    invoke-static {v1}, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;->access$000(Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;)Lcom/google/glass/app/GlassVoiceActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 90
    return-void
.end method
