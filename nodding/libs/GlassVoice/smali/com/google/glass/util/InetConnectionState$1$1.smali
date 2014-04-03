.class Lcom/google/glass/util/InetConnectionState$1$1;
.super Landroid/os/AsyncTask;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/InetConnectionState$1;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/util/InetConnectionState$1;


# direct methods
.method constructor <init>(Lcom/google/glass/util/InetConnectionState$1;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/util/InetConnectionState$1$1;->this$1:Lcom/google/glass/util/InetConnectionState$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "params"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState$1$1;->this$1:Lcom/google/glass/util/InetConnectionState$1;

    iget-object v0, v0, Lcom/google/glass/util/InetConnectionState$1;->this$0:Lcom/google/glass/util/InetConnectionState;

    invoke-virtual {v0}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/InetConnectionState$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "isConnected"

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/google/glass/util/InetConnectionState$1$1;->this$1:Lcom/google/glass/util/InetConnectionState$1;

    iget-object v3, v3, Lcom/google/glass/util/InetConnectionState$1;->this$0:Lcom/google/glass/util/InetConnectionState;

    #getter for: Lcom/google/glass/util/InetConnectionState;->prevState:Z
    invoke-static {v3}, Lcom/google/glass/util/InetConnectionState;->access$000(Lcom/google/glass/util/InetConnectionState;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 70
    :cond_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/InetConnectionState$1$1;->this$1:Lcom/google/glass/util/InetConnectionState$1;

    iget-object v2, v2, Lcom/google/glass/util/InetConnectionState$1;->this$0:Lcom/google/glass/util/InetConnectionState;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #setter for: Lcom/google/glass/util/InetConnectionState;->prevState:Z
    invoke-static {v2, v3}, Lcom/google/glass/util/InetConnectionState;->access$002(Lcom/google/glass/util/InetConnectionState;Z)Z

    .line 67
    iget-object v2, p0, Lcom/google/glass/util/InetConnectionState$1$1;->this$1:Lcom/google/glass/util/InetConnectionState$1;

    iget-object v2, v2, Lcom/google/glass/util/InetConnectionState$1;->this$0:Lcom/google/glass/util/InetConnectionState;

    #getter for: Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/google/glass/util/InetConnectionState;->access$100(Lcom/google/glass/util/InetConnectionState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/InetConnectionState$Listener;

    .line 68
    .local v1, listener:Lcom/google/glass/util/InetConnectionState$Listener;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/glass/util/InetConnectionState$Listener;->onConnectivityChanged(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/InetConnectionState$1$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
