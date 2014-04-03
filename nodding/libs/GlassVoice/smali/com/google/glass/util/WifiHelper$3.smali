.class Lcom/google/glass/util/WifiHelper$3;
.super Ljava/lang/Object;
.source "WifiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/WifiHelper;->connect(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/WifiHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper$3;->this$0:Lcom/google/glass/util/WifiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lcom/google/glass/util/WifiHelper;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Saving configuration..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$3;->this$0:Lcom/google/glass/util/WifiHelper;

    #getter for: Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->access$000(Lcom/google/glass/util/WifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 310
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$3;->this$0:Lcom/google/glass/util/WifiHelper;

    #getter for: Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->access$000(Lcom/google/glass/util/WifiHelper;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 311
    return-void
.end method
