.class Lcom/google/glass/userevent/UserEventHelper$2;
.super Ljava/lang/Object;
.source "UserEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/userevent/UserEventHelper;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventHelper$2;->this$0:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventHelper$2;->this$0:Lcom/google/glass/userevent/UserEventHelper;

    #calls: Lcom/google/glass/userevent/UserEventHelper;->flushInternal()V
    invoke-static {v0}, Lcom/google/glass/userevent/UserEventHelper;->access$100(Lcom/google/glass/userevent/UserEventHelper;)V

    .line 163
    return-void
.end method
