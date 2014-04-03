.class Lcom/google/glass/maps/BaseActivity$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/BaseActivity$1;->a:Lcom/google/glass/maps/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/BaseActivity$1;->a:Lcom/google/glass/maps/BaseActivity;

    invoke-static {v0}, Lcom/google/glass/maps/BaseActivity;->a(Lcom/google/glass/maps/BaseActivity;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/BaseActivity$1;->abortBroadcast()V

    return-void
.end method
