.class public Lcom/google/android/gsf/LoginData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[B

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Lcom/google/android/gsf/LoginData$Status;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gsf/f;

    invoke-direct {v0}, Lcom/google/android/gsf/f;-><init>()V

    sput-object v0, Lcom/google/android/gsf/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->f:[B

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->i:I

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/LoginData$Status;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->n:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->f:[B

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->i:I

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/LoginData$Status;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->n:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gsf/LoginData;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gsf/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gsf/LoginData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->f:[B

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/LoginData$Status;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->n:Ljava/lang/String;

    return-void

    :cond_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->f:[B

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->f:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gsf/LoginData$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/LoginData$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/LoginData$Status;

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->f:[B

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gsf/LoginData;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/LoginData$Status;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->f:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->f:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v0}, Lcom/google/android/gsf/LoginData$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
