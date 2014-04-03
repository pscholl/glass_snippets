.class public Lcom/google/android/speech/audio/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/AudioUtils$1;,
        Lcom/google/android/speech/audio/AudioUtils$Encoding;
    }
.end annotation


# static fields
.field private static final AMR_AUDIO_FILE_HEADER:Ljava/lang/String; = "#!AMR\n"

.field private static final AMR_INPUT_STREAM_CLASS:Ljava/lang/String; = "android.media.AmrInputStream"

.field private static final BYTES_PER_SAMPLE:I = 0x2

.field private static final EFFECT_TYPE_NOISE_SUPRRESSOR:Ljava/util/UUID; = null

.field private static final SAMPLING_RATE:I = 0x1f40

.field private static final WAV_FORMAT_MONO:S = 0x1s

.field private static final WAV_FORMAT_PCM:S = 0x1s

.field private static final WAV_HEADER_LENGTH:I = 0x2c

.field private static sAmrInputStreamConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Utils.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/android/speech/audio/AudioUtils;->EFFECT_TYPE_NOISE_SUPRRESSOR:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method private static addWavHeaders([B)[B
    .locals 7
    .parameter "pcmBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 97
    const/16 v3, 0x2c

    new-array v2, v3, [B

    .line 98
    .local v2, headerBuffer:[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 99
    .local v1, header:Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 105
    new-array v3, v4, [B

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 106
    array-length v3, p0

    add-int/lit8 v3, v3, 0x2c

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 107
    new-array v3, v4, [B

    fill-array-data v3, :array_1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    new-array v3, v4, [B

    fill-array-data v3, :array_2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 112
    const/16 v3, 0x1f40

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    const/16 v3, 0x3e80

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 114
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 116
    new-array v3, v4, [B

    fill-array-data v3, :array_3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 117
    array-length v3, p0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    add-int/lit8 v3, v3, 0x2c

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 121
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 122
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 124
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 105
    :array_0
    .array-data 0x1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    .line 107
    :array_1
    .array-data 0x1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    .line 108
    :array_2
    .array-data 0x1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    .line 116
    :array_3
    .array-data 0x1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method

.method public static createAmrInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 6
    .parameter "is"

    .prologue
    .line 188
    :try_start_0
    const-class v3, Lcom/google/android/speech/audio/AudioUtils;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :try_start_1
    sget-object v2, Lcom/google/android/speech/audio/AudioUtils;->sAmrInputStreamConstructor:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_0

    .line 191
    const-string v2, "android.media.AmrInputStream"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 194
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/io/InputStream;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/io/InputStream;

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/google/android/speech/audio/AudioUtils;->sAmrInputStreamConstructor:Ljava/lang/reflect/Constructor;

    .line 196
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/io/InputStream;>;"
    :cond_0
    sget-object v2, Lcom/google/android/speech/audio/AudioUtils;->sAmrInputStreamConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    monitor-exit v3

    return-object v2

    .line 197
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while instantiating AmrInputStream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static encode(Lcom/google/android/speech/audio/AudioUtils$Encoding;[B)[B
    .locals 3
    .parameter "encoding"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/google/android/speech/audio/AudioUtils$1;->$SwitchMap$com$google$android$speech$audio$AudioUtils$Encoding:[I

    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioUtils$Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/speech/audio/AudioUtils;->addWavHeaders([B)[B

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1}, Lcom/google/android/speech/audio/AudioUtils;->encodeAmr([B)[B

    move-result-object v0

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static encodeAmr([B)[B
    .locals 6
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, amrIs:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/speech/audio/AudioUtils;->getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const-string v4, "#!AMR\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 152
    const/16 v4, 0x180

    new-array v2, v4, [B

    .line 153
    .local v2, buffer:[B
    const/4 v3, -0x1

    .line 154
    .local v3, length:I
    :goto_0
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v0, v2, v4, v5}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 155
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buffer:[B
    .end local v3           #length:I
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 157
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #length:I
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 159
    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4
.end method

.method public static getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 3
    .parameter "is"
    .parameter "encoding"

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 170
    .end local p0
    :goto_0
    return-object p0

    .line 169
    .restart local p0
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 170
    invoke-static {p0}, Lcom/google/android/speech/audio/AudioUtils;->createAmrInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported encoding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNoiseSuppressors(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;)Ljava/util/List;
    .locals 10
    .parameter "platform"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    if-nez p0, :cond_1

    .line 209
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 230
    :cond_0
    :goto_0
    return-object v7

    .line 212
    :cond_1
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 213
    .local v7, noiseSuppressors:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->getEnabledNoiseSuppressorsList()Ljava/util/List;

    move-result-object v3

    .line 214
    .local v3, enabledNoiseSuppressors:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .line 216
    .local v1, available:[Landroid/media/audiofx/AudioEffect$Descriptor;
    move-object v0, v1

    .local v0, arr$:[Landroid/media/audiofx/AudioEffect$Descriptor;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 217
    .local v2, descriptor:Landroid/media/audiofx/AudioEffect$Descriptor;
    sget-object v8, Lcom/google/android/speech/audio/AudioUtils;->EFFECT_TYPE_NOISE_SUPRRESSOR:Ljava/util/UUID;

    iget-object v9, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 218
    iget-object v8, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, noiseSuppressorUuid:Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 220
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v6           #noiseSuppressorUuid:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .restart local v6       #noiseSuppressorUuid:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
