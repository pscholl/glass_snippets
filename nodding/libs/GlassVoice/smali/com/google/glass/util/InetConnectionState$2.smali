.class Lcom/google/glass/util/InetConnectionState$2;
.super Landroid/os/AsyncTask;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/InetConnectionState;->addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V
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
.field final synthetic this$0:Lcom/google/glass/util/InetConnectionState;

.field final synthetic val$listener:Lcom/google/glass/util/InetConnectionState$Listener;


# direct methods
.method constructor <init>(Lcom/google/glass/util/InetConnectionState;Lcom/google/glass/util/InetConnectionState$Listener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/glass/util/InetConnectionState$2;->this$0:Lcom/google/glass/util/InetConnectionState;

    iput-object p2, p0, Lcom/google/glass/util/InetConnectionState$2;->val$listener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "params"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState$2;->this$0:Lcom/google/glass/util/InetConnectionState;

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
    .line 105
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/InetConnectionState$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "isConnected"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState$2;->this$0:Lcom/google/glass/util/InetConnectionState;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #setter for: Lcom/google/glass/util/InetConnectionState;->prevState:Z
    invoke-static {v0, v1}, Lcom/google/glass/util/InetConnectionState;->access$002(Lcom/google/glass/util/InetConnectionState;Z)Z

    .line 116
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState$2;->this$0:Lcom/google/glass/util/InetConnectionState;

    #getter for: Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/glass/util/InetConnectionState;->access$100(Lcom/google/glass/util/InetConnectionState;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/InetConnectionState$2;->val$listener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState$2;->val$listener:Lcom/google/glass/util/InetConnectionState$Listener;

    iget-object v1, p0, Lcom/google/glass/util/InetConnectionState$2;->this$0:Lcom/google/glass/util/InetConnectionState;

    #getter for: Lcom/google/glass/util/InetConnectionState;->prevState:Z
    invoke-static {v1}, Lcom/google/glass/util/InetConnectionState;->access$000(Lcom/google/glass/util/InetConnectionState;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/util/InetConnectionState$Listener;->onConnectivityChanged(Z)V

    .line 119
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/InetConnectionState$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
