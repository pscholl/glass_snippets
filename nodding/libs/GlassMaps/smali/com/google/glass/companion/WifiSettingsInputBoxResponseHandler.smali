.class public Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;
.super Lcom/google/glass/companion/CompanionInputBoxResponseHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final encryption:Lcom/google/glass/util/WifiHelper$Encryption;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final ssid:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;-><init>()V

    iput-object p1, p0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->ssid:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    return-void
.end method


# virtual methods
.method protected handleCancelled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected handleTextTyped(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.companion.SETUP_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "wifi_setup_string"

    iget-object v2, p0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    invoke-static {v2, v3, p2}, Lcom/google/glass/util/bz;->a(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/glass/companion/WifiSettingsInputBoxResponseHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_BroadcastWakeLock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/BroadcastUnderWakeLock;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
