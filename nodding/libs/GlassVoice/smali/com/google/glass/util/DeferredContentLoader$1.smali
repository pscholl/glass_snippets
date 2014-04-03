.class final Lcom/google/glass/util/DeferredContentLoader$1;
.super Ljava/lang/Object;
.source "DeferredContentLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/DeferredContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 107
    #calls: Lcom/google/glass/util/DeferredContentLoader;->executePendingTasks()V
    invoke-static {}, Lcom/google/glass/util/DeferredContentLoader;->access$000()V

    .line 108
    return-void
.end method
