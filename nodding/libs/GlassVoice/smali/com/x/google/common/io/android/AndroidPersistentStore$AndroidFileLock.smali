.class Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/io/ProcessLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/io/android/AndroidPersistentStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidFileLock"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private fos:Ljava/io/FileOutputStream;

.field private lock:Ljava/nio/channels/FileLock;

.field final synthetic this$0:Lcom/x/google/common/io/android/AndroidPersistentStore;


# direct methods
.method public constructor <init>(Lcom/x/google/common/io/android/AndroidPersistentStore;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->this$0:Lcom/x/google/common/io/android/AndroidPersistentStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->fos:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->lock:Ljava/nio/channels/FileLock;

    iput-object p2, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->fos:Ljava/io/FileOutputStream;

    iput-object p3, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->lock:Ljava/nio/channels/FileLock;

    iput-object p4, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->fileName:Ljava/lang/String;

    #getter for: Lcom/x/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;
    invoke-static {p1}, Lcom/x/google/common/io/android/AndroidPersistentStore;->access$000(Lcom/x/google/common/io/android/AndroidPersistentStore;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public releaseLock()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->this$0:Lcom/x/google/common/io/android/AndroidPersistentStore;

    #getter for: Lcom/x/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;
    invoke-static {v1}, Lcom/x/google/common/io/android/AndroidPersistentStore;->access$000(Lcom/x/google/common/io/android/AndroidPersistentStore;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->fileName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->lock:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;->fos:Ljava/io/FileOutputStream;

    #calls: Lcom/x/google/common/io/android/AndroidPersistentStore;->closeFileOutputStreamSilently(Ljava/io/FileOutputStream;)Z
    invoke-static {v0}, Lcom/x/google/common/io/android/AndroidPersistentStore;->access$100(Ljava/io/FileOutputStream;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
