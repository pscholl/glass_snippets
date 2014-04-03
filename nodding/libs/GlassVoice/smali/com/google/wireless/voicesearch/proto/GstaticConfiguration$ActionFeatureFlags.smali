.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionFeatureFlags"
.end annotation


# static fields
.field public static final ENABLE_CALENDAR_EVENT_ATTENDEES_FIELD_NUMBER:I = 0x1

.field public static final ENABLE_CAPABILITY_HOME_CONTROL_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private enableCalendarEventAttendees_:Z

.field private enableCapabilityHomeControl_:Z

.field private hasEnableCalendarEventAttendees:Z

.field private hasEnableCapabilityHomeControl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4849
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4854
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    .line 4871
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    .line 4907
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->cachedSize:I

    .line 4849
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4967
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4961
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1

    .prologue
    .line 4886
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->clearEnableCalendarEventAttendees()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    .line 4887
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->clearEnableCapabilityHomeControl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    .line 4888
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->cachedSize:I

    .line 4889
    return-object p0
.end method

.method public clearEnableCalendarEventAttendees()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4863
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->hasEnableCalendarEventAttendees:Z

    .line 4864
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    .line 4865
    return-object p0
.end method

.method public clearEnableCapabilityHomeControl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4880
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->hasEnableCapabilityHomeControl:Z

    .line 4881
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    .line 4882
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4910
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->cachedSize:I

    if-gez v0, :cond_0

    .line 4912
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->getSerializedSize()I

    .line 4914
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->cachedSize:I

    return v0
.end method

.method public getEnableCalendarEventAttendees()Z
    .locals 1

    .prologue
    .line 4855
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    return v0
.end method

.method public getEnableCapabilityHomeControl()Z
    .locals 1

    .prologue
    .line 4872
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4919
    const/4 v0, 0x0

    .line 4920
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->hasEnableCalendarEventAttendees()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4921
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->getEnableCalendarEventAttendees()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4924
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->hasEnableCapabilityHomeControl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4925
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->getEnableCapabilityHomeControl()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4928
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->cachedSize:I

    .line 4929
    return v0
.end method

.method public hasEnableCalendarEventAttendees()Z
    .locals 1

    .prologue
    .line 4856
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->hasEnableCalendarEventAttendees:Z

    return v0
.end method

.method public hasEnableCapabilityHomeControl()Z
    .locals 1

    .prologue
    .line 4873
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->hasEnableCapabilityHomeControl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4893
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
    .line 4846
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4937
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4938
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4942
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4943
    :sswitch_0
    return-object p0

    .line 4948
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->setEnableCalendarEventAttendees(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    goto :goto_0

    .line 4952
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->setEnableCapabilityHomeControl(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    goto :goto_0

    .line 4938
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEnableCalendarEventAttendees(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1
    .parameter "value"

    .prologue
    .line 4858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->hasEnableCalendarEventAttendees:Z

    .line 4859
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCalendarEventAttendees_:Z

    .line 4860
    return-object p0
.end method

.method public setEnableCapabilityHomeControl(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1
    .parameter "value"

    .prologue
    .line 4875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->hasEnableCapabilityHomeControl:Z

    .line 4876
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->enableCapabilityHomeControl_:Z

    .line 4877
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
    .line 4899
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->hasEnableCalendarEventAttendees()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4900
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->getEnableCalendarEventAttendees()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4902
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->hasEnableCapabilityHomeControl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4903
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;->getEnableCapabilityHomeControl()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4905
    :cond_1
    return-void
.end method
