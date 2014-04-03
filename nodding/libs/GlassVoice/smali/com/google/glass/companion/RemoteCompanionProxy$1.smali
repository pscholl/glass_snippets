.class Lcom/google/glass/companion/RemoteCompanionProxy$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "RemoteCompanionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/RemoteCompanionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$1;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Got action: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    const-string v0, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-string v1, "com.google.glass.extra.STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$002(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 100
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-string v1, "com.google.glass.extra.COMPANION_REMOTE_VERSION"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$102(Lcom/google/glass/companion/RemoteCompanionProxy;I)I

    .line 101
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-string v1, "com.google.glass.extra.COMPANION_REMOTE_VERSION"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$202(Lcom/google/glass/companion/RemoteCompanionProxy;I)I

    .line 102
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$1;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "isConnected = %s, companionRemoteVersion = %s, companionLocalVersion = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z
    invoke-static {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$000(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I
    invoke-static {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$100(Lcom/google/glass/companion/RemoteCompanionProxy;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I
    invoke-static {v4}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$200(Lcom/google/glass/companion/RemoteCompanionProxy;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #calls: Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$300(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 106
    :cond_0
    return-void
.end method
