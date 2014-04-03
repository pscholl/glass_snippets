.class Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;
.super Lcom/google/glass/voice/PackagesChangedReceiver;
.source "NativeAppVoiceMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->subscribeToPackageChanges(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;->this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-direct {p0}, Lcom/google/glass/voice/PackagesChangedReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onPackagesChanged()V
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Installed packages changed; invalidating trigger cache"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;->this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    #getter for: Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$100(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    iget-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;->this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    #getter for: Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->updateListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$200(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    .line 60
    .local v1, listener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;
    invoke-interface {v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;->onTriggerCacheUpdated()V

    goto :goto_0

    .line 62
    .end local v1           #listener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;
    :cond_0
    return-void
.end method
