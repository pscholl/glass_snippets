.class Lcom/google/glass/fs/DirectoryTracker$1;
.super Ljava/lang/Object;
.source "DirectoryTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/fs/DirectoryTracker;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/fs/DirectoryTracker;


# direct methods
.method constructor <init>(Lcom/google/glass/fs/DirectoryTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker$1;->this$0:Lcom/google/glass/fs/DirectoryTracker;

    invoke-virtual {v0}, Lcom/google/glass/fs/DirectoryTracker;->start()Z

    .line 58
    return-void
.end method
