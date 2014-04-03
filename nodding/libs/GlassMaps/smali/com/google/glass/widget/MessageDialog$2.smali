.class Lcom/google/glass/widget/MessageDialog$2;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/n;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$2;->a:Lcom/google/glass/widget/n;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/widget/n;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$2;->a:Lcom/google/glass/widget/n;

    invoke-virtual {v0}, Lcom/google/glass/widget/n;->a()V

    :cond_0
    return-void
.end method
