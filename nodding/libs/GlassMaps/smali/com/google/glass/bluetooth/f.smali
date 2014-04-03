.class public abstract Lcom/google/glass/bluetooth/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/UUID;

.field public static final b:Ljava/util/UUID;

.field public static final c:Landroid/os/ParcelUuid;

.field public static final d:Landroid/os/ParcelUuid;

.field public static final e:Landroid/os/ParcelUuid;

.field public static final f:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "f96647cf-7f25-4277-843d-f407b4192f8b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/f;->a:Ljava/util/UUID;

    const-string v0, "fafbdd20-83f0-4389-addf-917ac9dae5b1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/f;->b:Ljava/util/UUID;

    const-string v0, "00001116-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/f;->c:Landroid/os/ParcelUuid;

    const-string v0, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/f;->d:Landroid/os/ParcelUuid;

    const-string v0, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/f;->e:Landroid/os/ParcelUuid;

    const-string v0, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/f;->f:Landroid/os/ParcelUuid;

    return-void
.end method
