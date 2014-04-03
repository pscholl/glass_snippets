.class Lcom/google/glass/widget/ClockView$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/ClockView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/ClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/ClockView$1;->a:Lcom/google/glass/widget/ClockView;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/widget/ClockView;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ClockView$1;->a:Lcom/google/glass/widget/ClockView;

    invoke-static {v0}, Lcom/google/glass/widget/ClockView;->a(Lcom/google/glass/widget/ClockView;)V

    return-void
.end method
