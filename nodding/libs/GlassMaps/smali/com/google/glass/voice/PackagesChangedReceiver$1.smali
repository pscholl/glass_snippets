.class Lcom/google/glass/voice/PackagesChangedReceiver$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/v;


# virtual methods
.method protected final a()Lcom/google/glass/logging/i;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/PackagesChangedReceiver$1;->a:Lcom/google/glass/voice/v;

    invoke-virtual {v0}, Lcom/google/glass/voice/v;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/PackagesChangedReceiver$1;->a:Lcom/google/glass/voice/v;

    invoke-virtual {v0}, Lcom/google/glass/voice/v;->b()V

    return-void
.end method
