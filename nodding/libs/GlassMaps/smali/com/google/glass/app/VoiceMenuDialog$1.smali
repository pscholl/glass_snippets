.class Lcom/google/glass/app/VoiceMenuDialog$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/app/m;


# direct methods
.method constructor <init>(Lcom/google/glass/app/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog$1;->a:Lcom/google/glass/app/m;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/app/m;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$1;->a:Lcom/google/glass/app/m;

    invoke-static {v0}, Lcom/google/glass/app/m;->b(Lcom/google/glass/app/m;)Lcom/google/glass/app/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/q;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$1;->a:Lcom/google/glass/app/m;

    invoke-static {v1}, Lcom/google/glass/app/m;->a(Lcom/google/glass/app/m;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Z)V

    return-void
.end method
