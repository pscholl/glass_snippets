.class final Lcom/google/glass/util/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/IntentFilter;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/util/SafeBroadcastReceiver;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/bo;->d:Lcom/google/glass/util/SafeBroadcastReceiver;

    iput-object p2, p0, Lcom/google/glass/util/bo;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/util/bo;->b:Landroid/content/IntentFilter;

    iput-object p4, p0, Lcom/google/glass/util/bo;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/util/bo;->d:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/bo;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/util/bo;->b:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/google/glass/util/bo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
