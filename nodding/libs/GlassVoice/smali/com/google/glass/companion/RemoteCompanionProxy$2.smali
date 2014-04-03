.class Lcom/google/glass/companion/RemoteCompanionProxy$2;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 114
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "binder"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected to %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {p2}, Lcom/google/glass/companion/IRemoteCompanionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/companion/IRemoteCompanionService;

    move-result-object v1

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$602(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;

    .line 130
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$800(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;
    invoke-static {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$700(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/app/Application;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #calls: Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$300(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 133
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$602(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;

    .line 119
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$800(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;
    invoke-static {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$700(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z
    invoke-static {v0, v4}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$002(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 123
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #calls: Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$300(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 124
    return-void
.end method
