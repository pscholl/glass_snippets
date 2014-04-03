.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionOptions"
.end annotation


# static fields
.field public static final ANNOTATION_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_INFO_FIELD_NUMBER:I = 0x3

.field public static final LOCALE_FIELD_NUMBER:I = 0x5


# instance fields
.field private annotation_:Ljava/lang/String;

.field private cachedSize:I

.field private clientInfo_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

.field private hasAnnotation:Z

.field private hasClientInfo:Z

.field private hasLocale:Z

.field private locale_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 615
    const-string v0, "en-US"

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    .line 655
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->cachedSize:I

    .line 573
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 719
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clearAnnotation()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    .line 631
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clearClientInfo()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    .line 632
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clearLocale()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    .line 633
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->cachedSize:I

    .line 634
    return-object p0
.end method

.method public clearAnnotation()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasAnnotation:Z

    .line 588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    .line 589
    return-object p0
.end method

.method public clearClientInfo()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasClientInfo:Z

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 609
    return-object p0
.end method

.method public clearLocale()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasLocale:Z

    .line 625
    const-string v0, "en-US"

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    .line 626
    return-object p0
.end method

.method public getAnnotation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->cachedSize:I

    if-gez v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->getSerializedSize()I

    .line 662
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->cachedSize:I

    return v0
.end method

.method public getClientInfo()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasAnnotation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->getAnnotation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasClientInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->getClientInfo()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasLocale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 677
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 680
    :cond_2
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->cachedSize:I

    .line 681
    return v0
.end method

.method public hasAnnotation()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasAnnotation:Z

    return v0
.end method

.method public hasClientInfo()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasClientInfo:Z

    return v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasLocale:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 690
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 694
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    :sswitch_0
    return-object p0

    .line 700
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->setAnnotation(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    goto :goto_0

    .line 704
    :sswitch_2
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;-><init>()V

    .line 705
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 706
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->setClientInfo(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    goto :goto_0

    .line 710
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->setLocale(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    goto :goto_0

    .line 690
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x2a -> :sswitch_3
    .end sparse-switch
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
    .line 570
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;

    move-result-object v0

    return-object v0
.end method

.method public setAnnotation(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasAnnotation:Z

    .line 583
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->annotation_:Ljava/lang/String;

    .line 584
    return-object p0
.end method

.method public setClientInfo(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 602
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasClientInfo:Z

    .line 603
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->clientInfo_:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 604
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasLocale:Z

    .line 620
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->locale_:Ljava/lang/String;

    .line 621
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->getAnnotation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasClientInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->getClientInfo()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionOptions;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 653
    :cond_2
    return-void
.end method
