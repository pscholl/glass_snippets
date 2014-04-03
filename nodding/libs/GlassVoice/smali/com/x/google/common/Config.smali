.class public abstract Lcom/x/google/common/Config;
.super Ljava/lang/Object;


# static fields
.field private static ADS_CLIENT:Ljava/lang/String; = null

.field private static final ADS_CLIENT_COUNTRY_CODE_TOKEN:Ljava/lang/String; = "COUNTRY_CODE"

.field protected static ALT_ARROWS_ENABLED:Z = false

.field protected static ALT_DOWN:I = 0x0

.field protected static ALT_LEFT:I = 0x0

.field private static ALT_NUMBER_KEYS:[I = null

.field protected static ALT_RIGHT:I = 0x0

.field protected static ALT_UP:I = 0x0

.field public static final BUILD_NUMBER:Ljava/lang/String; = "1000"

.field private static CARRIER:Ljava/lang/String; = null

.field protected static final CONFIG_SOURCE:Ljava/lang/String; = "CONFIG"

.field private static DISTRIBUTION_CHANNEL:Ljava/lang/String; = null

.field public static final FAKE_KEY_RANGE:I = -0x2706

.field public static KEY_BACK:I = 0x0

.field public static KEY_CLEAR:I = 0x0

.field public static KEY_MENU:I = 0x0

.field public static KEY_OK:I = 0x0

.field public static KEY_POUND:I = 0x0

.field public static KEY_SIDE_DOWN:I = 0x0

.field public static KEY_SIDE_SELECT:I = 0x0

.field public static KEY_SIDE_UP:I = 0x0

.field public static KEY_SOFT_LEFT:I = 0x0

.field public static KEY_SOFT_MIDDLE:I = 0x0

.field public static KEY_SOFT_RIGHT:I = 0x0

.field public static KEY_STAR:I = 0x0

.field public static KEY_TALK:I = 0x0

.field public static KEY_VOICE_SEARCH:I = 0x0

.field public static final NETWORK_CDMA:Ljava/lang/String; = "CDMA"

.field public static final NETWORK_EDGE:Ljava/lang/String; = "EDGE"

.field public static final NETWORK_GPRS:Ljava/lang/String; = "GPRS"

.field public static final NETWORK_UMTS:Ljava/lang/String; = "UMTS"

.field public static final NETWORK_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final NETWORK_WIFI:Ljava/lang/String; = "WiFi"

.field public static QWERTY_KEYBOARD:Z = false

.field static final RESOURCE_SIGNATURE_AND_VERSION:I = 0xfab2

.field public static REVERSE_SOFTKEYS:Z = false

.field public static final SIGNAL_LOW:I = 0x3

.field public static final SIGNAL_NONE:I = -0x1

.field public static SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z = false

.field public static SOFTKEY_HEIGHT:I = 0x0

.field public static final STANDARD_SCREEN_DPI:I = 0xa0

.field public static final UNKNOWN:I = -0x270f

.field public static USE_NATIVE_COMMANDS:Z = false

.field public static USE_NATIVE_MENUS:Z = false

.field public static final VALUE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static instance:Lcom/x/google/common/Config;

.field private static jpegTested:Z

.field private static supportsJpeg:Z


# instance fields
.field private final applicationStartTime:J

.field private final clock:Lcom/x/google/common/Clock;

.field private countryCode:Ljava/lang/String;

.field private i18n:Lcom/x/google/common/I18n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, -0x270f

    sput v1, Lcom/x/google/common/Config;->KEY_BACK:I

    sput v1, Lcom/x/google/common/Config;->KEY_SOFT_LEFT:I

    sput v1, Lcom/x/google/common/Config;->KEY_SOFT_MIDDLE:I

    sput v1, Lcom/x/google/common/Config;->KEY_SOFT_RIGHT:I

    const/16 v0, 0x2a

    sput v0, Lcom/x/google/common/Config;->KEY_STAR:I

    const/16 v0, 0x23

    sput v0, Lcom/x/google/common/Config;->KEY_POUND:I

    sput v1, Lcom/x/google/common/Config;->KEY_MENU:I

    sput v1, Lcom/x/google/common/Config;->KEY_OK:I

    sput v1, Lcom/x/google/common/Config;->KEY_TALK:I

    sput v1, Lcom/x/google/common/Config;->KEY_VOICE_SEARCH:I

    sput v1, Lcom/x/google/common/Config;->KEY_CLEAR:I

    sput v1, Lcom/x/google/common/Config;->KEY_SIDE_UP:I

    sput v1, Lcom/x/google/common/Config;->KEY_SIDE_DOWN:I

    sput v1, Lcom/x/google/common/Config;->KEY_SIDE_SELECT:I

    sput v1, Lcom/x/google/common/Config;->ALT_UP:I

    sput v1, Lcom/x/google/common/Config;->ALT_DOWN:I

    sput v1, Lcom/x/google/common/Config;->ALT_LEFT:I

    sput v1, Lcom/x/google/common/Config;->ALT_RIGHT:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/x/google/common/Config;->ALT_ARROWS_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/x/google/common/Config;->countryCode:Ljava/lang/String;

    new-instance v0, Lcom/x/google/common/GenericClock;

    invoke-direct {v0}, Lcom/x/google/common/GenericClock;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/Config;->clock:Lcom/x/google/common/Clock;

    iget-object v0, p0, Lcom/x/google/common/Config;->clock:Lcom/x/google/common/Clock;

    invoke-interface {v0}, Lcom/x/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/x/google/common/Config;->applicationStartTime:J

    return-void
.end method

.method public static getAppProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    invoke-virtual {v0, p1}, Lcom/x/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBooleanProperty(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    invoke-virtual {v0, p1, p2}, Lcom/x/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCarrier()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/x/google/common/Config;->CARRIER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDigit(I)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getDistributionChannel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/x/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/x/google/common/Config;
    .locals 1

    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    return-object v0
.end method

.method public static getIntProperty(Ljava/lang/Object;Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    invoke-virtual {v0, p1, p2}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLocale()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/x/google/common/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    iget-object v0, v0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    invoke-virtual {v0}, Lcom/x/google/common/I18n;->getUiLocale()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSystemLocale()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/x/google/common/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    iget-object v0, v0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    invoke-virtual {v0}, Lcom/x/google/common/I18n;->getSystemLocale()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAlphanumeric(I)Z
    .locals 1

    invoke-static {p0}, Lcom/x/google/common/Config;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/x/google/common/Config;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaVersion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDigit(I)Z
    .locals 2

    invoke-static {p0}, Lcom/x/google/common/Config;->getDigit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapanLocale()Z
    .locals 2

    invoke-static {}, Lcom/x/google/common/Config;->getLocale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLetter(I)Z
    .locals 3

    const/4 v0, 0x0

    if-lez p0, :cond_1

    const v1, 0xffff

    if-gt p0, v1, :cond_1

    int-to-char v1, p0

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isRTL()Z
    .locals 1

    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    iget-object v0, v0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    invoke-virtual {v0}, Lcom/x/google/common/I18n;->isRTL()Z

    move-result v0

    return v0
.end method

.method public static loadStringResourcesFromDataInput(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    iget-object v0, v0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    invoke-virtual {v0, p0, p1, p2}, Lcom/x/google/common/I18n;->loadStringResourcesFromDataInput(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadStringResourcesFromInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    iget-object v0, v0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    invoke-virtual {v0, p0, p1, p2}, Lcom/x/google/common/I18n;->loadStringResourcesFromInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static localizedRemoteString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    iget-object v0, v0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    invoke-virtual {v0, p0}, Lcom/x/google/common/I18n;->getRemoteLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static localizedString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/x/google/common/Config;->getLocale()Ljava/lang/String;

    sget-object v0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    iget-object v0, v0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    invoke-virtual {v0, p0}, Lcom/x/google/common/I18n;->getEmbeddedLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAltArrowKeys(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/x/google/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/x/google/common/Config;->ALT_ARROWS_ENABLED:Z

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Lcom/x/google/common/Config;->ALT_UP:I

    aget v1, v0, v2

    sput v1, Lcom/x/google/common/Config;->ALT_LEFT:I

    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, Lcom/x/google/common/Config;->ALT_DOWN:I

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, Lcom/x/google/common/Config;->ALT_RIGHT:I

    :cond_0
    return-void
.end method

.method private static parseAltKeys(ILjava/lang/String;)[I
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-array v1, p0, [I

    move v3, v2

    :goto_1
    const-string v4, ","

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v4, p0, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CONFIG"

    invoke-static {v2, v1}, Lcom/x/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "CONFIG"

    invoke-static {v2, v1}, Lcom/x/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static parseAltNumberKeys(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0}, Lcom/x/google/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/x/google/common/Config;->ALT_NUMBER_KEYS:[I

    return-void
.end method

.method public static setConfig(Lcom/x/google/common/Config;)V
    .locals 0

    sput-object p0, Lcom/x/google/common/Config;->instance:Lcom/x/google/common/Config;

    return-void
.end method


# virtual methods
.method public assertNotOnUiThread()V
    .locals 0

    return-void
.end method

.method public assertOnUiThread()V
    .locals 0

    return-void
.end method

.method public convertDpToPx(I)I
    .locals 4

    int-to-double v0, p1

    invoke-virtual {p0}, Lcom/x/google/common/Config;->getScreenDensityScale()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/x/google/common/util/MathUtil;->round(D)I

    move-result v0

    return v0
.end method

.method public createAudioPlayer()Lcom/x/google/common/media/AudioPlayer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdsClient()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/x/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    const-string v1, "COUNTRY_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/x/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/x/google/common/Config;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/x/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    const-string v3, "COUNTRY_CODE"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/x/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getAdsClientInternal()Ljava/lang/String;
    .locals 1

    const-string v0, "AdsClient"

    invoke-virtual {p0, v0}, Lcom/x/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAppProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final getApplicationStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/x/google/common/Config;->applicationStartTime:J

    return-wide v0
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/x/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    :cond_0
    :goto_0
    return p2

    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getClock()Lcom/x/google/common/Clock;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/Config;->clock:Lcom/x/google/common/Clock;

    return-object v0
.end method

.method public abstract getConnectionFactory()Lcom/x/google/common/io/HttpConnectionFactory;
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/Config;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormatter()Lcom/x/google/common/DateFormatter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .locals 1

    const-string v0, "DistributionChannel"

    invoke-virtual {p0, v0}, Lcom/x/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFontFactory()Lcom/x/google/common/graphics/FontFactory;
.end method

.method public abstract getGameAction(Ljava/lang/Object;I)I
.end method

.method protected getI18n()Lcom/x/google/common/I18n;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    return-object v0
.end method

.method public abstract getImageFactory()Lcom/x/google/common/graphics/ImageFactory;
.end method

.method public abstract getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getIntProperty(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/x/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMinTouchablePixels()I
    .locals 1

    invoke-virtual {p0}, Lcom/x/google/common/Config;->isPointerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNativeDateTimeFieldFactory()Lcom/x/google/common/ui/NativeDateTimeFieldFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNativeTextFieldFactory()Lcom/x/google/common/ui/NativeTextFieldFactory;
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    const-string v0, "Unknown"

    return-object v0
.end method

.method public abstract getPersistentStore()Lcom/x/google/common/io/PersistentStore;
.end method

.method public abstract getPixelsPerInch()I
.end method

.method public getScreenDensityScale()D
    .locals 4

    invoke-virtual {p0}, Lcom/x/google/common/Config;->getPixelsPerInch()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4064

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSignalLevel()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTcpConnectionFactory()Lcom/x/google/common/io/TcpConnectionFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadFactory()Lcom/x/google/common/lang/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/x/google/common/lang/BaseThreadFactory;

    invoke-direct {v0}, Lcom/x/google/common/lang/BaseThreadFactory;-><init>()V

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public hasBackButton()Z
    .locals 2

    sget v0, Lcom/x/google/common/Config;->KEY_BACK:I

    const/16 v1, -0x270f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTrackball()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected init()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    if-nez v0, :cond_0

    const-string v0, "DownloadLocale"

    invoke-virtual {p0, v0}, Lcom/x/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/I18n;->init(Ljava/lang/String;)Lcom/x/google/common/I18n;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    :cond_0
    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Lcom/x/google/common/Config;->getDistributionChannelInternal()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/x/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    sget-object v3, Lcom/x/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "unknown"

    sput-object v3, Lcom/x/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/x/google/common/Config;->getAdsClientInternal()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/x/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    sget-object v3, Lcom/x/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, "unknown"

    sput-object v3, Lcom/x/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    :cond_2
    const-string v3, "Carrier"

    invoke-virtual {p0, v3}, Lcom/x/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/x/google/common/Config;->CARRIER:Ljava/lang/String;

    sget-object v3, Lcom/x/google/common/Config;->CARRIER:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, "unknown"

    sput-object v3, Lcom/x/google/common/Config;->CARRIER:Ljava/lang/String;

    :cond_3
    const-string v3, "BackKey"

    sget v4, Lcom/x/google/common/Config;->KEY_BACK:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_BACK:I

    const-string v3, "LeftSoftKey"

    sget v4, Lcom/x/google/common/Config;->KEY_SOFT_LEFT:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_SOFT_LEFT:I

    const-string v3, "MiddleSoftKey"

    sget v4, Lcom/x/google/common/Config;->KEY_SOFT_MIDDLE:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_SOFT_MIDDLE:I

    const-string v3, "RightSoftKey"

    sget v4, Lcom/x/google/common/Config;->KEY_SOFT_RIGHT:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_SOFT_RIGHT:I

    const-string v3, "ReverseSoftkeys"

    const-string v4, "nokia"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/x/google/common/Config;->REVERSE_SOFTKEYS:Z

    const-string v3, "SoftkeysOnSideInLandscape"

    invoke-virtual {p0, v3, v2}, Lcom/x/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/x/google/common/Config;->SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z

    const-string v3, "SideUpKey"

    sget v4, Lcom/x/google/common/Config;->KEY_SIDE_UP:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_SIDE_UP:I

    const-string v3, "SideDownKey"

    sget v4, Lcom/x/google/common/Config;->KEY_SIDE_DOWN:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_SIDE_DOWN:I

    const-string v3, "SideSelectKey"

    sget v4, Lcom/x/google/common/Config;->KEY_SIDE_SELECT:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_SIDE_SELECT:I

    const-string v3, "QwertyKeyboard"

    invoke-virtual {p0, v3, v2}, Lcom/x/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/x/google/common/Config;->QWERTY_KEYBOARD:Z

    sget-boolean v3, Lcom/x/google/common/Config;->REVERSE_SOFTKEYS:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/x/google/common/Config;->KEY_SOFT_LEFT:I

    sget v4, Lcom/x/google/common/Config;->KEY_SOFT_RIGHT:I

    sput v4, Lcom/x/google/common/Config;->KEY_SOFT_LEFT:I

    sput v3, Lcom/x/google/common/Config;->KEY_SOFT_RIGHT:I

    :cond_4
    const-string v3, "MenuKey"

    sget v4, Lcom/x/google/common/Config;->KEY_MENU:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_MENU:I

    const-string v3, "SelectKey"

    sget v4, Lcom/x/google/common/Config;->KEY_OK:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_OK:I

    const-string v3, "TalkKey"

    sget v4, Lcom/x/google/common/Config;->KEY_TALK:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_TALK:I

    const-string v3, "VoiceSearchKey"

    sget v4, Lcom/x/google/common/Config;->KEY_VOICE_SEARCH:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_VOICE_SEARCH:I

    const-string v3, "ClearKey"

    sget v4, Lcom/x/google/common/Config;->KEY_CLEAR:I

    invoke-virtual {p0, v3, v4}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/x/google/common/Config;->KEY_CLEAR:I

    const-string v3, "UseNativeCommands"

    const-string v4, "nokia"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "sony"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/x/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/x/google/common/Config;->USE_NATIVE_COMMANDS:Z

    const-string v0, "UseNativeMenus"

    invoke-virtual {p0, v0, v2}, Lcom/x/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/x/google/common/Config;->USE_NATIVE_MENUS:Z

    const-string v0, "SoftkeyHeight"

    invoke-virtual {p0, v0, v2}, Lcom/x/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/x/google/common/Config;->SOFTKEY_HEIGHT:I

    const-string v0, "AltNumberKeys"

    invoke-virtual {p0, v0}, Lcom/x/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/Config;->parseAltNumberKeys(Ljava/lang/String;)V

    const-string v0, "AltArrowKeys"

    invoke-virtual {p0, v0}, Lcom/x/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/Config;->parseAltArrowKeys(Ljava/lang/String;)V

    sget-boolean v0, Lcom/x/google/common/Config;->USE_NATIVE_MENUS:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/x/google/common/Config;->USE_NATIVE_COMMANDS:Z

    if-nez v0, :cond_5

    sput-boolean v1, Lcom/x/google/common/Config;->USE_NATIVE_COMMANDS:Z

    :cond_5
    invoke-virtual {p0}, Lcom/x/google/common/Config;->setupGzipper()V

    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public abstract isFire(Ljava/lang/Object;I)Z
.end method

.method public isPointerEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPointerEnabledNoSoftkey()Z
    .locals 1

    invoke-virtual {p0}, Lcom/x/google/common/Config;->isPointerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoteLocalizedStringsLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    invoke-virtual {v0}, Lcom/x/google/common/I18n;->isRemoteLocalizedStringsLoaded()Z

    move-result v0

    return v0
.end method

.method public mapKeyCode(I)I
    .locals 2

    sget-object v0, Lcom/x/google/common/Config;->ALT_NUMBER_KEYS:[I

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/x/google/common/Config;->ALT_NUMBER_KEYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/x/google/common/Config;->ALT_NUMBER_KEYS:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_4

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    sget p1, Lcom/x/google/common/Config;->KEY_STAR:I

    :cond_1
    :goto_1
    return p1

    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    sget p1, Lcom/x/google/common/Config;->KEY_POUND:I

    goto :goto_1

    :cond_3
    add-int/lit8 p1, v0, 0x30

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public resetForTest()V
    .locals 0

    invoke-static {}, Lcom/x/google/common/util/RuntimeCheck;->checkTest()V

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/x/google/common/util/text/TextUtil;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/Config;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    invoke-virtual {v0, p1}, Lcom/x/google/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method

.method public setRemoteStringResources([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/Config;->i18n:Lcom/x/google/common/I18n;

    invoke-virtual {v0, p1}, Lcom/x/google/common/I18n;->setRemoteLocalizedStrings([Ljava/lang/String;)V

    return-void
.end method

.method protected abstract setupGzipper()V
.end method

.method public supportsDistinctMultiTouch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsJpeg()Z
    .locals 1

    sget-boolean v0, Lcom/x/google/common/Config;->jpegTested:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/x/google/common/Config;->testSupportsJpeg()Z

    move-result v0

    sput-boolean v0, Lcom/x/google/common/Config;->supportsJpeg:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/x/google/common/Config;->jpegTested:Z

    :cond_0
    sget-boolean v0, Lcom/x/google/common/Config;->supportsJpeg:Z

    return v0
.end method

.method public abstract supportsTranslucency()Z
.end method

.method protected abstract testSupportsJpeg()Z
.end method
