.class public final Lcom/google/android/maps/driveabout/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/a/ar;


# static fields
.field private static final a:[B


# instance fields
.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/google/android/maps/driveabout/a/ay;

.field private volatile f:Z

.field private volatile g:Z

.field private final h:Ljava/util/ArrayList;

.field private i:Ljava/util/LinkedList;

.field private j:Lcom/google/android/maps/driveabout/a/l;

.field private final k:Lcom/google/android/maps/driveabout/util/g;

.field private l:Lcom/google/android/maps/driveabout/a/av;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/maps/driveabout/a/d;->a:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    const/16 v4, 0x1e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->i:Ljava/util/LinkedList;

    new-instance v0, Lcom/google/android/maps/driveabout/a/e;

    invoke-direct {v0, p0, v4}, Lcom/google/android/maps/driveabout/a/e;-><init>(Lcom/google/android/maps/driveabout/a/d;I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->k:Lcom/google/android/maps/driveabout/util/g;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/d;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/d;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v4, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->h:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "._speech_nav_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->b:Z

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/io/File;
    .locals 3

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->c:Landroid/content/Context;

    const-string v1, "da_speech"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/d;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized a(ILcom/google/android/maps/driveabout/a/k;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_b

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v0, "AndroidTtsAlertGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "systemLocale = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ay;->b()Ljava/util/Locale;

    move-result-object v6

    const-string v0, "AndroidTtsAlertGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "userSelectedTtsLocale = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0, v6}, Lcom/google/android/maps/driveabout/a/ay;->b(Ljava/util/Locale;)I

    move-result v0

    const-string v4, "AndroidTtsAlertGenerator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLanguageAvailable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v6, :cond_9

    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/a/az;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v4

    :goto_1
    if-eq v0, v1, :cond_0

    if-nez v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0, v5}, Lcom/google/android/maps/driveabout/a/ay;->a(Ljava/util/Locale;)I

    move-result v0

    const-string v4, "AndroidTtsAlertGenerator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Overriding TTS language "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with system locale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "AndroidTtsAlertGenerator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTextToSpeech.getLanguage() is now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v6}, Lcom/google/android/maps/driveabout/a/ay;->b()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eq v0, v1, :cond_2

    if-ne v0, v9, :cond_8

    :cond_2
    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    new-instance v4, Lcom/google/android/maps/driveabout/a/j;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/android/maps/driveabout/a/j;-><init>(Lcom/google/android/maps/driveabout/a/d;Lcom/google/android/maps/driveabout/a/e;)V

    invoke-interface {v3, v4}, Lcom/google/android/maps/driveabout/a/ay;->a(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->g:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/a/d;->f:Z

    const-string v2, "AndroidTtsAlertGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTS Initialized: status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " supported:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " locale:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/a/ay;->b()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->g:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/a/ay;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/a/av;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/a/av;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/av;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/a/ay;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/nav/f;->a(Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->g:Z

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/a/k;->a(I)V

    :cond_5
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    if-ne v0, v9, :cond_7

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/a/k;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    const/4 v0, 0x2

    :try_start_2
    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/a/k;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_8
    move v1, v3

    goto :goto_2

    :cond_9
    move v4, v2

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    move v1, v2

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/d;ILcom/google/android/maps/driveabout/a/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/a/d;->a(ILcom/google/android/maps/driveabout/a/k;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/a/k;Lcom/google/android/maps/driveabout/a/ay;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    new-instance v1, Lcom/google/android/maps/driveabout/a/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/a/f;-><init>(Lcom/google/android/maps/driveabout/a/d;Lcom/google/android/maps/driveabout/a/k;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/a/ay;->a(Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/google/android/maps/driveabout/a/l;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/d;->d()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->j:Lcom/google/android/maps/driveabout/a/l;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->j:Lcom/google/android/maps/driveabout/a/l;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->d()Lcom/google/android/maps/driveabout/a/h;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/d;->k:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/a/l;->a(Lcom/google/android/maps/driveabout/a/a;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/d;->d()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 8

    const/16 v6, 0x46

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const/16 v3, 0x2c

    :try_start_1
    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    array-length v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    if-eq v4, v5, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x0

    :try_start_3
    aget-byte v4, v3, v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    aget-byte v4, v3, v4

    if-ne v4, v6, :cond_2

    const/4 v4, 0x3

    aget-byte v4, v3, v4

    if-ne v4, v6, :cond_2

    const/16 v4, 0x8

    aget-byte v4, v3, v4

    const/16 v5, 0x57

    if-ne v4, v5, :cond_2

    const/16 v4, 0x9

    aget-byte v4, v3, v4

    const/16 v5, 0x41

    if-ne v4, v5, :cond_2

    const/16 v4, 0xa

    aget-byte v4, v3, v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_2

    const/16 v4, 0xb

    aget-byte v4, v3, v4

    const/16 v5, 0x45

    if-eq v4, v5, :cond_4

    :cond_2
    const-string v3, "AndroidTtsAlertGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File doesn\'t look like a WAV file. Assuming it\'s correct: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v4, 0x28

    :try_start_5
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x29

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0x2a

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0x2b

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v4

    if-lez v3, :cond_5

    add-int/lit8 v4, v3, 0x2c

    int-to-long v4, v4

    invoke-virtual {p0}, Ljava/io/File;->length()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    :cond_5
    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_6
    :try_start_7
    sget-object v4, Lcom/google/android/maps/driveabout/a/d;->a:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v4, Lcom/google/android/maps/driveabout/a/d;->a:[B

    array-length v4, v4

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    move-result v5

    if-eq v5, v3, :cond_7

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_7
    :try_start_9
    sget-object v3, Lcom/google/android/maps/driveabout/a/d;->a:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v2, :cond_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_9

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_9
    :goto_2
    move v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_0

    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :catch_5
    move-exception v1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_0

    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_a

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_a
    :goto_6
    throw v0

    :catch_7
    move-exception v1

    goto/16 :goto_0

    :catch_8
    move-exception v0

    goto/16 :goto_1

    :catch_9
    move-exception v0

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v1

    goto :goto_4

    :catch_c
    move-exception v1

    move-object v1, v2

    goto :goto_3
.end method

.method private a(Z)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/d;->e()Landroid/os/StatFs;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/d;->f()Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x80000

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/a/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/a/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->j:Lcom/google/android/maps/driveabout/a/l;

    if-eqz v0, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/l;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/d;->k:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->j:Lcom/google/android/maps/driveabout/a/l;

    move-object v2, v0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->k:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/a/a;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/a/l;->a(Lcom/google/android/maps/driveabout/a/a;)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->b:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/d;->a(Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "AndroidTtsAlertGenerator"

    const-string v1, "Synthesis failed: SDCard is full or unavailable"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/google/android/maps/driveabout/a/d;->b:Z

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->b:Z

    if-nez v0, :cond_5

    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/a/d;->a(Z)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "AndroidTtsAlertGenerator"

    const-string v1, "Synthesis failed: App storage is full or unavailable"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/d;->a()V

    iput-boolean v5, p0, Lcom/google/android/maps/driveabout/a/d;->g:Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->b:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/a/d;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/a/l;->a(Ljava/lang/String;Ljava/io/File;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/d;->l:Lcom/google/android/maps/driveabout/a/av;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/a/l;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/a/av;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v0, v1}, Lcom/google/android/maps/driveabout/a/ay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "AndroidTtsAlertGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Synthesis failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/a/l;->a()V

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->j:Lcom/google/android/maps/driveabout/a/l;

    if-ne v0, v2, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->j:Lcom/google/android/maps/driveabout/a/l;

    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/d;->d()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move-object v2, v1

    goto/16 :goto_2
.end method

.method private e()Landroid/os/StatFs;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()Landroid/os/StatFs;
    .locals 2

    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->k:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->g:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->i:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->i:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->j:Lcom/google/android/maps/driveabout/a/l;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->j:Lcom/google/android/maps/driveabout/a/l;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/a/ay;->c()I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->j:Lcom/google/android/maps/driveabout/a/l;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/l;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->g:Z

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/google/android/maps/driveabout/a/as;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/a;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->k:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/h;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, v0}, Lcom/google/android/maps/driveabout/a/as;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/a;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/maps/driveabout/a/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/a/l;-><init>(Lcom/google/android/maps/driveabout/a/d;Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/d;->a(Lcom/google/android/maps/driveabout/a/l;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/k;)V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/a/az;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/a/az;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/a/d;->a(Lcom/google/android/maps/driveabout/a/k;Lcom/google/android/maps/driveabout/a/ay;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ay;->c()I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ay;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/a/d;->f:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->f:Z

    if-nez v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->f:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/a/d;->f:Z

    if-nez v1, :cond_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/d;->e:Lcom/google/android/maps/driveabout/a/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ay;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
