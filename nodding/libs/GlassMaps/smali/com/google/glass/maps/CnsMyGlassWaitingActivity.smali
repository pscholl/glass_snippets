.class public Lcom/google/glass/maps/CnsMyGlassWaitingActivity;
.super Lcom/google/glass/app/GlassActivity;


# static fields
.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private c:Landroid/content/Intent;

.field private final d:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    new-instance v0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/CnsMyGlassWaitingActivity$1;-><init>(Lcom/google/glass/maps/CnsMyGlassWaitingActivity;)V

    iput-object v0, p0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->d:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/CnsMyGlassWaitingActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->c:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->CNS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->a(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->GPS_ENABLE_LOCAL:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->a(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "com.google.glass.extra.STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->b:Lcom/google/glass/logging/i;

    const-string v2, "Starting navigation without companion connection."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->b:Lcom/google/glass/logging/i;

    const-string v2, "Starting navigation without a paired device."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.glass.bluetooth.EXTRA_DEVICE"

    invoke-static {v1, v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->a()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    sget-object v1, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->b:Lcom/google/glass/logging/i;

    const-string v2, "Starting navigation without companion connection or multicast capable device."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "launchIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final d()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method protected final e()I
    .locals 1

    sget v0, Lcom/google/glass/maps/bo;->cns_myglass_waiting_activity:I

    return v0
.end method

.method protected final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->c:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->d:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->d:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/maps/CnsMyGlassWaitingActivity;->c:Landroid/content/Intent;

    return-void
.end method
