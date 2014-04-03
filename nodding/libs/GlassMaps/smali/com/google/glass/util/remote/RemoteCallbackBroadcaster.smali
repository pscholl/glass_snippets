.class public abstract Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->a:Lcom/google/glass/logging/i;

    return-void
.end method
