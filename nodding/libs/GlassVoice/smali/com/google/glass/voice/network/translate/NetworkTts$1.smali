.class Lcom/google/glass/voice/network/translate/NetworkTts$1;
.super Ljava/lang/Object;
.source "NetworkTts.java"

# interfaces
.implements Lcom/google/glass/util/CachedFilesManager$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/translate/NetworkTts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/util/CachedFilesManager$Loader",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/translate/NetworkTts;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/translate/NetworkTts;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .parameter "filePath"

    .prologue
    const/4 v8, 0x0

    .line 133
    const/4 v2, 0x0

    .line 135
    .local v2, ttsInput:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, ttsFile:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .end local v2           #ttsInput:Ljava/io/FileInputStream;
    .local v3, ttsInput:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-virtual {v4}, Lcom/google/glass/voice/network/translate/NetworkTts;->stopSpeaking()V

    .line 139
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v4}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 140
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$000()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->getSharedInstance()Lcom/google/glass/voice/network/translate/NetworkTts;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 142
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$000()Landroid/media/MediaPlayer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 143
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$000()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 144
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$000()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 145
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$000()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 146
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v4

    .line 152
    if-eqz v3, :cond_0

    .line 154
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 160
    .end local v1           #ttsFile:Ljava/io/File;
    .end local v3           #ttsInput:Ljava/io/FileInputStream;
    .restart local v2       #ttsInput:Ljava/io/FileInputStream;
    :goto_1
    return-object v4

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "IOException playing audio bytes from cached file: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    if-eqz v2, :cond_1

    .line 154
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 160
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/IllegalStateException;
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "IllegalStateException playing audio bytes from cached file: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 152
    if-eqz v2, :cond_1

    .line 154
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 155
    :catch_2
    move-exception v4

    goto :goto_3

    .line 152
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v2, :cond_2

    .line 154
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 157
    :cond_2
    :goto_6
    throw v4

    .line 155
    .end local v2           #ttsInput:Ljava/io/FileInputStream;
    .restart local v1       #ttsFile:Ljava/io/File;
    .restart local v3       #ttsInput:Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v1           #ttsFile:Ljava/io/File;
    .end local v3           #ttsInput:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #ttsInput:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    goto :goto_3

    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    goto :goto_6

    .line 152
    .end local v2           #ttsInput:Ljava/io/FileInputStream;
    .restart local v1       #ttsFile:Ljava/io/File;
    .restart local v3       #ttsInput:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #ttsInput:Ljava/io/FileInputStream;
    .restart local v2       #ttsInput:Ljava/io/FileInputStream;
    goto :goto_5

    .line 149
    .end local v2           #ttsInput:Ljava/io/FileInputStream;
    .restart local v3       #ttsInput:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #ttsInput:Ljava/io/FileInputStream;
    .restart local v2       #ttsInput:Ljava/io/FileInputStream;
    goto :goto_4

    .line 147
    .end local v2           #ttsInput:Ljava/io/FileInputStream;
    .restart local v3       #ttsInput:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #ttsInput:Ljava/io/FileInputStream;
    .restart local v2       #ttsInput:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/translate/NetworkTts$1;->load(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
