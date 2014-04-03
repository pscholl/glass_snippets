.class Lcom/google/glass/app/GlassActivity$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/app/GlassActivity;

.field private final b:Lcom/google/glass/logging/i;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/google/glass/app/GlassActivity$1;->a:Lcom/google/glass/app/GlassActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$1;->a:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "screenOffReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity$1;->b:Lcom/google/glass/logging/i;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$1;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$1;->a:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->finish()V

    return-void
.end method
