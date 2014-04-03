.class Lcom/google/glass/widget/ClockView$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/ClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/ClockView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/ClockView;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/glass/widget/ClockView$1;->this$0:Lcom/google/glass/widget/ClockView;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/widget/ClockView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/widget/ClockView$1;->this$0:Lcom/google/glass/widget/ClockView;

    #calls: Lcom/google/glass/widget/ClockView;->updateTime()V
    invoke-static {v0}, Lcom/google/glass/widget/ClockView;->access$000(Lcom/google/glass/widget/ClockView;)V

    .line 31
    return-void
.end method
