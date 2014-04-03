.class public Lcom/x/google/common/android/AndroidConfig;
.super Lcom/x/google/common/Config;

# interfaces
.implements Lcom/x/google/common/DateFormatter;


# static fields
.field public static final LOCALE_SEPARATOR:Ljava/lang/String; = " "

.field public static final SUPPORTED_LOCALES:Ljava/lang/String; = "en"

.field private static stringResourceContext:Landroid/content/Context;

.field private static uiThread:Ljava/lang/Thread;


# instance fields
.field private final clock:Lcom/x/google/common/Clock;

.field protected connectionFactory:Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;

.field protected final context:Landroid/content/Context;

.field protected fontFactory:Lcom/x/google/common/graphics/FontFactory;

.field protected imageFactory:Lcom/x/google/common/graphics/android/AndroidImageFactory;

.field protected persistentStore:Lcom/x/google/common/io/PersistentStore;

.field private final pixelsPerInch:I

.field protected tcpConnFactory:Lcom/x/google/common/io/TcpConnectionFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/x/google/common/android/AndroidConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/x/google/common/Config;-><init>()V

    new-instance v0, Lcom/x/google/common/android/AndroidClock;

    invoke-direct {v0}, Lcom/x/google/common/android/AndroidClock;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->clock:Lcom/x/google/common/Clock;

    iput-object p1, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/x/google/common/android/AndroidConfig;->uiThread:Ljava/lang/Thread;

    invoke-static {p0}, Lcom/x/google/common/android/AndroidConfig;->setConfig(Lcom/x/google/common/Config;)V

    invoke-virtual {p0}, Lcom/x/google/common/android/AndroidConfig;->init()V

    sput-boolean v1, Lcom/x/google/common/android/AndroidConfig;->USE_NATIVE_COMMANDS:Z

    sput-boolean v1, Lcom/x/google/common/android/AndroidConfig;->USE_NATIVE_MENUS:Z

    const/4 v0, 0x4

    sput v0, Lcom/x/google/common/android/AndroidConfig;->KEY_BACK:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/x/google/common/android/AndroidConfig;->pixelsPerInch:I

    :goto_0
    invoke-virtual {p0, p2}, Lcom/x/google/common/android/AndroidConfig;->initPortabilityFields(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/x/google/common/android/AndroidConfig;->initLocale(Ljava/util/Locale;)V

    return-void

    :cond_0
    const/16 v0, 0xa0

    iput v0, p0, Lcom/x/google/common/android/AndroidConfig;->pixelsPerInch:I

    goto :goto_0
.end method

.method public static androidString(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/x/google/common/android/AndroidConfig;->stringResourceContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBestUiLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Lcom/x/google/common/android/AndroidConfig;->getRemoteStringLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/x/google/common/I18n;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/x/google/common/I18n;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getPlatformID()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x5f

    const/16 v5, 0x2d

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemoteStringLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/x/google/common/android/AndroidConfig;->getSupportedLocales()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/x/google/common/I18n;->getBestLocaleMatch(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRemoteStringLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/x/google/common/I18n;->getBestLocaleMatch(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v6

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method private static getSupportedLocales()[Ljava/lang/String;
    .locals 2

    const-string v0, "en"

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/x/google/common/util/text/TextUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/x/google/common/android/AndroidConfig;->initLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public formatRelativeTime(JJ)Ljava/lang/String;
    .locals 6

    const-wide/32 v4, 0xea60

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClock()Lcom/x/google/common/Clock;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->clock:Lcom/x/google/common/Clock;

    return-object v0
.end method

.method public bridge synthetic getConnectionFactory()Lcom/x/google/common/io/HttpConnectionFactory;
    .locals 1

    invoke-virtual {p0}, Lcom/x/google/common/android/AndroidConfig;->getConnectionFactory()Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionFactory()Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->connectionFactory:Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDateFormatter()Lcom/x/google/common/DateFormatter;
    .locals 0

    return-object p0
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .locals 3

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Lcom/x/google/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "client_id"

    invoke-direct {p0, v0}, Lcom/x/google/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Web"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gmm-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFontFactory()Lcom/x/google/common/graphics/FontFactory;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->fontFactory:Lcom/x/google/common/graphics/FontFactory;

    return-object v0
.end method

.method public getGameAction(Ljava/lang/Object;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getImageFactory()Lcom/x/google/common/graphics/ImageFactory;
    .locals 1

    invoke-virtual {p0}, Lcom/x/google/common/android/AndroidConfig;->getImageFactory()Lcom/x/google/common/graphics/android/AndroidImageFactory;

    move-result-object v0

    return-object v0
.end method

.method public getImageFactory()Lcom/x/google/common/graphics/android/AndroidImageFactory;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->imageFactory:Lcom/x/google/common/graphics/android/AndroidImageFactory;

    return-object v0
.end method

.method public getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public getMinTouchablePixels()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method public getNativeDateTimeFieldFactory()Lcom/x/google/common/ui/NativeDateTimeFieldFactory;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Native DateTime Fields not used on Android."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNativeTextFieldFactory()Lcom/x/google/common/ui/NativeTextFieldFactory;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Native Text Fields not used on Android."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "Unknown"

    :goto_1
    return-object v0

    :pswitch_0
    const-string v0, "WiFi"

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const-string v0, "GPRS"

    goto :goto_1

    :pswitch_3
    const-string v0, "UMTS"

    goto :goto_1

    :pswitch_4
    const-string v0, "EDGE"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getPersistentStore()Lcom/x/google/common/io/PersistentStore;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->persistentStore:Lcom/x/google/common/io/PersistentStore;

    return-object v0
.end method

.method public getPixelsPerInch()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/android/AndroidConfig;->pixelsPerInch:I

    return v0
.end method

.method public getScreenDensityScale()D
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public declared-synchronized getTcpConnectionFactory()Lcom/x/google/common/io/TcpConnectionFactory;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->tcpConnFactory:Lcom/x/google/common/io/TcpConnectionFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/x/google/common/io/android/AndroidTcpConnectionFactory;

    iget-object v1, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/x/google/common/io/android/AndroidTcpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->tcpConnFactory:Lcom/x/google/common/io/TcpConnectionFactory;

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->tcpConnFactory:Lcom/x/google/common/io/TcpConnectionFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.0.0"

    return-object v0
.end method

.method public initLocale(Ljava/util/Locale;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/x/google/common/android/AndroidConfig;->getI18n()Lcom/x/google/common/I18n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/x/google/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/x/google/common/android/AndroidConfig;->getI18n()Lcom/x/google/common/I18n;

    move-result-object v1

    invoke-static {}, Lcom/x/google/common/android/AndroidConfig;->getSupportedLocales()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/x/google/common/android/AndroidConfig;->getBestUiLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/x/google/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method

.method protected initPortabilityFields(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/x/google/common/io/InMemoryPersistentStore;

    invoke-direct {v0}, Lcom/x/google/common/io/InMemoryPersistentStore;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->persistentStore:Lcom/x/google/common/io/PersistentStore;

    :goto_0
    new-instance v0, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;

    iget-object v1, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->connectionFactory:Lcom/x/google/common/io/android/AndroidHttpConnectionFactory;

    new-instance v0, Lcom/x/google/common/graphics/android/AndroidFontFactory;

    invoke-direct {v0}, Lcom/x/google/common/graphics/android/AndroidFontFactory;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->fontFactory:Lcom/x/google/common/graphics/FontFactory;

    new-instance v0, Lcom/x/google/common/graphics/android/AndroidAshmemImageFactory;

    iget-object v1, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/x/google/common/graphics/android/AndroidAshmemImageFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->imageFactory:Lcom/x/google/common/graphics/android/AndroidImageFactory;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/x/google/common/io/android/AndroidFixedPersistentStore;

    invoke-direct {v0, p1}, Lcom/x/google/common/io/android/AndroidFixedPersistentStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->persistentStore:Lcom/x/google/common/io/PersistentStore;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/x/google/common/io/android/AndroidPersistentStore;

    iget-object v1, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/x/google/common/io/android/AndroidPersistentStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->persistentStore:Lcom/x/google/common/io/PersistentStore;

    goto :goto_0
.end method

.method public isFire(Ljava/lang/Object;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setFontFactory(Lcom/x/google/common/graphics/FontFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/common/android/AndroidConfig;->fontFactory:Lcom/x/google/common/graphics/FontFactory;

    return-void
.end method

.method public setStringResourceContext(Landroid/content/Context;)V
    .locals 0

    sput-object p1, Lcom/x/google/common/android/AndroidConfig;->stringResourceContext:Landroid/content/Context;

    return-void
.end method

.method protected setupGzipper()V
    .locals 1

    new-instance v0, Lcom/x/google/common/android/AndroidConfig$1;

    invoke-direct {v0, p0}, Lcom/x/google/common/android/AndroidConfig$1;-><init>(Lcom/x/google/common/android/AndroidConfig;)V

    invoke-static {v0}, Lcom/x/google/common/io/Gunzipper;->setImplementation(Lcom/x/google/common/io/Gunzipper$GunzipInterface;)V

    return-void
.end method

.method public supportsDistinctMultiTouch()Z
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportsTranslucency()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected testSupportsJpeg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public useNativeTextButtons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
