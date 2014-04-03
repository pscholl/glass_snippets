.class Lcom/google/glass/util/SafeServiceConnection$2;
.super Ljava/lang/Object;
.source "SafeServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/SafeServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/SafeServiceConnection;


# direct methods
.method constructor <init>(Lcom/google/glass/util/SafeServiceConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/glass/util/SafeServiceConnection$2;->this$0:Lcom/google/glass/util/SafeServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection$2;->this$0:Lcom/google/glass/util/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/glass/util/SafeServiceConnection$2;->this$0:Lcom/google/glass/util/SafeServiceConnection;

    #getter for: Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/google/glass/util/SafeServiceConnection;->access$000(Lcom/google/glass/util/SafeServiceConnection;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;Z)V

    .line 153
    return-void
.end method
