.class Lcom/google/glass/maps/CnsMyGlassWaitingActivity$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/CnsMyGlassWaitingActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/CnsMyGlassWaitingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity$1;->a:Lcom/google/glass/maps/CnsMyGlassWaitingActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.google.glass.extra.STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity$1;->a:Lcom/google/glass/maps/CnsMyGlassWaitingActivity;

    iget-object v1, p0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity$1;->a:Lcom/google/glass/maps/CnsMyGlassWaitingActivity;

    invoke-static {v1}, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->a(Lcom/google/glass/maps/CnsMyGlassWaitingActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity$1;->a:Lcom/google/glass/maps/CnsMyGlassWaitingActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->finish()V

    :cond_0
    return-void
.end method
