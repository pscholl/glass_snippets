.class final Lcom/google/glass/logging/FeedbackBuilder$2;
.super Ljava/lang/Object;
.source "FeedbackBuilder.java"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/FeedbackBuilder;->captureAndAttachBugreport(Landroid/content/Context;Ljava/lang/String;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$additionalFiles:[Ljava/lang/String;

.field final synthetic val$companionLogReader:Lcom/google/glass/logging/CompanionLogReader;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shouldBugreport:Z


# direct methods
.method constructor <init>(ZLcom/google/glass/logging/CompanionLogReader;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$shouldBugreport:Z

    iput-object p2, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$companionLogReader:Lcom/google/glass/logging/CompanionLogReader;

    iput-object p3, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$additionalFiles:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 226
    const-wide/32 v0, 0x400000

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 7
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-boolean v4, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$shouldBugreport:Z

    if-eqz v4, :cond_0

    .line 199
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$100()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUGREPORT"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$companionLogReader:Lcom/google/glass/logging/CompanionLogReader;

    invoke-virtual {v4}, Lcom/google/glass/logging/CompanionLogReader;->read()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MyGlass(Companion) Log"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$300(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    #calls: Lcom/google/glass/logging/FeedbackBuilder;->getConnectivity()Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Connectivity State"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$300(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$600()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRACE0: /sys/kernel/debug/remoteproc/omap-rproc.1/trace0"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$700()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRACE1: /sys/kernel/debug/remoteproc/omap-rproc.1/trace1"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$800()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRACELAST: /sys/kernel/debug/remoteproc/omap-rproc.1/trace1_last"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$900()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "FPGA REVISION: /sys/devices/platform/omapdss/manager2/panel-notle-dpi/fpga_revision"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$context:Landroid/content/Context;

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->getApkInfo(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v4}, Lcom/google/glass/logging/FeedbackBuilder;->access$1000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "APK INFO"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$300(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temperature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lcom/google/glass/logging/Util;

    invoke-direct {v5}, Lcom/google/glass/logging/Util;-><init>()V

    invoke-virtual {v5}, Lcom/google/glass/logging/Util;->getCpuTemperature()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CPU TEMPERATURE"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$300(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$1100()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "DF"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$1200()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "PERSISTENT LOG 0"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$1300()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "PERSISTENT LOG 1"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$1400()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "PERSISTENT LOG 2"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v4, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$context:Landroid/content/Context;

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->getPinnedTimelineItemIds(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v4}, Lcom/google/glass/logging/FeedbackBuilder;->access$1500(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PINNED ITEMS"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$300(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$additionalFiles:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 217
    iget-object v1, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$additionalFiles:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 218
    .local v0, additionalFile:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cat"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v0}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    .end local v0           #additionalFile:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->access$500()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "DMESG"

    #calls: Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v4, v5}, Lcom/google/glass/logging/FeedbackBuilder;->access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_1
    return-void
.end method
