.class Lcom/google/glass/auth/AuthUtils$2;
.super Ljava/lang/Object;
.source "AuthUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/auth/AuthUtils;->restartSetupProcess(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/auth/AuthUtils;

.field final synthetic val$reboot:Z


# direct methods
.method constructor <init>(Lcom/google/glass/auth/AuthUtils;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/glass/auth/AuthUtils$2;->this$0:Lcom/google/glass/auth/AuthUtils;

    iput-boolean p2, p0, Lcom/google/glass/auth/AuthUtils$2;->val$reboot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    iget-object v1, p0, Lcom/google/glass/auth/AuthUtils$2;->this$0:Lcom/google/glass/auth/AuthUtils;

    #getter for: Lcom/google/glass/auth/AuthUtils;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/auth/AuthUtils;->access$200(Lcom/google/glass/auth/AuthUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 274
    iget-object v1, p0, Lcom/google/glass/auth/AuthUtils$2;->this$0:Lcom/google/glass/auth/AuthUtils;

    #getter for: Lcom/google/glass/auth/AuthUtils;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/auth/AuthUtils;->access$200(Lcom/google/glass/auth/AuthUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    iget-boolean v1, p0, Lcom/google/glass/auth/AuthUtils$2;->val$reboot:Z

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/google/glass/auth/AuthUtils$2;->this$0:Lcom/google/glass/auth/AuthUtils;

    #getter for: Lcom/google/glass/auth/AuthUtils;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/auth/AuthUtils;->access$200(Lcom/google/glass/auth/AuthUtils;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 280
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "restartSetupProcess"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 288
    .end local v0           #pm:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/google/glass/auth/AuthUtils$2;->this$0:Lcom/google/glass/auth/AuthUtils;

    #getter for: Lcom/google/glass/auth/AuthUtils;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/auth/AuthUtils;->access$200(Lcom/google/glass/auth/AuthUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/util/SetupHelper;->startSetup(Landroid/content/Context;)V

    goto :goto_0
.end method
