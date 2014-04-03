.class final Lcom/google/glass/input/VoiceInputHelper$1;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/google/glass/input/VoiceInputHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 113
    invoke-static {}, Lcom/google/glass/input/VoiceInputHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "VoiceService connected"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {p2}, Lcom/google/glass/voice/IVoiceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceService;

    move-result-object v2

    sput-object v2, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    .line 116
    invoke-static {}, Lcom/google/glass/input/VoiceInputHelper;->access$100()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    .line 117
    .local v1, listener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
    #calls: Lcom/google/glass/input/VoiceInputHelper;->addVoiceServiceListener(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)V
    invoke-static {v1}, Lcom/google/glass/input/VoiceInputHelper;->access$200(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)V

    goto :goto_0

    .line 119
    .end local v1           #listener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
    :cond_0
    return-void
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "name"
    .parameter "isError"

    .prologue
    .line 123
    invoke-static {}, Lcom/google/glass/input/VoiceInputHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "VoiceService disconnected."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lcom/google/glass/input/VoiceInputHelper;->access$100()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    .line 125
    .local v1, listener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
    invoke-virtual {v1}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->onVoiceServiceDisconnected()V

    goto :goto_0

    .line 127
    .end local v1           #listener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
    :cond_0
    return-void
.end method
