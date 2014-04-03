.class Lcom/google/glass/voice/PackagesChangedReceiver$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "PackagesChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/PackagesChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/PackagesChangedReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/PackagesChangedReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/voice/PackagesChangedReceiver$1;->this$0:Lcom/google/glass/voice/PackagesChangedReceiver;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/voice/PackagesChangedReceiver$1;->this$0:Lcom/google/glass/voice/PackagesChangedReceiver;

    invoke-virtual {v0}, Lcom/google/glass/voice/PackagesChangedReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/voice/PackagesChangedReceiver$1;->this$0:Lcom/google/glass/voice/PackagesChangedReceiver;

    invoke-virtual {v0}, Lcom/google/glass/voice/PackagesChangedReceiver;->onPackagesChanged()V

    .line 25
    return-void
.end method
