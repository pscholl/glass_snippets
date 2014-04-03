.class Lcom/google/glass/userevent/UserEventHelper$1;
.super Ljava/lang/Object;
.source "UserEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventHelper;

.field final synthetic val$action:Lcom/google/glass/userevent/UserEventAction;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventHelper$1;->this$0:Lcom/google/glass/userevent/UserEventHelper;

    iput-object p2, p0, Lcom/google/glass/userevent/UserEventHelper$1;->val$action:Lcom/google/glass/userevent/UserEventAction;

    iput-object p3, p0, Lcom/google/glass/userevent/UserEventHelper$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventHelper$1;->this$0:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper$1;->val$action:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, p0, Lcom/google/glass/userevent/UserEventHelper$1;->val$data:Ljava/lang/String;

    #calls: Lcom/google/glass/userevent/UserEventHelper;->logInternal(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->access$000(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 133
    return-void
.end method
