.class public Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
.super Ljava/lang/Object;
.source "BluetoothDeviceWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_BOND_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BOND_STATE_CHANGED"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISCOVERABLE_TIMEOUT_IN_SECONDS:I = 0x0

.field public static final EXTRA_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.BOND_STATE"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field private static final GOOGLE_BLUETOOTH_VENDOR_PREFIX_1:Ljava/lang/String; = "00:1A:11"

.field private static final GOOGLE_BLUETOOTH_VENDOR_PREFIX_2:Ljava/lang/String; = "F8:8F:CA"

.field private static final IDENTITY_PARCEL_UUID:Landroid/os/ParcelUuid; = null

.field public static final MYGLASS_CONNECTION_TYPE_MULTICAST:I = 0x2

.field public static final MYGLASS_CONNECTION_TYPE_RFCOMM:I = 0x1

.field public static final MYGLASS_CONNECTION_TYPE_UNKNOWN:I = 0x0

.field private static final WEARABLE_GLASSES_DEVICE_CLASS:I = 0x714

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private myGlassConnectionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    new-instance v0, Landroid/os/ParcelUuid;

    sget-object v1, Lcom/google/glass/bluetooth/BluetoothUuids;->IDENTITY_UUID:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->IDENTITY_PARCEL_UUID:Landroid/os/ParcelUuid;

    .line 268
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;

    invoke-direct {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;-><init>()V

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    .line 60
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static from(Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .parameter "device"

    .prologue
    .line 56
    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 300
    const-class v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 301
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object v0
.end method


# virtual methods
.method public addMyGlassConnectionType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 121
    iget v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    .line 124
    :cond_0
    iget v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    .line 125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createBond()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Lcom/google/glass/bluetooth/BluetoothSocket;
    .locals 2
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothSocket;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Lcom/google/glass/bluetooth/BluetoothSocket;
    .locals 2
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothSocket;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherDevice"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    if-ne p1, p0, :cond_1

    .line 232
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 224
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 225
    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/bluetooth/BluetoothDevice;

    if-ne v2, v3, :cond_4

    .line 229
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 232
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .end local p1
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public fetchUuidsWithSdp()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 197
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    return-object v0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getMyGlassConnectionType()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public hasMyGlassMulticastConnection()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNap()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 150
    .local v4, uuids:[Landroid/os/ParcelUuid;
    if-nez v4, :cond_2

    .line 151
    sget-object v7, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Don\'t have SDP records for %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-interface {v7, v8, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v5, v6

    .line 159
    :cond_1
    return v5

    .line 153
    :cond_2
    move-object v0, v4

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 154
    .local v3, uuid:Landroid/os/ParcelUuid;
    sget-object v7, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_NAP_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v7, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public isKnownAsGlassDevice()Z
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 112
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->IDENTITY_PARCEL_UUID:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPhone()Z
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 100
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProbablyKnownAsGlassDevice()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 74
    .local v2, uuids:[Landroid/os/ParcelUuid;
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, address:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->IDENTITY_PARCEL_UUID:Landroid/os/ParcelUuid;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v3

    .line 79
    :cond_1
    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 81
    .local v1, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    if-nez v1, :cond_2

    move v3, v4

    .line 82
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    and-int/lit16 v5, v5, 0x714

    const/16 v6, 0x714

    if-ne v5, v6, :cond_3

    const-string v5, "00:1A:11"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "F8:8F:CA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .end local v1           #bluetoothClass:Landroid/bluetooth/BluetoothClass;
    :cond_4
    move v3, v4

    .line 91
    goto :goto_0
.end method

.method public removeBond()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->removeBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, identity:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 250
    .end local v0           #identity:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 244
    .restart local v0       #identity:Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BONDED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BONDING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 264
    iget v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    return-void
.end method
