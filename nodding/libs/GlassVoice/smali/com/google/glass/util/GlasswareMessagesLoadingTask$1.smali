.class final Lcom/google/glass/util/GlasswareMessagesLoadingTask$1;
.super Ljava/lang/Object;
.source "GlasswareMessagesLoadingTask.java"

# interfaces
.implements Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(JLcom/google/glass/util/GlasswareMessagesLoadingTask;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$loadLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$ref:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask$1;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask$1;->val$loadLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessagesLoaded(Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;)V
    .locals 1
    .parameter "messages"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask$1;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask$1;->val$loadLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 187
    return-void
.end method
