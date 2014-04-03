.class public final Lcom/google/speech/s3/S3$AuthToken;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthToken"
.end annotation


# static fields
.field public static final EMAIL_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final TOKEN_FIELD_NUMBER:I = 0x2

.field public static final USER_ID_FIELD_NUMBER:I = 0x3

.field public static final USER_ID_TYPE_FIELD_NUMBER:I = 0x4

.field public static final USER_ID_TYPE_GAIA:I = 0x1

.field public static final USER_ID_TYPE_ZWIEBACK:I = 0x2


# instance fields
.field private cachedSize:I

.field private email_:Ljava/lang/String;

.field private hasEmail:Z

.field private hasName:Z

.field private hasToken:Z

.field private hasUserId:Z

.field private hasUserIdType:Z

.field private name_:Ljava/lang/String;

.field private token_:Ljava/lang/String;

.field private userIdType_:I

.field private userId_:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    .line 866
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    .line 883
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    .line 900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    .line 917
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    .line 965
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->cachedSize:I

    .line 840
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1049
    new-instance v0, Lcom/google/speech/s3/S3$AuthToken;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$AuthToken;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$AuthToken;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1043
    new-instance v0, Lcom/google/speech/s3/S3$AuthToken;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$AuthToken;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$AuthToken;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$AuthToken;

    check-cast v0, Lcom/google/speech/s3/S3$AuthToken;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/S3$AuthToken;
    .locals 1

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->clearName()Lcom/google/speech/s3/S3$AuthToken;

    .line 933
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->clearToken()Lcom/google/speech/s3/S3$AuthToken;

    .line 934
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->clearUserId()Lcom/google/speech/s3/S3$AuthToken;

    .line 935
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->clearEmail()Lcom/google/speech/s3/S3$AuthToken;

    .line 936
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->clearUserIdType()Lcom/google/speech/s3/S3$AuthToken;

    .line 937
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->cachedSize:I

    .line 938
    return-object p0
.end method

.method public clearEmail()Lcom/google/speech/s3/S3$AuthToken;
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasEmail:Z

    .line 910
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    .line 911
    return-object p0
.end method

.method public clearName()Lcom/google/speech/s3/S3$AuthToken;
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasName:Z

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    .line 860
    return-object p0
.end method

.method public clearToken()Lcom/google/speech/s3/S3$AuthToken;
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasToken:Z

    .line 876
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    .line 877
    return-object p0
.end method

.method public clearUserId()Lcom/google/speech/s3/S3$AuthToken;
    .locals 2

    .prologue
    .line 892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasUserId:Z

    .line 893
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    .line 894
    return-object p0
.end method

.method public clearUserIdType()Lcom/google/speech/s3/S3$AuthToken;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasUserIdType:Z

    .line 927
    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    .line 928
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->cachedSize:I

    if-gez v0, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getSerializedSize()I

    .line 972
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->cachedSize:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 982
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 986
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->hasUserId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 987
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getUserId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 990
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->hasUserIdType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 991
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getUserIdType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 994
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 995
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 998
    :cond_4
    iput v0, p0, Lcom/google/speech/s3/S3$AuthToken;->cachedSize:I

    .line 999
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 884
    iget-wide v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    return-wide v0
.end method

.method public getUserIdType()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasEmail:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasName:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasToken:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasUserId:Z

    return v0
.end method

.method public hasUserIdType()Z
    .locals 1

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasUserIdType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$AuthToken;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$AuthToken;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1008
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1012
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$AuthToken;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1013
    :sswitch_0
    return-object p0

    .line 1018
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$AuthToken;->setName(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;

    goto :goto_0

    .line 1022
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$AuthToken;->setToken(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;

    goto :goto_0

    .line 1026
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/s3/S3$AuthToken;->setUserId(J)Lcom/google/speech/s3/S3$AuthToken;

    goto :goto_0

    .line 1030
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$AuthToken;->setUserIdType(I)Lcom/google/speech/s3/S3$AuthToken;

    goto :goto_0

    .line 1034
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$AuthToken;->setEmail(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;

    goto :goto_0

    .line 1008
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .parameter "value"

    .prologue
    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasEmail:Z

    .line 905
    iput-object p1, p0, Lcom/google/speech/s3/S3$AuthToken;->email_:Ljava/lang/String;

    .line 906
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .parameter "value"

    .prologue
    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasName:Z

    .line 854
    iput-object p1, p0, Lcom/google/speech/s3/S3$AuthToken;->name_:Ljava/lang/String;

    .line 855
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .parameter "value"

    .prologue
    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasToken:Z

    .line 871
    iput-object p1, p0, Lcom/google/speech/s3/S3$AuthToken;->token_:Ljava/lang/String;

    .line 872
    return-object p0
.end method

.method public setUserId(J)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .parameter "value"

    .prologue
    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasUserId:Z

    .line 888
    iput-wide p1, p0, Lcom/google/speech/s3/S3$AuthToken;->userId_:J

    .line 889
    return-object p0
.end method

.method public setUserIdType(I)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .parameter "value"

    .prologue
    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$AuthToken;->hasUserIdType:Z

    .line 922
    iput p1, p0, Lcom/google/speech/s3/S3$AuthToken;->userIdType_:I

    .line 923
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 951
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 954
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 955
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getUserId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 957
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->hasUserIdType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 958
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getUserIdType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 960
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 961
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$AuthToken;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 963
    :cond_4
    return-void
.end method
