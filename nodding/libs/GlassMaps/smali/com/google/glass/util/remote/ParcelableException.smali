.class public Lcom/google/glass/util/remote/ParcelableException;
.super Ljava/lang/Exception;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final exception:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/glass/util/remote/a;

    invoke-direct {v0}, Lcom/google/glass/util/remote/a;-><init>()V

    sput-object v0, Lcom/google/glass/util/remote/ParcelableException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/google/glass/util/remote/ParcelableException;-><init>(Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/glass/util/remote/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/util/remote/ParcelableException;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/remote/ParcelableException;->exception:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
