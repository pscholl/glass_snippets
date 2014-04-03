.class public Lcom/x/google/masf/services/resume/ExtendableRequest;
.super Lcom/x/google/masf/protocol/HttpRequest;

# interfaces
.implements Lcom/x/google/masf/services/resume/ResumableRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;
    }
.end annotation


# static fields
.field static final ADD_BODY_PART:I = 0x0

.field static final COMPLETE:I = 0x1

.field static final DONE:I = 0x4

.field static final ERROR:I = 0x5

.field static final IDLE:I = 0x1

.field static final NEW:I = 0x0

.field static final PART_FAILED:I = 0x3

.field static final PART_UPLOADED:I = 0x2

.field static final SENDING:I = 0x2

.field static final SENDING_METADATA:I = 0x3


# instance fields
.field private exception:Ljava/lang/Exception;

.field private gotLastPart:Z

.field private listener:Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;

.field private requestId:Ljava/lang/String;

.field private response:Lcom/x/google/masf/protocol/Response;

.field private runningLength:I

.field private sendingRequest:Lcom/x/google/masf/services/resume/ResumableRequest;

.field private sentParts:I

.field private serviceUri:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/x/google/masf/protocol/HttpRequest;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/x/google/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/x/google/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->init()V

    return-void
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private generateBodyRequest(Lcom/x/google/masf/protocol/BodyPart;I)Lcom/x/google/masf/services/resume/ResumableRequest;
    .locals 2

    new-instance v0, Lcom/x/google/masf/services/resume/ResumableRawRequest;

    invoke-direct {v0, p1}, Lcom/x/google/masf/services/resume/ResumableRawRequest;-><init>(Lcom/x/google/masf/InputStreamProvider;)V

    invoke-virtual {v0, p2}, Lcom/x/google/masf/services/resume/ResumableRequest;->setRequestType(I)V

    iget-object v1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/x/google/masf/services/resume/ResumableRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/x/google/masf/services/resume/ResumableRequest;->setListener(Lcom/x/google/masf/services/resume/ResumableRequest$Listener;)V

    return-object v0
.end method

