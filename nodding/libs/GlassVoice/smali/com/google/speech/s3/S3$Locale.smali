.class public final Lcom/google/speech/s3/S3$Locale;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Locale"
.end annotation


# static fields
.field public static final FORMAT_FIELD_NUMBER:I = 0x2

.field public static final LOCALE_FIELD_NUMBER:I = 0x1

.field public static final LOCALE_FORMAT_BCP_47:I = 0x1

.field public static final LOCALE_FORMAT_JAVA:I = 0x2


# instance fields
.field private cachedSize:I

.field private format_:I

.field private hasFormat:Z

.field private hasLocale:Z

.field private locale_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1066
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    .line 1083
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    .line 1119
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->cachedSize:I

    .line 1057
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$Locale;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    new-instance v0, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$Locale;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$Locale;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1173
    new-instance v0, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$Locale;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$Locale;

    check-cast v0, Lcom/google/speech/s3/S3$Locale;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/S3$Locale;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->clearLocale()Lcom/google/speech/s3/S3$Locale;

    .line 1099
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->clearFormat()Lcom/google/speech/s3/S3$Locale;

    .line 1100
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->cachedSize:I

    .line 1101
    return-object p0
.end method

.method public clearFormat()Lcom/google/speech/s3/S3$Locale;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1092
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$Locale;->hasFormat:Z

    .line 1093
    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    .line 1094
    return-object p0
.end method

.method public clearLocale()Lcom/google/speech/s3/S3$Locale;
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$Locale;->hasLocale:Z

    .line 1076
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    .line 1077
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->cachedSize:I

    if-gez v0, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->getSerializedSize()I

    .line 1126
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->cachedSize:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1131
    const/4 v0, 0x0

    .line 1132
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->hasLocale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1136
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->hasFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->getFormat()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1140
    :cond_1
    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->cachedSize:I

    .line 1141
    return v0
.end method

.method public hasFormat()Z
    .locals 1

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$Locale;->hasFormat:Z

    return v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 1068
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$Locale;->hasLocale:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1105
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
    .line 1054
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$Locale;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$Locale;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1149
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1150
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1154
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$Locale;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    :sswitch_0
    return-object p0

    .line 1160
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$Locale;->setLocale(Ljava/lang/String;)Lcom/google/speech/s3/S3$Locale;

    goto :goto_0

    .line 1164
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$Locale;->setFormat(I)Lcom/google/speech/s3/S3$Locale;

    goto :goto_0

    .line 1150
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setFormat(I)Lcom/google/speech/s3/S3$Locale;
    .locals 1
    .parameter "value"

    .prologue
    .line 1087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$Locale;->hasFormat:Z

    .line 1088
    iput p1, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    .line 1089
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/speech/s3/S3$Locale;
    .locals 1
    .parameter "value"

    .prologue
    .line 1070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$Locale;->hasLocale:Z

    .line 1071
    iput-object p1, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    .line 1072
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
    .line 1111
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1114
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->hasFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->getFormat()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1117
    :cond_1
    return-void
.end method
