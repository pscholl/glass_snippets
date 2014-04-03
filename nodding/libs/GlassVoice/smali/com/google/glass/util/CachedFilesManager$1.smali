.class Lcom/google/glass/util/CachedFilesManager$1;
.super Ljava/lang/Object;
.source "CachedFilesManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/CachedFilesManager;


# direct methods
.method constructor <init>(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/glass/util/CachedFilesManager$1;->this$0:Lcom/google/glass/util/CachedFilesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager$1;->this$0:Lcom/google/glass/util/CachedFilesManager;

    #calls: Lcom/google/glass/util/CachedFilesManager;->setupFileBookkeeping()V
    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->access$100(Lcom/google/glass/util/CachedFilesManager;)V

    .line 179
    return-void
.end method