.method private generateHeaderRequest()Lcom/x/google/masf/services/resume/ResumableRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->generateBodyPartCount()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->generatePayloadMetaData()[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->generatePayloadHeader()[B

    move-result-object v5

    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->getPayload()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->generateBlockHeader()[B

    move-result-object v7

    array-length v0, v7

    array-length v2, v5

    add-int/2addr v0, v2

    array-length v2, v4

    add-int/2addr v0, v2

    array-length v2, v6

    add-int/2addr v0, v2

    array-length v2, v3

    add-int/2addr v0, v2

    new-array v8, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    array-length v9, v7

    if-ge v0, v9, :cond_0

    aget-byte v9, v7, v0

    aput-byte v9, v8, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_1

    aget-byte v7, v5, v0

    aput-byte v7, v8, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_2

    aget-byte v5, v4, v0

    aput-byte v5, v8, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    array-length v4, v6

    if-ge v0, v4, :cond_3

    aget-byte v4, v6, v0

    aput-byte v4, v8, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    array-length v0, v3

    if-ge v1, v0, :cond_4

    aget-byte v0, v3, v1

    aput-byte v0, v8, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/x/google/masf/services/resume/ResumableRawRequest;

    invoke-direct {v0, v8}, Lcom/x/google/masf/services/resume/ResumableRawRequest;-><init>([B)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/x/google/masf/services/resume/ResumableRequest;->setRequestType(I)V

    iget-object v1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/x/google/masf/services/resume/ResumableRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/x/google/masf/services/resume/ResumableRequest;->setListener(Lcom/x/google/masf/services/resume/ResumableRequest$Listener;)V

    return-object v0
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->setBodyParts(Ljava/util/Vector;)V

    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->setPayload([B)V

    iput v1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    iput-boolean v1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z

    iput v1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->setBlockType(I)V

    return-void
.end method

.method private requestComplete()V
    .locals 2

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->listener:Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->listener:Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;

    iget-object v1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->response:Lcom/x/google/masf/protocol/Response;

    invoke-interface {v0, p0, v1}, Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;->requestCompleted(Lcom/x/google/masf/services/resume/ExtendableRequest;Lcom/x/google/masf/protocol/Response;)V

    :cond_0
    return-void
.end method

.method private requestFailed()V
    .locals 2

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->listener:Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->listener:Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;

    iget-object v1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->exception:Ljava/lang/Exception;

    invoke-interface {v0, p0, v1}, Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;->requestFailed(Lcom/x/google/masf/services/resume/ExtendableRequest;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/x/google/masf/protocol/BodyPart;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->runningLength:I

    invoke-virtual {p1}, Lcom/x/google/masf/protocol/BodyPart;->getStreamLength()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->runningLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->advanceState(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method advanceState(I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->getSingleton()Lcom/x/google/masf/MobileServiceMux;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/x/google/masf/MobileServiceMux;->submitResumableRequest(Lcom/x/google/masf/services/resume/ResumableRequest;)V

    iput-object v1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sendingRequest:Lcom/x/google/masf/services/resume/ResumableRequest;

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    if-ne p1, v2, :cond_2

    const/4 v0, 0x4

    :try_start_1
    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->requestComplete()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    if-ne p1, v3, :cond_0

    const/4 v0, 0x5

    :try_start_2
    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->requestFailed()V

    goto :goto_0

    :pswitch_1
    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->advanceState(I)V

    monitor-exit p0

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->requestFailed()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v2, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    if-le v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/protocol/BodyPart;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/x/google/masf/services/resume/ExtendableRequest;->generateBodyRequest(Lcom/x/google/masf/protocol/BodyPart;I)Lcom/x/google/masf/services/resume/ResumableRequest;

    move-result-object v1

    iget v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v2, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->generateHeaderRequest()Lcom/x/google/masf/services/resume/ResumableRequest;

    move-result-object v1

    const/4 v0, 0x3

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception generating header request ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/x/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->exception:Ljava/lang/Exception;

    const/4 v0, 0x5

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->requestFailed()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v2, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    if-le v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/protocol/BodyPart;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/x/google/masf/services/resume/ExtendableRequest;->generateBodyRequest(Lcom/x/google/masf/protocol/BodyPart;I)Lcom/x/google/masf/services/resume/ResumableRequest;

    move-result-object v1

    iget v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v2, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sentParts:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_0

    :try_start_5
    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->generateHeaderRequest()Lcom/x/google/masf/services/resume/ResumableRequest;

    move-result-object v1

    const/4 v0, 0x3

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception generating header request ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/x/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->exception:Ljava/lang/Exception;

    const/4 v0, 0x5

    iput v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->requestFailed()V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "Error state"

    invoke-static {v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "Done state (shouldn\'t be seen)"

    invoke-static {v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public complete()V
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->gotLastPart:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcom/x/google/masf/services/resume/ExtendableRequest;->advanceState(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ResumeServiceRequest.dispose()"

    invoke-static {v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->getBodyParts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/BodyPart;->dispose()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/x/google/masf/protocol/HttpRequest;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestCancelled(Lcom/x/google/masf/services/resume/ResumableRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sendingRequest:Lcom/x/google/masf/services/resume/ResumableRequest;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->listener:Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;

    invoke-interface {v0, p0}, Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;->requestCancelled(Lcom/x/google/masf/services/resume/ExtendableRequest;)V

    :cond_0
    return-void
.end method

.method public requestCompleted(Lcom/x/google/masf/services/resume/ResumableRequest;Lcom/x/google/masf/protocol/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sendingRequest:Lcom/x/google/masf/services/resume/ResumableRequest;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->response:Lcom/x/google/masf/protocol/Response;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->advanceState(I)V

    :cond_0
    return-void
.end method

.method public requestFailed(Lcom/x/google/masf/services/resume/ResumableRequest;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sendingRequest:Lcom/x/google/masf/services/resume/ResumableRequest;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] received for ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->debug(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->exception:Ljava/lang/Exception;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/x/google/masf/services/resume/ExtendableRequest;->advanceState(I)V

    :cond_1
    return-void
.end method

.method public requestProgress(Lcom/x/google/masf/services/resume/ResumableRequest;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->sendingRequest:Lcom/x/google/masf/services/resume/ResumableRequest;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->runningLength:I

    int-to-long v0, v0

    mul-long/2addr v0, p4

    :try_start_0
    invoke-virtual {p1}, Lcom/x/google/masf/services/resume/ResumableRequest;->getStreamLength()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    div-long v4, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->listener:Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;

    move-object v1, p0

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;->requestProgress(Lcom/x/google/masf/services/resume/ExtendableRequest;JJ)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-wide v4, p4

    goto :goto_0
.end method

.method public setListener(Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->listener:Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/services/resume/ExtendableRequest;->requestId:Ljava/lang/String;

    return-void
.end method
