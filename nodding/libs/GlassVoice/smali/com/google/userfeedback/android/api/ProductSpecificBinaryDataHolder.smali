.class public Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;
.super Ljava/lang/Object;
.source "ProductSpecificBinaryDataHolder.java"


# instance fields
.field private mData:[B

.field private mMimeType:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .parameter "name"
    .parameter "mimeType"
    .parameter "data"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->mMimeType:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->mData:[B

    .line 34
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->mData:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->mName:Ljava/lang/String;

    return-object v0
.end method
