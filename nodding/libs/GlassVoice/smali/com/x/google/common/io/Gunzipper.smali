.class public Lcom/x/google/common/io/Gunzipper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/io/Gunzipper$GunzipInterface;
    }
.end annotation


# static fields
.field private static final instance:Lcom/x/google/common/io/Gunzipper;


# instance fields
.field private implementation:Lcom/x/google/common/io/Gunzipper$GunzipInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/x/google/common/io/Gunzipper;

    invoke-direct {v0}, Lcom/x/google/common/io/Gunzipper;-><init>()V

    sput-object v0, Lcom/x/google/common/io/Gunzipper;->instance:Lcom/x/google/common/io/Gunzipper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/x/google/common/io/Gunzipper;->instance:Lcom/x/google/common/io/Gunzipper;

    iget-object v0, v0, Lcom/x/google/common/io/Gunzipper;->implementation:Lcom/x/google/common/io/Gunzipper$GunzipInterface;

    invoke-interface {v0, p0}, Lcom/x/google/common/io/Gunzipper$GunzipInterface;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static setImplementation(Lcom/x/google/common/io/Gunzipper$GunzipInterface;)V
    .locals 1

    sget-object v0, Lcom/x/google/common/io/Gunzipper;->instance:Lcom/x/google/common/io/Gunzipper;

    iput-object p0, v0, Lcom/x/google/common/io/Gunzipper;->implementation:Lcom/x/google/common/io/Gunzipper$GunzipInterface;

    return-void
.end method
