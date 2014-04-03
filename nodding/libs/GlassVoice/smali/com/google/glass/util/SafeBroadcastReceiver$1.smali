.class Lcom/google/glass/util/SafeBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "SafeBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/SafeBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intentFilter:Landroid/content/IntentFilter;

.field final synthetic val$permission:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/util/SafeBroadcastReceiver;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->this$0:Lcom/google/glass/util/SafeBroadcastReceiver;

    iput-object p2, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->val$intentFilter:Landroid/content/IntentFilter;

    iput-object p4, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->val$permission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->this$0:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->val$intentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/google/glass/util/SafeBroadcastReceiver$1;->val$permission:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    return-void
.end method
