.class public Lcom/google/glass/maps/SchematicSegment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lcom/google/glass/maps/SchematicSegment$Type;

.field public final b:I

.field public final c:Z

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/glass/maps/bt;

    invoke-direct {v0}, Lcom/google/glass/maps/bt;-><init>()V

    sput-object v0, Lcom/google/glass/maps/SchematicSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/SchematicSegment$Type;->valueOf(Ljava/lang/String;)Lcom/google/glass/maps/SchematicSegment$Type;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/glass/maps/SchematicSegment;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/maps/SchematicSegment;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/SchematicSegment;->d:J

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/glass/maps/SchematicSegment;->d:J

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    iput p2, p0, Lcom/google/glass/maps/SchematicSegment;->b:I

    iput-boolean p3, p0, Lcom/google/glass/maps/SchematicSegment;->c:Z

    iput-wide p4, p0, Lcom/google/glass/maps/SchematicSegment;->d:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    invoke-virtual {v0}, Lcom/google/glass/maps/SchematicSegment$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/glass/maps/SchematicSegment;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/glass/maps/SchematicSegment;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/google/glass/maps/SchematicSegment;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
