.class Lcom/google/glass/entity/EntityCache$11$1;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityCache$11;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/entity/EntityCache$11;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache$11;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$11$1;->this$1:Lcom/google/glass/entity/EntityCache$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 288
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received broadcast that entity db changed, reloading entity cache."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$11$1;->this$1:Lcom/google/glass/entity/EntityCache$11;

    iget-object v0, v0, Lcom/google/glass/entity/EntityCache$11;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityCache;->loadEntityDataCache()V

    .line 290
    return-void
.end method
