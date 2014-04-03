.class public Lcom/google/googlenav/common/io/PersistentStore$PersistentStoreException;
.super Ljava/io/IOException;


# instance fields
.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/googlenav/common/io/PersistentStore$PersistentStoreException;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/common/io/PersistentStore$PersistentStoreException;->type:I

    return v0
.end method
