.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizedContact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;,
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;,
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;,
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x6

.field public static final COMPANY_FIELD_NUMBER:I = 0x3

.field public static final EMAIL_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x7

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final URL_FIELD_NUMBER:I = 0x4


# instance fields
.field private address_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private company_:Ljava/lang/String;

.field private email_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;",
            ">;"
        }
    .end annotation
.end field

.field private hasCompany:Z

.field private hasName:Z

.field private hasTitle:Z

.field private name_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

.field private phoneNumber_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;

.field private url_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    .line 974
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    .line 990
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url_:Ljava/util/List;

    .line 1023
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email_:Ljava/util/List;

    .line 1056
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address_:Ljava/util/List;

    .line 1089
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber_:Ljava/util/List;

    .line 1162
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->cachedSize:I

    .line 544
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1275
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1269
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    return-object v0
.end method


# virtual methods
.method public addAddress(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 1073
    if-nez p1, :cond_0

    .line 1074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address_:Ljava/util/List;

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    return-object p0
.end method

.method public addEmail(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 1040
    if-nez p1, :cond_0

    .line 1041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email_:Ljava/util/List;

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    return-object p0
.end method

.method public addPhoneNumber(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 1106
    if-nez p1, :cond_0

    .line 1107
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber_:Ljava/util/List;

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1113
    return-object p0
.end method

.method public addUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 1007
    if-nez p1, :cond_0

    .line 1008
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url_:Ljava/util/List;

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    return-object p0
.end method

.method public final clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 1121
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->clearName()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 1122
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->clearTitle()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 1123
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->clearCompany()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 1124
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->clearUrl()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 1125
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->clearEmail()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 1126
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->clearAddress()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 1127
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->clearPhoneNumber()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 1128
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->cachedSize:I

    .line 1129
    return-object p0
.end method

.method public clearAddress()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 1083
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address_:Ljava/util/List;

    .line 1084
    return-object p0
.end method

.method public clearCompany()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasCompany:Z

    .line 984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    .line 985
    return-object p0
.end method

.method public clearEmail()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 1050
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email_:Ljava/util/List;

    .line 1051
    return-object p0
.end method

.method public clearName()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasName:Z

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    .line 951
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 1116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber_:Ljava/util/List;

    .line 1117
    return-object p0
.end method

.method public clearTitle()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasTitle:Z

    .line 967
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    .line 968
    return-object p0
.end method

.method public clearUrl()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 1017
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url_:Ljava/util/List;

    .line 1018
    return-object p0
.end method

.method public getAddress(I)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    return-object v0
.end method

.method public getAddressCount()I
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1165
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->cachedSize:I

    if-gez v0, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getSerializedSize()I

    .line 1169
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->cachedSize:I

    return v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail(I)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    .locals 1
    .parameter "index"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    return-object v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    return-object v0
.end method

.method public getPhoneNumber(I)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    .locals 1
    .parameter "index"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    return-object v0
.end method

.method public getPhoneNumberCount()I
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneNumberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1174
    const/4 v3, 0x0

    .line 1175
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1176
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getName()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1180
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1183
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasCompany()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1184
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getCompany()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1188
    :cond_2
    const/4 v0, 0x0

    .line 1189
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1190
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1193
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 1194
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1196
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getEmailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    .line 1197
    .local v1, element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 1200
    .end local v1           #element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    :cond_4
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getAddressList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    .line 1201
    .local v1, element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    const/4 v4, 0x6

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 1204
    .end local v1           #element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    :cond_5
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getPhoneNumberList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    .line 1205
    .local v1, element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    const/4 v4, 0x7

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    .line 1208
    .end local v1           #element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    :cond_6
    iput v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->cachedSize:I

    .line 1209
    return v3
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlCount()I
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url_:Ljava/util/List;

    return-object v0
.end method

.method public hasCompany()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasCompany:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasName:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1133
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1217
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1218
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1222
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1223
    :sswitch_0
    return-object p0

    .line 1228
    :sswitch_1
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;-><init>()V

    .line 1229
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1230
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->setName(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    goto :goto_0

    .line 1234
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->setTitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    goto :goto_0

    .line 1238
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->setCompany(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    goto :goto_0

    .line 1242
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->addUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    goto :goto_0

    .line 1246
    :sswitch_5
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;-><init>()V

    .line 1247
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1248
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->addEmail(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    goto :goto_0

    .line 1252
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    :sswitch_6
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;-><init>()V

    .line 1253
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1254
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->addAddress(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    goto :goto_0

    .line 1258
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    :sswitch_7
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;-><init>()V

    .line 1259
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1260
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->addPhoneNumber(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    goto :goto_0

    .line 1218
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 541
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(ILcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1066
    if-nez p2, :cond_0

    .line 1067
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1070
    return-object p0
.end method

.method public setCompany(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasCompany:Z

    .line 979
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    .line 980
    return-object p0
.end method

.method public setEmail(ILcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1033
    if-nez p2, :cond_0

    .line 1034
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1037
    return-object p0
.end method

.method public setName(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 941
    if-nez p1, :cond_0

    .line 942
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 944
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasName:Z

    .line 945
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name_:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    .line 946
    return-object p0
.end method

.method public setPhoneNumber(ILcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1099
    if-nez p2, :cond_0

    .line 1100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1103
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasTitle:Z

    .line 962
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    .line 963
    return-object p0
.end method

.method public setUrl(ILjava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1000
    if-nez p2, :cond_0

    .line 1001
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1004
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1140
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getName()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1143
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1145
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->hasCompany()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1146
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getCompany()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1148
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getUrlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1149
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1151
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getEmailList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    .line 1152
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1154
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    :cond_4
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getAddressList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    .line 1155
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 1157
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    :cond_5
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->getPhoneNumberList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    .line 1158
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    .line 1160
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    :cond_6
    return-void
.end method
