.class public Lcom/google/android/speech/utils/NetworkInformation;
.super Ljava/lang/Object;
.source "NetworkInformation.java"


# static fields
.field public static final ERROR_VALUE:I = -0x1

.field public static final MISSING_TELEPHONY_RESULT:[I


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V
    .locals 0
    .parameter "telephonyManager"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "connectivityManager"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 31
    iput-object p2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 32
    return-void
.end method

.method private static tryParse(Ljava/lang/String;I)I
    .locals 1
    .parameter "string"
    .parameter "defaultIfError"

    .prologue
    .line 212
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 214
    .end local p1
    :goto_0
    return p1

    .line 213
    .restart local p1
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public getConnectionId()I
    .locals 7

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 109
    iget-object v6, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    iget-object v6, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 115
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move v1, v5

    .line 116
    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v2, :cond_4

    move v1, v2

    .line 120
    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 124
    const/16 v1, 0x13

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 128
    const/16 v1, 0x11

    goto :goto_0

    .line 131
    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v6, 0x9

    if-ne v2, v6, :cond_7

    .line 132
    const/16 v1, 0x12

    goto :goto_0

    .line 135
    :cond_7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_8

    .line 136
    iget-object v2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v5

    .line 187
    goto :goto_0

    .line 142
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 145
    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    .line 148
    :pswitch_2
    const/4 v1, 0x4

    goto :goto_0

    .line 151
    :pswitch_3
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_4
    move v1, v3

    .line 154
    goto :goto_0

    :pswitch_5
    move v1, v4

    .line 157
    goto :goto_0

    .line 160
    :pswitch_6
    const/16 v1, 0x8

    goto :goto_0

    .line 163
    :pswitch_7
    const/16 v1, 0x9

    goto :goto_0

    .line 166
    :pswitch_8
    const/16 v1, 0xa

    goto :goto_0

    .line 169
    :pswitch_9
    const/16 v1, 0xb

    goto :goto_0

    .line 172
    :pswitch_a
    const/16 v1, 0xc

    goto :goto_0

    .line 175
    :pswitch_b
    const/16 v1, 0xd

    goto :goto_0

    .line 178
    :pswitch_c
    const/16 v1, 0xe

    goto :goto_0

    .line 181
    :pswitch_d
    const/16 v1, 0xf

    goto :goto_0

    .line 184
    :pswitch_e
    const/16 v1, 0x10

    goto :goto_0

    :cond_8
    move v1, v5

    .line 191
    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public getDeviceCountryCode()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 199
    const-string v1, ""

    .line 206
    :goto_0
    return-object v1

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, simCountryIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const-string v1, ""

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNetworkMccMnc()[I
    .locals 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x3

    .line 65
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 66
    sget-object v1, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    .line 74
    :goto_0
    return-object v1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, mccMnc:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 71
    :cond_1
    sget-object v1, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    goto :goto_0

    .line 74
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/speech/utils/NetworkInformation;->tryParse(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    const/4 v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/android/speech/utils/NetworkInformation;->tryParse(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method public getSimMcc()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, -0x1

    .line 38
    iget-object v2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, simOperator:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/speech/utils/NetworkInformation;->tryParse(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getSimMccMnc()[I
    .locals 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x3

    .line 86
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 87
    sget-object v1, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    .line 95
    :goto_0
    return-object v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/utils/NetworkInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, mccMnc:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 92
    :cond_1
    sget-object v1, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    goto :goto_0

    .line 95
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/speech/utils/NetworkInformation;->tryParse(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    const/4 v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/android/speech/utils/NetworkInformation;->tryParse(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/utils/NetworkInformation;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 56
    .local v0, ni:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
