.class Lcom/google/glass/phone/PhoneCallTimelineHelper$1$1;
.super Ljava/lang/Object;
.source "PhoneCallTimelineHelper.java"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/phone/PhoneCallTimelineHelper$1;

.field final synthetic val$textForFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallTimelineHelper$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1$1;->this$1:Lcom/google/glass/phone/PhoneCallTimelineHelper$1;

    iput-object p2, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1$1;->val$textForFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1$1;->val$textForFile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1$1;->val$textForFile:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 127
    return-void
.end method
