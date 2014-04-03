.class final Lcom/google/glass/util/DeferredContentLoader$2;
.super Ljava/lang/Object;
.source "DeferredContentLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/DeferredContentLoader;->postLoadToUiThread(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;


# direct methods
.method constructor <init>(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/google/glass/util/DeferredContentLoader$2;->val$task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/glass/util/DeferredContentLoader$2;->val$task:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 646
    return-void
.end method
