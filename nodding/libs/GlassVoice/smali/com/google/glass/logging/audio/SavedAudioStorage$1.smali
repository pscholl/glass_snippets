.class Lcom/google/glass/logging/audio/SavedAudioStorage$1;
.super Ljava/lang/Object;
.source "SavedAudioStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/audio/SavedAudioStorage;->storeAudio(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/audio/SavedAudioStorage;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enabledLabs:Ljava/util/List;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$hotwordResults:Ljava/util/List;

.field final synthetic val$sampleRate:J


# direct methods
.method constructor <init>(Lcom/google/glass/logging/audio/SavedAudioStorage;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->this$0:Lcom/google/glass/logging/audio/SavedAudioStorage;

    iput-object p2, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$filename:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$hotwordResults:Ljava/util/List;

    iput-wide p5, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$sampleRate:J

    iput-object p7, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$enabledLabs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->this$0:Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$filename:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$hotwordResults:Ljava/util/List;

    iget-wide v4, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$sampleRate:J

    iget-object v6, p0, Lcom/google/glass/logging/audio/SavedAudioStorage$1;->val$enabledLabs:Ljava/util/List;

    #calls: Lcom/google/glass/logging/audio/SavedAudioStorage;->storeAudioBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    invoke-static/range {v0 .. v6}, Lcom/google/glass/logging/audio/SavedAudioStorage;->access$000(Lcom/google/glass/logging/audio/SavedAudioStorage;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v7

    .line 180
    .local v7, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to store audio"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
