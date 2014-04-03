.class public Lcom/x/google/masf/services/EventTrackingService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/masf/services/EventTrackingService$EventTrackingRequest;
    }
.end annotation


# static fields
.field private static final DC:Ljava/lang/String; = "DistributionChannel"

.field private static final EVENT_TRACKING_SERVICE_URI:Ljava/lang/String; = "g:trk"

.field private static final INSTALL_NOTIFY:Ljava/lang/String; = "MIDlet-Install-Notify"

.field private static final LOCALE:Ljava/lang/String; = "DownloadLocale"

.field private static final LOG_EVENT_URI:Ljava/lang/String; = "g:trk/log"

.field private static final SESSION_PARAM:Ljava/lang/String; = "session"

.field private static logger:Lcom/x/google/debug/LogSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/x/google/masf/services/EventTrackingService;

    invoke-static {v0}, Lcom/x/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/x/google/debug/LogSource;

    move-result-object v0

    sput-object v0, Lcom/x/google/masf/services/EventTrackingService;->logger:Lcom/x/google/debug/LogSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/x/google/debug/LogSource;
    .locals 1

    sget-object v0, Lcom/x/google/masf/services/EventTrackingService;->logger:Lcom/x/google/debug/LogSource;

    return-object v0
.end method

.method public static trackActivation(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/x/google/masf/services/EventTrackingService;->trackActivation(ILcom/x/google/masf/ServiceCallback;)V

    return-void
.end method

.method public static trackActivation(ILcom/x/google/masf/ServiceCallback;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/x/google/masf/services/EventTrackingService$EventTrackingRequest;

    invoke-direct {v0, p0, p1}, Lcom/x/google/masf/services/EventTrackingService$EventTrackingRequest;-><init>(ILcom/x/google/masf/ServiceCallback;)V

    invoke-virtual {v0}, Lcom/x/google/masf/services/EventTrackingService$EventTrackingRequest;->logActivation()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/x/google/masf/services/EventTrackingService;->logger:Lcom/x/google/debug/LogSource;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->warning(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/x/google/masf/ServiceCallback;->onRequestComplete(Ljava/lang/Object;)V

    goto :goto_0
.end method
