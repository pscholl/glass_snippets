.class public abstract Lcom/google/glass/bluetooth/BluetoothUuids;
.super Ljava/lang/Object;
.source "BluetoothUuids.java"


# static fields
.field public static final BLUETOOTH_HANDSFREE_AUDIO_GATEWAY_UUID:Landroid/os/ParcelUuid; = null

.field public static final BLUETOOTH_HANDSFREE_UUID:Landroid/os/ParcelUuid; = null

.field public static final BLUETOOTH_HEADSET_UUID:Landroid/os/ParcelUuid; = null

.field public static final BLUETOOTH_NAP_UUID:Landroid/os/ParcelUuid; = null

.field public static final IDENTITY_SDP_NAME:Ljava/lang/String; = "Glass Identity"

.field public static final IDENTITY_UUID:Ljava/util/UUID; = null

.field public static final PROXY_SDP_NAME:Ljava/lang/String; = "Glass Proxy"

.field public static final PROXY_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "f96647cf-7f25-4277-843d-f407b4192f8b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->IDENTITY_UUID:Ljava/util/UUID;

    .line 16
    const-string v0, "fafbdd20-83f0-4389-addf-917ac9dae5b1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->PROXY_UUID:Ljava/util/UUID;

    .line 19
    const-string v0, "00001116-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_NAP_UUID:Landroid/os/ParcelUuid;

    .line 22
    const-string v0, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_HEADSET_UUID:Landroid/os/ParcelUuid;

    .line 25
    const-string v0, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_HANDSFREE_UUID:Landroid/os/ParcelUuid;

    .line 28
    const-string v0, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_HANDSFREE_AUDIO_GATEWAY_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
