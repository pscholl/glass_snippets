.class Lcom/google/glass/widget/VolumeControlDialog$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VolumeControlDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/VolumeControlDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$1;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/google/glass/widget/VolumeControlDialog;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog$1;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$1;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {p2}, Lcom/google/glass/sound/VolumeHelper;->getHeadsetState(Landroid/content/Intent;)I

    move-result v1

    #calls: Lcom/google/glass/widget/VolumeControlDialog;->initSlider(I)V
    invoke-static {v0, v1}, Lcom/google/glass/widget/VolumeControlDialog;->access$000(Lcom/google/glass/widget/VolumeControlDialog;I)V

    .line 51
    :cond_0
    return-void
.end method
