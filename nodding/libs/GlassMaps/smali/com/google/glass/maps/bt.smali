.class final Lcom/google/glass/maps/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/glass/maps/SchematicSegment;
    .locals 1

    new-instance v0, Lcom/google/glass/maps/SchematicSegment;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/SchematicSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/google/glass/maps/SchematicSegment;
    .locals 1

    new-array v0, p0, [Lcom/google/glass/maps/SchematicSegment;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/glass/maps/bt;->a(Landroid/os/Parcel;)Lcom/google/glass/maps/SchematicSegment;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/glass/maps/bt;->a(I)[Lcom/google/glass/maps/SchematicSegment;

    move-result-object v0

    return-object v0
.end method
