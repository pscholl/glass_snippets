.class public Lcom/google/glass/bluetooth/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic a:Z

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Lcom/google/glass/logging/i;


# instance fields
.field private d:Landroid/bluetooth/BluetoothProfile;

.field private final e:Ljava/util/Set;

.field private final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/glass/bluetooth/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/bluetooth/e;->a:Z

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/e;->b:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/bluetooth/e;->b:Lcom/google/glass/logging/i;

    const-string v1, "stateChangeReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/e;->c:Lcom/google/glass/logging/i;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/bluetooth/e;->c:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/bluetooth/e;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/bluetooth/e;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/bluetooth/e;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/bluetooth/e;->e:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/bluetooth/e;->d:Landroid/bluetooth/BluetoothProfile;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/glass/bluetooth/a;->a()Lcom/google/glass/bluetooth/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/bluetooth/e;->d:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/bluetooth/a;->a(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_0
.end method
