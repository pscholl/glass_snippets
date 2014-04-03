.class public final Lcom/google/android/maps/driveabout/nav/ag;
.super Lcom/google/android/maps/driveabout/util/SharedSingleton;


# static fields
.field private static final f:Lcom/google/android/maps/driveabout/nav/ag;


# instance fields
.field private a:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/nav/ag;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/nav/ag;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/ag;->f:Lcom/google/android/maps/driveabout/nav/ag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/SharedSingleton;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/ag;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/nav/ag;->f:Lcom/google/android/maps/driveabout/nav/ag;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/nav/ag;->c(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/maps/driveabout/nav/ag;->f:Lcom/google/android/maps/driveabout/nav/ag;

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/util/List;
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_7

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/google/i/a/a/a/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/nav/a;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/a;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    :cond_1
    :goto_2
    return-object v3

    :cond_2
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_3
    :try_start_5
    const-string v1, "SavedRoutes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error opening file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_4
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_4
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_5
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_7
    :goto_6
    throw v0

    :catch_6
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v0

    goto :goto_2

    :catch_c
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_d
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/a;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/a/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/a;->b()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/a;->c()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ag;->a(Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ag;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SavedRoutes"

    const-string v1, "Error creating or deleting file."

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "SavedRoutes"

    const-string v1, "Security exception creating file."

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->a:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ag;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->d:Ljava/io/File;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->e:Ljava/io/File;

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/a;->a(Lcom/google/android/maps/driveabout/nav/f;)Lcom/google/android/maps/driveabout/nav/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ag;->a(Lcom/google/android/maps/driveabout/nav/a;)V

    return-void
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "return_directions_proto"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->d:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "saved_directions_proto"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ag;->e:Ljava/io/File;

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/nav/f;)Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/ag;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/a;->a(Lcom/google/android/maps/driveabout/nav/f;)Lcom/google/android/maps/driveabout/nav/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method
