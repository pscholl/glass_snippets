.class final Lcom/x/google/common/android/AndroidConfig$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/io/Gunzipper$GunzipInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/google/common/android/AndroidConfig;->setupGzipper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/x/google/common/android/AndroidConfig;


# direct methods
.method constructor <init>(Lcom/x/google/common/android/AndroidConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/common/android/AndroidConfig$1;->this$0:Lcom/x/google/common/android/AndroidConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
