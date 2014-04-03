.class public final Lcom/google/glass/companion/ah;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Landroid/content/IntentFilter;


# instance fields
.field private final c:Lcom/google/glass/companion/ai;

.field private final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/ah;->a:Lcom/google/glass/logging/i;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/companion/ah;->b:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/companion/ah;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/companion/ah;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/companion/ah;->d:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/companion/ah;->d:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/companion/ah;->a:Lcom/google/glass/logging/i;

    const-string v1, "looking for addresses %s but it got %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/companion/ah;->d:Ljava/util/Set;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/ah;->d:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/glass/companion/ah;->c:Lcom/google/glass/companion/ai;

    goto :goto_0
.end method
