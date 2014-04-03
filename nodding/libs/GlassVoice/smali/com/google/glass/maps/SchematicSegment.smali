.class public Lcom/google/glass/maps/SchematicSegment;
.super Ljava/lang/Object;
.source "SchematicSegment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/maps/SchematicSegment$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/maps/SchematicSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final color:I

.field public final isDotted:Z

.field public final type:Lcom/google/glass/maps/SchematicSegment$Type;

.field public final weight:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/glass/maps/SchematicSegment$1;

    invoke-direct {v0}, Lcom/google/glass/maps/SchematicSegment$1;-><init>()V

    sput-object v0, Lcom/google/glass/maps/SchematicSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/SchematicSegment$Type;->valueOf(Ljava/lang/String;)Lcom/google/glass/maps/SchematicSegment$Type;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/glass/maps/SchematicSegment;->color:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/SchematicSegment;->weight:J

    .line 37
    :goto_1
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_1
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/glass/maps/SchematicSegment;->weight:J

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V
    .locals 0
    .parameter "type"
    .parameter "color"
    .parameter "isDotted"
    .parameter "weight"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    .line 23
    iput p2, p0, Lcom/google/glass/maps/SchematicSegment;->color:I

    .line 24
    iput-boolean p3, p0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    .line 25
    iput-wide p4, p0, Lcom/google/glass/maps/SchematicSegment;->weight:J

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    invoke-virtual {v0}, Lcom/google/glass/maps/SchematicSegment$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/google/glass/maps/SchematicSegment;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-boolean v0, p0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-wide v0, p0, Lcom/google/glass/maps/SchematicSegment;->weight:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
