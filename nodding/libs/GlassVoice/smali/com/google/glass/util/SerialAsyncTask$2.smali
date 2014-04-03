.class Lcom/google/glass/util/SerialAsyncTask$2;
.super Ljava/lang/Object;
.source "SerialAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/SerialAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/SerialAsyncTask;

.field final synthetic val$postLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/glass/util/SerialAsyncTask;Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    .local p0, this:Lcom/google/glass/util/SerialAsyncTask$2;,"Lcom/google/glass/util/SerialAsyncTask.2;"
    iput-object p1, p0, Lcom/google/glass/util/SerialAsyncTask$2;->this$0:Lcom/google/glass/util/SerialAsyncTask;

    iput-object p2, p0, Lcom/google/glass/util/SerialAsyncTask$2;->val$result:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/glass/util/SerialAsyncTask$2;->val$postLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    .local p0, this:Lcom/google/glass/util/SerialAsyncTask$2;,"Lcom/google/glass/util/SerialAsyncTask.2;"
    iget-object v0, p0, Lcom/google/glass/util/SerialAsyncTask$2;->this$0:Lcom/google/glass/util/SerialAsyncTask;

    iget-object v1, p0, Lcom/google/glass/util/SerialAsyncTask$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SerialAsyncTask;->serialOnPostExecute(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/util/SerialAsyncTask$2;->val$postLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 68
    return-void
.end method
