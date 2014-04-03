.class public Lcom/google/android/speech/debug/DebugAudioLogger;
.super Ljava/lang/Object;
.source "DebugAudioLogger.java"


# static fields
.field private static final DEBUG_LOG_ALL_AUDIO:Z = false

.field private static final DEBUG_OUTPUT_DIR:Ljava/lang/String; = "debug"

.field private static final LOGS_ZIP_FILE_NAME:Ljava/lang/String; = "logs.zip"

.field private static final TAG:Ljava/lang/String; = "VS.DebugLogger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllLoggedData(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 124
    const-string v7, "debug"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 125
    .local v4, filesDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 126
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 127
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    .end local v2           #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 132
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "logs.zip"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v1, cacheFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 134
    return-void
.end method

.method public static maybeDumpGrammar(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;)V
    .locals 3
    .parameter "grammarFile"
    .parameter "context"
    .parameter "settings"

    .prologue
    .line 86
    invoke-static {p2}, Lcom/google/android/speech/debug/DebugAudioLogger;->shouldLog(Lcom/google/android/speech/SpeechSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "debug"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, outputDir:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "grammar.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/google/common/io/Files;->write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0           #outputDir:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v0       #outputDir:Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static maybeWrapInLogStream(Ljava/io/InputStream;Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;)Ljava/io/InputStream;
    .locals 8
    .parameter "in"
    .parameter "context"
    .parameter "settings"

    .prologue
    .line 60
    invoke-static {p2}, Lcom/google/android/speech/debug/DebugAudioLogger;->shouldLog(Lcom/google/android/speech/SpeechSettings;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mic-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pcm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, fileName:Ljava/lang/String;
    const-string v5, "debug"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 64
    .local v4, outputDir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, absolutePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/speech/test/TestPlatformLog;->logAudioPath(Ljava/lang/String;)V

    .line 74
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const v6, 0xea600

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 76
    .local v3, logOutputStream:Ljava/io/OutputStream;
    new-instance v5, Lcom/google/android/speech/debug/CopyInputStream;

    invoke-direct {v5, p0, v3}, Lcom/google/android/speech/debug/CopyInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v5

    .line 81
    .end local v0           #absolutePath:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #logOutputStream:Ljava/io/OutputStream;
    .end local v4           #outputDir:Ljava/io/File;
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 77
    .restart local v0       #absolutePath:Ljava/lang/String;
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v4       #outputDir:Ljava/io/File;
    .restart local p0
    :catch_0
    move-exception v1

    .line 78
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v5, "VS.DebugLogger"

    const-string v6, "Error opening audio log file."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sendLoggedAudio(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0xfa0

    .line 98
    const-string v4, "debug"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 99
    .local v0, filesDir:Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 100
    .local v2, outputDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "logs.zip"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v3, outputFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/speech/debug/DebugAudioLogger;->writeZipFile(Ljava/io/File;[Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v4, "android.intent.extra.SUBJECT"

    const-string v5, "Debug logged audio + grammar"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v4, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    const-string v4, "Don\'t forget to turn off debug logging once your email has been sent."

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 117
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v4, "Unable to send logged audio"

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static shouldLog(Lcom/google/android/speech/SpeechSettings;)Z
    .locals 1
    .parameter "settings"

    .prologue
    .line 137
    invoke-interface {p0}, Lcom/google/android/speech/SpeechSettings;->isDebugAudioLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method private static writeZipFile(Ljava/io/File;[Ljava/io/File;)Z
    .locals 14
    .parameter "zipFileName"
    .parameter "files"

    .prologue
    const/4 v11, 0x0

    .line 145
    if-eqz p1, :cond_0

    array-length v12, p1

    if-nez v12, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v11

    .line 149
    :cond_1
    const/16 v12, 0x1000

    new-array v1, v12, [B

    .line 150
    .local v1, buffer:[B
    const/4 v9, 0x0

    .line 151
    .local v9, out:Ljava/util/zip/ZipOutputStream;
    const/4 v4, 0x0

    .line 153
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v12}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    .end local v9           #out:Ljava/util/zip/ZipOutputStream;
    .local v10, out:Ljava/util/zip/ZipOutputStream;
    move-object v0, p1

    .local v0, arr$:[Ljava/io/File;
    :try_start_1
    array-length v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .local v8, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move-object v5, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    :goto_1
    if-ge v3, v8, :cond_3

    :try_start_2
    aget-object v2, v0, v3

    .line 155
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v12, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 160
    :goto_2
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, len:I
    if-lez v7, :cond_2

    .line 161
    const/4 v12, 0x0

    invoke-virtual {v10, v1, v12, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 170
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v7           #len:I
    .end local v8           #len$:I
    :catch_0
    move-exception v6

    move-object v9, v10

    .line 173
    .end local v0           #arr$:[Ljava/io/File;
    .end local v10           #out:Ljava/util/zip/ZipOutputStream;
    .local v6, ioe:Ljava/io/IOException;
    .restart local v9       #out:Ljava/util/zip/ZipOutputStream;
    :goto_3
    invoke-static {v9}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 164
    .end local v6           #ioe:Ljava/io/IOException;
    .end local v9           #out:Ljava/util/zip/ZipOutputStream;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v7       #len:I
    .restart local v8       #len$:I
    .restart local v10       #out:Ljava/util/zip/ZipOutputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 165
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 154
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    goto :goto_1

    .line 168
    .end local v2           #file:Ljava/io/File;
    .end local v7           #len:I
    :cond_3
    :try_start_5
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 169
    const/4 v11, 0x1

    .line 173
    invoke-static {v10}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    invoke-static {v5}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 173
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v8           #len$:I
    .end local v10           #out:Ljava/util/zip/ZipOutputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v9       #out:Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v11

    :goto_4
    invoke-static {v9}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v11

    .line 173
    .end local v9           #out:Ljava/util/zip/ZipOutputStream;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v10       #out:Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10           #out:Ljava/util/zip/ZipOutputStream;
    .restart local v9       #out:Ljava/util/zip/ZipOutputStream;
    goto :goto_4

    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v9           #out:Ljava/util/zip/ZipOutputStream;
    .restart local v3       #i$:I
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v8       #len$:I
    .restart local v10       #out:Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #out:Ljava/util/zip/ZipOutputStream;
    .restart local v9       #out:Ljava/util/zip/ZipOutputStream;
    goto :goto_4

    .line 170
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v8           #len$:I
    :catch_1
    move-exception v6

    goto :goto_3

    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v9           #out:Ljava/util/zip/ZipOutputStream;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v8       #len$:I
    .restart local v10       #out:Ljava/util/zip/ZipOutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #out:Ljava/util/zip/ZipOutputStream;
    .restart local v9       #out:Ljava/util/zip/ZipOutputStream;
    goto :goto_3
.end method
