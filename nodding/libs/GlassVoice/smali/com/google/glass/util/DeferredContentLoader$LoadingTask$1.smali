.class Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;
.super Landroid/os/AsyncTask;
.source "DeferredContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
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
        "TResult;>;"
    }
.end annotation


# instance fields
.field stopwatch:Lcom/google/glass/util/Stopwatch;

.field final synthetic this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;


# direct methods
.method constructor <init>(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    iput-object p1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 125
    new-instance v0, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->stopwatch:Lcom/google/glass/util/Stopwatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 132
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled:Lcom/google/glass/util/Condition;
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/Condition;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->stopwatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    .line 136
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    iget-object v1, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled:Lcom/google/glass/util/Condition;
    invoke-static {v1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final onCancelled(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 165
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->stop()V
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$200(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 166
    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask.1;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 142
    iget-object v4, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #calls: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->stop()V
    invoke-static {v4}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$200(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 145
    iget-object v4, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->isCancelled:Lcom/google/glass/util/Condition;
    invoke-static {v4}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$100(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Lcom/google/glass/util/Condition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/util/Condition;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    :goto_0
    return-void

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    iget-object v4, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->stopwatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v4}, Lcom/google/glass/util/Stopwatch;->stop()Lcom/google/glass/util/Stopwatch;

    .line 150
    iget-object v4, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->stopwatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v4}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v0

    .line 151
    .local v0, latency:J
    iget-object v4, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    #getter for: Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->access$300(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v4

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->DEFERRED_CONTENT_LOAD:Lcom/google/glass/userevent/UserEventAction;

    const-string v6, "t"

    iget-object v7, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-virtual {v7}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->getUserEventTag()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "l"

    aput-object v9, v8, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 156
    iget-object v4, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-virtual {v4, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->bindContent(Ljava/lang/Object;)V

    .line 159
    .end local v0           #latency:J
    :cond_1
    iget-object v4, p0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask$1;->this$0:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->notifyOnCompleted(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
