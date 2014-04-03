.class public Lcom/x/google/masf/MobileServiceMux$Configuration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/masf/MobileServiceMux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field private applicationName:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private distributionChannel:Ljava/lang/String;

.field private platformId:Ljava/lang/String;

.field private secureServerUri:Ljava/lang/String;

.field private serverUri:Ljava/lang/String;

.field private workerTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->workerTimeout:J

    return-void
.end method

.method static synthetic access$000(Lcom/x/google/masf/MobileServiceMux$Configuration;)J
    .locals 2

    iget-wide v0, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->workerTimeout:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->distributionChannel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->serverUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/x/google/masf/MobileServiceMux$Configuration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->secureServerUri:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->applicationVersion:Ljava/lang/String;

    return-void
.end method

.method public setDistributionChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->distributionChannel:Ljava/lang/String;

    return-void
.end method

.method public setPlatformId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->platformId:Ljava/lang/String;

    return-void
.end method

.method public setSecureServerUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->secureServerUri:Ljava/lang/String;

    return-void
.end method

.method public setServerUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->serverUri:Ljava/lang/String;

    return-void
.end method

.method public setWorkerTimeout(J)V
    .locals 0

    iput-wide p1, p0, Lcom/x/google/masf/MobileServiceMux$Configuration;->workerTimeout:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
