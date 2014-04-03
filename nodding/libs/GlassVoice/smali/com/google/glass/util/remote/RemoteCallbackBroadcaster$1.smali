.class synthetic Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$1;
.super Ljava/lang/Object;
.source "RemoteCallbackBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$glass$util$remote$RemoteCallbackBroadcaster$BroadcastTo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->values()[Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$1;->$SwitchMap$com$google$glass$util$remote$RemoteCallbackBroadcaster$BroadcastTo:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$1;->$SwitchMap$com$google$glass$util$remote$RemoteCallbackBroadcaster$BroadcastTo:[I

    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->ALL:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    invoke-virtual {v1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$1;->$SwitchMap$com$google$glass$util$remote$RemoteCallbackBroadcaster$BroadcastTo:[I

    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->TOP_OF_STACK:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    invoke-virtual {v1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
